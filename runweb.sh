#!/bin/bash
set -euo pipefail

#cd public

echo "Open http://localhost:8080/"

# Serve files using a webserver
python3 -m http.server -d public 8080
