# Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory to /app
WORKDIR /app

# Copy the requirements file into the container and install the dependencies
COPY requirements.txt .
RUN /usr/local/bin/python -m pip install --upgrade pip && pip install -r requirements.txt
RUN pip install django

# Copy the rest of the application code into the container
COPY . /app/

# Set the environment variables for Django
ENV DJANGO_SETTINGS_MODULE=froms.settings
ENV PYTHONUNBUFFERED=1

# Expose port 8000 for the Django development server
EXPOSE 8000

# Start the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
