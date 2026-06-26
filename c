#!/bin/bash

# CREATE ASM FILE
c_schema="#include <stdio.h>

int main() {
  return 0;
}"

echo "$c_schema" > "$1.c"

# CREATE MAKEFILE
makefile_schema="
all: $1

$1: $1.c
	gcc $1.c -o $1 -no-pie

clean:
	rm -f $1
"

echo "$makefile_schema" > makefile
