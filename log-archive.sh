#!/bin/bash

fecha=$(date +%Y%m%d_%H-%M)
nombreArchivo="logs_archive_$fecha.tar.gz"


if [ -z $1 ]; then
        echo "Escribe la ruta del directorio para comprimir logs"
        read dirLog
else
        dirLog=$1
fi

tar -czf $dirLog/$nombreArchivo -C /var log
