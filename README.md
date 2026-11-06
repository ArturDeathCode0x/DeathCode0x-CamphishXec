# DeathCode0x-CamphishXec

<p align="center">
  <img src="assets/deathcode0x-banner.svg" alt="DeathCode0x CamphishXec — Authorized Security Lab" width="100%">
</p>

> Projeto independente de estudo em segurança cibernética, conscientização sobre engenharia social e avaliação de riscos em laboratório autorizado.

## Instalação rápida (Kali Linux / Debian)

```bash
sudo apt update
sudo apt install -y git python3
git clone https://github.com/ArturDeathCode0x/DeathCode0x-CamphishXec.git
cd DeathCode0x-CamphishXec
chmod +x scripts/lab-check.sh
./scripts/lab-check.sh
```

Para abrir os arquivos do projeto somente no computador local:

```bash
python3 -m http.server 8000 --bind 127.0.0.1
```

Acesse `http://127.0.0.1:8000` e pressione `Ctrl+C` no terminal para encerrar.

**Guia completo:** [docs/INSTALL.md](docs/INSTALL.md)

## Objetivo
Estudar riscos de privacidade relacionados a páginas web que solicitam permissões do navegador e desenvolver práticas de conscientização e defesa.

## Uso responsável
- Teste somente em sistemas próprios ou com autorização expressa.
- Informe os participantes e obtenha consentimento antes de qualquer teste.
- Não colete imagens, áudio, credenciais ou dados pessoais sem consentimento específico.
- Prefira dados sintéticos em demonstrações e remova informações sensíveis dos registros.
- Interrompa o teste se o consentimento for retirado.

Este projeto não é certificado nem representa uma ferramenta oficial de qualquer instituição. Esta documentação não autoriza testes contra terceiros.

## Direitos autorais
Consulte [LICENSE](LICENSE). Como este repositório está público, visitantes ainda podem visualizar e fazer fork conforme os Termos do GitHub. Para restringir o acesso ao código, torne o repositório privado.
