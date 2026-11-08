#!/bin/bash
# Abre la plataforma en Chrome con impresión directa (sin diálogo), en un perfil propio.
URL="https://sansoneravenna-wq.github.io/ceibal-olimpiadas/"
PROFILE="$HOME/Library/Application Support/AcreditacionChrome"
open -na "Google Chrome" --args --kiosk-printing --user-data-dir="$PROFILE" --no-first-run --app="$URL"
