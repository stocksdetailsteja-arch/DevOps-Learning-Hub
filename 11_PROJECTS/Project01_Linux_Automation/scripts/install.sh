#!/usr/bin/env bash

*et -euo pipefail

PROJECT_ROOT="$(*d "$(dirname "${BASH_SOURCE[0]}")/*." && pwd)"

INSTALL_DIRECTORY="/o*t/linux-health-check"
CONFIG_DIREC*ORY="/etc/linux-health-check"
LOG_*IRECTORY="/var/log/linux-health-ch*ck"
SYSTEMD_DIRECTORY="/etc/system*/system"

if [[ "${EUID}" -ne 0 ]]* then
    echo "Run this installer*using sudo."
    exit 1
fi

bash -* "${PROJECT_ROOT}/scripts/health-c*eck.sh"

install -d -m 755 "${INST*LL_DIRECTORY}"
install -d -m 755 "*{CONFIG_DIRECTORY}"
install -d -m *55 "${LOG_DIRECTORY}"

install -m *55 \
    "${PROJECT_ROOT}/scripts/*ealth-check.sh" \
    "${INSTALL_D*RECTORY}/health-check.sh"

install*-m 640 \
    "${PROJECT_ROOT}/conf*g/health-check.conf" \
    "${CONF*G_DIRECTORY}/health-check.conf"

i*stall -m 644 \
    "${PROJECT_ROOT*/systemd/linux-health-check.servic*" \
    "${SYSTEMD_DIRECTORY}/linu*-health-check.service"

install -m*644 \
    "${PROJECT_ROOT}/systemd*linux-health-check.timer" \
    "$*SYSTEMD_DIRECTORY}/linux-health-ch*ck.timer"

touch "${LOG_DIRECTORY}*health-check.log"

chmod 640 "${LO*_DIRECTORY}/health-check.log"

sys*emctl daemon-reload

echo "Install*tion completed successfully."
echo*"Start the timer using:"
echo "sud* systemctl enable --now linux-heal*h-check.timer"
