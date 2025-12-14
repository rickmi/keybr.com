#!/bin/bash

# Keybr Local Instance Management Script
# For Dygma Defy + Engram Layout Learning

set -e

COMPOSE_FILE="docker-compose.local.yaml"
DATA_DIR="./keybr-data"

show_help() {
    echo "Keybr Local Instance Manager"
    echo ""
    echo "Usage: $0 [command]"
    echo ""
    echo "Commands:"
    echo "  start     - Start Keybr container"
    echo "  stop      - Stop Keybr container"
    echo "  restart   - Restart Keybr container"
    echo "  rebuild   - Rebuild and start container"
    echo "  status    - Show container status"
    echo "  logs      - Show container logs"
    echo "  backup    - Backup your progress data"
    echo "  clean     - Stop and remove container (keeps data)"
    echo "  help      - Show this help"
    echo ""
    echo "Your progress is saved in: $DATA_DIR"
    echo "Access Keybr at: http://localhost:3000"
}

ensure_data_dir() {
    if [ ! -d "$DATA_DIR" ]; then
        echo "Creating data directory: $DATA_DIR"
        mkdir -p "$DATA_DIR"
    fi
}

start_keybr() {
    ensure_data_dir
    echo "Starting Keybr container..."
    docker-compose -f "$COMPOSE_FILE" up -d
    echo "Keybr is starting up..."
    echo "Access it at: http://localhost:3000"
    echo "Run '$0 logs' to see startup progress"
}

stop_keybr() {
    echo "Stopping Keybr container..."
    docker-compose -f "$COMPOSE_FILE" down
    echo "Keybr stopped. Your data is preserved in $DATA_DIR"
}

restart_keybr() {
    echo "Restarting Keybr container..."
    docker-compose -f "$COMPOSE_FILE" restart
    echo "Keybr restarted"
}

rebuild_keybr() {
    echo "Rebuilding and starting Keybr container..."
    docker-compose -f "$COMPOSE_FILE" down
    docker-compose -f "$COMPOSE_FILE" up --build -d
    echo "Keybr rebuilt and started"
    echo "Access it at: http://localhost:3000"
}

show_status() {
    echo "Container status:"
    docker-compose -f "$COMPOSE_FILE" ps
    echo ""
    if [ -f "$DATA_DIR/database.sqlite" ]; then
        echo "✅ Progress database found: $DATA_DIR/database.sqlite"
        echo "   Size: $(du -h "$DATA_DIR/database.sqlite" | cut -f1)"
    else
        echo "⚠️  No progress database found yet"
    fi
}

show_logs() {
    echo "Showing Keybr logs (Ctrl+C to exit):"
    docker-compose -f "$COMPOSE_FILE" logs -f keybr
}

backup_data() {
    if [ ! -d "$DATA_DIR" ]; then
        echo "❌ No data directory found to backup"
        exit 1
    fi
    
    BACKUP_NAME="keybr-backup-$(date +%Y%m%d-%H%M%S).tar.gz"
    echo "Creating backup: $BACKUP_NAME"
    tar -czf "$BACKUP_NAME" "$DATA_DIR"
    echo "✅ Backup created: $BACKUP_NAME"
    echo "   Size: $(du -h "$BACKUP_NAME" | cut -f1)"
}

clean_keybr() {
    echo "Stopping and removing Keybr container..."
    docker-compose -f "$COMPOSE_FILE" down
    docker-compose -f "$COMPOSE_FILE" rm -f
    echo "✅ Container removed. Your data is preserved in $DATA_DIR"
    echo "Run '$0 start' to create a fresh container"
}

# Main command handling
case "${1:-help}" in
    start)
        start_keybr
        ;;
    stop)
        stop_keybr
        ;;
    restart)
        restart_keybr
        ;;
    rebuild)
        rebuild_keybr
        ;;
    status)
        show_status
        ;;
    logs)
        show_logs
        ;;
    backup)
        backup_data
        ;;
    clean)
        clean_keybr
        ;;
    help|--help|-h)
        show_help
        ;;
    *)
        echo "❌ Unknown command: $1"
        echo ""
        show_help
        exit 1
        ;;
esac