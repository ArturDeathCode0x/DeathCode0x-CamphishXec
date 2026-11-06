# Instalação e execução — DeathCode0x-CamphishXec

Este guia prepara um laboratório **local** para estudo de segurança e conscientização sobre engenharia social. Não é um guia para coletar imagens, áudio, credenciais ou dados de visitantes.

## 1. Requisitos

- Arch Linux, Kali Linux, Debian ou outra distribuição Linux
- Git
- Python 3
- PHP é opcional e só é necessário caso você esteja estudando arquivos PHP localmente

## 2. Instalar os requisitos

### Arch Linux

Atualize o sistema e instale Git e Python:

```bash
sudo pacman -Syu
sudo pacman -S --needed git python
```

Opcional, para analisar/executar exemplos PHP locais:

```bash
sudo pacman -S --needed php
```

### Kali Linux / Debian / Ubuntu

```bash
sudo apt update
sudo apt install -y git python3
```

Opcional:

```bash
sudo apt install -y php-cli
```

## 3. Baixar o repositório

```bash
git clone https://github.com/ArturDeathCode0x/DeathCode0x-CamphishXec.git
cd DeathCode0x-CamphishXec
```

## 4. Verificar o ambiente

```bash
chmod +x scripts/lab-check.sh
./scripts/lab-check.sh
```

## 5. Abrir a demonstração local

Na pasta do projeto, execute:

```bash
python3 -m http.server 8000 --bind 127.0.0.1
```

Abra no próprio computador:

```text
http://127.0.0.1:8000
```

Para parar o servidor, pressione `Ctrl+C` no terminal.

## 6. Atualizar o repositório

```bash
git pull
```

## Segurança do laboratório

- Use somente máquinas e contas próprias ou com autorização expressa.
- Avise os participantes e obtenha consentimento antes de qualquer demonstração.
- Não use túneis públicos para expor páginas de teste.
- Não colete nem transmita imagens, áudio, credenciais ou dados pessoais.
- Utilize dados fictícios e mantenha o servidor limitado a `127.0.0.1`.

O script `scripts/lab-check.sh` apenas verifica dependências básicas; ele não captura nem transmite dados.
