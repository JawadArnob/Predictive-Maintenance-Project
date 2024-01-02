FROM python:3.8-slim
WORKDIR /usr/src/app
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000
ENV MODEL_PATH /usr/src/app/trained_model.joblib
CMD ["python", "./src/main.py"]


