#!/bin/bash
# Stop and remove all e-commerce backend containers

echo "🛑 Stopping docker-compose stack..."
docker-compose down

# Optional: uncomment next line to remove volumes as well
# docker-compose down -v

echo "✅ All services stopped."
