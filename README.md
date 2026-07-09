# Prompts na Pratica: podcast com IA

Este repositorio foi criado para o desafio da DIO de gerar um podcast com apoio de inteligencia artificial.

A ideia foi fazer um episodio curto, simples e direto sobre um assunto que aparece o tempo todo quando falamos de IA generativa: **como escrever bons prompts**.

## Sobre o episodio

**Titulo:** Prompts na Pratica: como conversar melhor com a IA

O podcast explica o que e um prompt, por que instrucoes vagas costumam gerar respostas fracas e como melhorar um pedido usando contexto, objetivo, formato e restricoes.

Escolhi esse tema porque ele e util mesmo para quem esta comecando agora. Antes de usar ferramentas de IA para tarefas mais complexas, faz sentido aprender a pedir melhor.

## O que tem no repositorio

```text
desafio-podcast-ia/
|-- README.md
|-- prompts.md
|-- roteiro-podcast.md
|-- audio/
|   `-- podcast-prompts-na-pratica.wav
`-- scripts/
    `-- gerar-audio.ps1
```

Arquivos principais:

- `prompts.md`: prompts usados para pensar no tema, titulo, roteiro e descricao do projeto.
- `roteiro-podcast.md`: texto final usado como base do episodio.
- `audio/podcast-prompts-na-pratica.wav`: audio final do podcast.
- `scripts/gerar-audio.ps1`: script em PowerShell usado para gerar o audio com voz sintetizada.

## Como eu organizei o processo

1. Defini o tema do episodio: engenharia de prompts para iniciantes.
2. Usei prompts para gerar ideias de titulo e estrutura.
3. Montei um roteiro curto, com linguagem mais proxima de conversa.
4. Revisei o texto para ficar mais natural em formato de podcast.
5. Gerei o audio em `.wav` usando sintese de voz no Windows.
6. Ajustei pausas e ritmo no script para o audio nao ficar tao mecanico.

## Ferramentas e conceitos usados

- IA generativa
- Engenharia de prompt
- Roteirizacao
- Sintese de voz
- Markdown
- Git e GitHub

## Como gerar o audio novamente

No Windows, execute:

```powershell
powershell.exe -ExecutionPolicy Bypass -File .\scripts\gerar-audio.ps1
```

O arquivo sera salvo em:

```text
audio/podcast-prompts-na-pratica.wav
```

## Referencia

Repositorio indicado no desafio:

https://github.com/felipeAguiarCode/prompts-for-podcast-generate-by-ia

