#!/bin/bash
set -e

CHECK_TYPE="${CHECK_TYPE:-quick}"

echo "Projektpruefung startet"
echo "Pruefart: $CHECK_TYPE"

if [ ! -f "README.md" ]; then
  echo "FEHLER: README.md fehlt"
  exit 1
fi

if [ ! -d "scripts" ]; then
  echo "FEHLER: scripts Ordner fehlt"
  exit 1
fi

echo "OK: README.md vorhanden"
echo "OK: scripts Ordner vorhanden"

if [ "$CHECK_TYPE" = "full" ]; then
  echo "Vollpruefung wird ausgefuehrt"
  echo "Anzahl Shell Skripte: $(find scripts -name '*.sh' | wc -l)"
  echo "Log Datei vorhanden:"
  ls logs || true
fi

echo "Projektpruefung erfolgreich beendet"
