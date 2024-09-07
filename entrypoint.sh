#!/bin/bash

# Run Celery beat
celery -A app_parking beat -l info &

# Run Celery worker
celery -A app_parking worker -l info -P eventlet &

# Run Gunicorn
exec gunicorn --worker-class gevent app_parking.wsgi:application --bind 0.0.0.0:8001 --timeout 300
