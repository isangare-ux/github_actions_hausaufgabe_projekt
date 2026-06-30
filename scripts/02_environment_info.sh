#!/bin/bash
set -e

ENVIRONMENT="${TARGET_ENV:-dev}"
SHOW_DETAILS="${SHOW_DETAILS:-false}"

echo "Ausgewaehlte Umgebung: $ENVIRONMENT"

if [ "$SHOW_DETAILS" = "true" ]; then
  echo "Details sind aktiviert"
  echo "Runner Betriebssystem: $(uname -s)"
  echo "Arbeitsordner: $(pwd)"
else
  echo "Details sind deaktiviert"
fi
