#!/bin/bash
SHELL_DESC='#!/bin/bash';
SCRIPT_PATH='/usr/local/bin/';

if [[ "$(whoami)" == 'root' ]]; then
        if [[ "$(find ${SCRIPT_PATH}$1)" != "${SCRIPT_PATH}$1" ]]; then
                echo "${SHELL_DESC}" >> "${SCRIPT_PATH}$1";
                touch ${SCRIPT_PATH}$1;
                chmod 755 ${SCRIPT_PATH}$1;
                nano ${SCRIPT_PATH}$1;
        else
                echo 'Script already exist.';
                read -p 'Do you want override it? (y/n): ' ANSWER
                if [[ "${ANSWER}" == "y" ]]; then
                        nano ${SCRIPT_PATH}$1;
                else
                        echo 'Terminate script...';
                fi
        fi
else
        echo 'Access denied. You must have root permissions.';
fi