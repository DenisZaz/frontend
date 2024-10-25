# Используем базовый образ Python
FROM python:3.9

# Устанавливаем зависимости
RUN pip install flask

# Копируем код приложения
COPY index.html /app/index.html
COPY app.py /app/app.py

# Переходим в рабочую директорию
WORKDIR /app

# Устанавливаем переменные окружения для Flask
ENV FLASK_APP=app.py

# Запускаем Flask-сервер на 5000 порту
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]