#!/usr/bin/env bash
set -Eeuo pipefail

# DeathCode0x-CamphishXec — local lab environment check
# This helper checks basic tools; it does not capture or transmit data.

blue='\033[1;34m'
green='\033[1;32m'
yellow='\033[1;33m'
reset='\033[0m'

say() { printf '%b\n' "$1"; }

say "${blue}[*] DeathCode0x-CamphishXec — verificação do laboratório local${reset}"

missing=0
for cmd in git python3; do
  if command -v "$cmd" >/dev/null 2>&1; then
    say "${green}[OK]${reset} $cmd encontrado: $(command -v "$cmd")"
  else
    say "${yellow}[FALTA]${reset} $cmd não encontrado"
    missing=1
  fi
done

if command -v php >/dev/null 2>&1; then
  say "${green}[OK]${reset} PHP encontrado: $(php --version | head -n 1)"
else
  say "${yellow}[INFO]${reset} PHP não instalado (opcional para conteúdo PHP local)"
fi

if [[ "$missing" -eq 1 ]]; then
  say "${yellow}[!] Instale os requisitos ausentes e execute novamente.${reset}"
  exit 1
fi

say "${green}[OK]${reset} Ambiente básico pronto."
say "Para servir arquivos estáticos somente em sua máquina:"
say "  python3 -m http.server 8000 --bind 127.0.0.1"
say "Depois abra: http://127.0.0.1:8000"
say "Use Ctrl+C para encerrar. Não exponha o servidor à internet."
