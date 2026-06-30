#!/bin/bash
set -e

echo "Automatische Pipeline wurde gestartet"
echo "Grund: Push auf main"
echo "Repository Inhalt:"
ls -la

echo "Shell Skripte im Projekt:"
find scripts -name '*.sh' -print

echo "Main Pipeline erfolgreich beendet"
