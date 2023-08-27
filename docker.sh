#!/bin/bash

# Установка Docker
echo "Установка Docker..."
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

# Добавление текущего пользователя в группу Docker для запуска без sudo
sudo usermod -aG docker $USER

# Установка Docker Compose
echo "Установка Docker Compose..."
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

echo "Установка завершена."
echo "Не забудьте выйти и снова войти в систему, чтобы изменения вступили в силу."

# Очистка временных файлов
rm -f get-docker.sh
Выполните следующие шаги:

Создайте новый файл, например, install_docker.sh.
Скопируйте вышеуказанный скрипт в этот файл.
Откройте терминал и перейдите в каталог, где находится скрипт: cd /путь/к/скрипту.
Выполните команду для предоставления скрипту права на выполнение: chmod +x install_docker.sh.
Запустите скрипт: ./install_docker.sh.
Скрипт сначала установит Docker, затем Docker Compose. После установки Docker вас попросят перезагрузиться или выполнить вход в систему заново для применения изменений по разрешению запуска Docker без sudo.

Пожалуйста, имейте в виду, что перед использованием любых скриптов, особенно связанных с системными изменениями, рекомендуется убедиться, что вы понимаете, что делает каждая команда.




