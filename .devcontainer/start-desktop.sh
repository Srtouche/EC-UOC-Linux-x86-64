#!/bin/bash
echo 'Esperando instalación...'
timeout=200
elapsed=0
until [ -f "$WORKSPACE/.ec-install-done" ] || [ "$elapsed" -ge "$timeout" ]; do
  sleep 3
  elapsed=$((elapsed + 3))
done
if [ -f "$WORKSPACE/.ec-install-done" ]; then
  echo 'Instalación completada. Iniciando escritorio...'
else
  echo 'Tiempo de espera agotado. Iniciando escritorio de todos modos...'
fi
exec /usr/local/share/desktop-init.sh
