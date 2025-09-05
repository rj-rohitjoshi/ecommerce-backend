#!/bin/bash
# Start all e-commerce backend services & infrastructure

echo "🚀 Building all services with Maven..."
mvn clean package -DskipTests

echo "🐳 Starting docker-compose stack..."
docker-compose up --build
