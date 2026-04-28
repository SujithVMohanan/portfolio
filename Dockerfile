FROM python:3.12

WORKDIR /app

# Copy requirements
COPY requirements.txt .

# Install dependencies (Gunicorn included here)
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt && \
    pip install gunicorn 

# Copy project
COPY . .

# Expose port
EXPOSE 8000

# Run Gunicorn
CMD ["gunicorn", "--workers", "3", "--bind", "0.0.0.0:8000", "portfolio.wsgi:application"]