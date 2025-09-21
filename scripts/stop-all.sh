#!/bin/bash
# Stop and remove all e-commerce backend containers

echo "🛑 Stopping docker-compose stack..."
docker-compose down

echo "🧹 Removing unused Docker resources..."
docker system prune -f

echo "✅ All services stopped and cleaned up."
