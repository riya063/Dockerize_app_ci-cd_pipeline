#use official python image
FROM python:3.9-slim

#Set working directory
WORKDIR /app

#Copy dependencies
COPY . /app

#Install dependenices
RUN pip install -r requirements.txt

#Copy source code
COPY . .

#Export the port
EXPOSE 5000

#Run the application
CMD ["python","app.py"]