#!/bin/bash
set -e

echo "Starting Keybr container..."

# Try to rebuild SQLite3 if it fails to load
echo "Checking SQLite3 native module..."
if ! node -e "require('better-sqlite3')" 2>/dev/null; then
    echo "SQLite3 native module needs rebuilding for Linux..."
    npm rebuild better-sqlite3 --build-from-source || {
        echo "Failed to rebuild SQLite3, trying alternative approach..."
        rm -rf node_modules/better-sqlite3
        npm install better-sqlite3 --build-from-source
    }
fi

echo "Starting Keybr application..."
exec "$@"