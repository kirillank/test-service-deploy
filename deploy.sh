#!/bin/bash
SERVICE_NAME="test-service"
SERVICE_FILE="systemd/${SERVICE_NAME}.service"
TARGET_DIR="/etc/systemd/system"

# Копируем сервис
sudo cp ${SERVICE_FILE} ${TARGET_DIR}/

# Перезагружаем systemd
sudo systemctl daemon-reload
sudo systemctl restart ${SERVICE_NAME}
sudo systemctl enable ${SERVICE_NAME}

echo "Service ${SERVICE_NAME} deployed and started!"
