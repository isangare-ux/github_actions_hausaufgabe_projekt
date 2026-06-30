#!/bin/bash
set -e

echo "Starte einfachen Test"

if [ -d "scripts" ]; then
  echo "OK: scripts Ordner ist vorhanden"
else
  echo "FEHLER: scripts Ordner fehlt"
  exit 1
fi

echo "Test erfolgreich"
