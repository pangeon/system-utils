function Get-FolderSize {
    param(
        [string]$Path = '.'
    )

    Get-ChildItem -Path $Path -Directory | ForEach-Object {
        $size = (Get-ChildItem -Path $_.FullName -Recurse -ErrorAction SilentlyContinue |
                 Measure-Object -Property Length -Sum).Sum

        if ($size -ge 1GB) {
            $displaySize = [math]::Round($size / 1GB, 2)
            $unit = 'GB'
        } else {
            $displaySize = [math]::Round($size / 1MB, 2)
            $unit = 'MB'
        }

        [PSCustomObject]@{
            Folder    = $_.Name
            SizeBytes = $size
            Size      = "$displaySize $unit"
        }
    } |
    Sort-Object -Property SizeBytes -Descending |
    Select-Object Folder, Size
}

function Zip-Folders {
    param(
        [string]$Path = (Get-Location).Path
    )

    if (-not (Test-Path $Path)) {
        Write-Host "Path '$Path' does not exist." -ForegroundColor Red
        return
    }

    Get-ChildItem -Path $Path -Directory | ForEach-Object {
        $folderPath = $_.FullName
        $zipPath = Join-Path $Path ($_.Name + '.zip')

        if (Test-Path $zipPath) {
            Remove-Item $zipPath -Force
        }

        Compress-Archive -Path $folderPath -DestinationPath $zipPath -Force
        Write-Host "Packed: $($_.Name)" -ForegroundColor Green
    }

    Write-Host "Finished packing folders in: $Path" -ForegroundColor Cyan
}
