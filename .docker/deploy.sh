#!/bin/bash
set -e

echo '------ Iniciando tarefas de deploy  ------'

php artisan key:generate
php artisan cache:clear
php artisan lighthouse:clear-cache
php artisan lighthouse:cache
php artisan lighthouse-dashboard:migrate
echo '------ Concluído ------'
