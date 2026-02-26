# 1️⃣ Start from official Python image
FROM python:3.10-slim

# 2️⃣ Set working directory inside container
WORKDIR /app

# 3️⃣ Copy files from GitHub repo into container
COPY . .

# 4️⃣ Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5️⃣ Expose port
EXPOSE 5000

# 6️⃣ Command to run app
CMD ["python", "app.py"]