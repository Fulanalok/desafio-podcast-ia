# Prompts na Pratica: podcast com IA

<p align="center">
  <img src="./assets/cover.svg" width="360" alt="Capa provisoria do podcast Prompts na Pratica">
</p>

<p align="center">
  <a href="https://dio.me/">
    <img src="https://img.shields.io/badge/DIO-Desafio-28DA77" alt="DIO">
  </a>
  <img src="https://img.shields.io/badge/Projeto-Podcast%20com%20IA-blue" alt="Podcast com IA">
</p>

## Preview

Ouça o episodio final:

<div align="center">
  <audio src="./output/podcast-prompts-na-pratica.wav" controls title="Podcast Prompts na Pratica"></audio>
</div>

## Sobre o projeto

Este repositorio foi criado para o desafio da DIO de produzir um podcast com apoio de ferramentas de inteligencia artificial.

O tema escolhido foi **engenharia de prompts para iniciantes**. A proposta e mostrar, em poucos minutos, como uma instrucao bem escrita muda a qualidade da resposta de um modelo de IA.

O episodio explica o que e um prompt, compara um pedido vago com um pedido melhor estruturado e fecha com dicas praticas para conversar melhor com modelos de IA.

## Fluxo pedido no desafio

O enunciado do desafio propõe este processo:

1. **ChatGPT** para criar um titulo atrativo e um roteiro magnetico.
2. **Midjourney** para gerar uma capa personalizada.
3. **ElevenLabs** para gerar uma voz mais humanizada.
4. GitHub para organizar prompts, roteiro, capa e audio final.

Neste repositorio, deixei os prompts e a estrutura preparados para esse fluxo. Como eu nao tenho acesso direto ao Midjourney e ao ElevenLabs nesta sessao, mantive tambem uma versao local em WAV como apoio. Para ficar 100% igual ao enunciado, gere a capa no Midjourney e a voz no ElevenLabs usando os prompts documentados.

## Aulas usadas como base

O projeto foi organizado seguindo os pontos trabalhados durante as aulas:

- por que criar um podcast;
- definicao de um grupo ou publico-alvo;
- o que e prompt engineering;
- como escrever prompts melhores;
- conceitos avancados de prompt;
- criacao de um titulo mais forte;
- imagem de capa e dicas de Midjourney;
- roteiro com variaveis;
- geracao de audio com ElevenLabs;
- edicao simples do podcast;
- entrega do projeto no GitHub;
- transcricao e documentacao do processo.

## Arquivos principais

```text
desafio-podcast-ia/
|-- README.md
|-- assets/
|   `-- cover.svg
|-- audio/
|   `-- podcast-prompts-na-pratica.wav
|-- output/
|   `-- podcast-prompts-na-pratica.wav
|-- roteiro-podcast.md
|-- prompts.md
|-- scripts/
|   `-- gerar-audio.ps1
`-- src/
    `-- prompts/
        |-- audio.md
        |-- capa.md
        |-- chatgpt.md
        |-- edicao.md
        |-- elevenlabs.md
        `-- midjourney.md
```

## Como foi feito ate aqui

1. Defini o publico do podcast: pessoas iniciantes em IA.
2. Usei prompts no estilo ChatGPT para escolher tema, titulo e estrutura.
3. Escrevi um roteiro curto, com linguagem simples e tom de conversa.
4. Revisei o texto para reduzir cara de texto gerado automaticamente.
5. Preparei o prompt de capa para uso no Midjourney.
6. Preparei o texto e a direcao de voz para uso no ElevenLabs.
7. Mantive uma versao local em WAV como apoio, gerada com sintese de voz do Windows.
8. Organizei o repositorio seguindo a base indicada no desafio.

## Ferramentas do fluxo oficial

- ChatGPT para ideacao, titulo, estrutura e roteiro.
- Midjourney para capa personalizada.
- ElevenLabs para voz mais humanizada.
- CapCut ou outro editor para ajustes finais de audio, se necessario.
- GitHub para entrega do projeto.

## Prompts

Os prompts usados estao documentados em:

- [`prompts.md`](./prompts.md)
- [`src/prompts/chatgpt.md`](./src/prompts/chatgpt.md)
- [`src/prompts/midjourney.md`](./src/prompts/midjourney.md)
- [`src/prompts/elevenlabs.md`](./src/prompts/elevenlabs.md)
- [`src/prompts/audio.md`](./src/prompts/audio.md)
- [`src/prompts/capa.md`](./src/prompts/capa.md)
- [`src/prompts/edicao.md`](./src/prompts/edicao.md)

## Como finalizar seguindo exatamente o enunciado

1. Abra o Midjourney e use o prompt de `src/prompts/midjourney.md`.
2. Salve a melhor imagem gerada como `assets/cover.png`.
3. Abra o ElevenLabs e cole o roteiro de `roteiro-podcast.md`.
4. Use a direcao de voz descrita em `src/prompts/elevenlabs.md`.
5. Baixe o audio em MP3 e salve como `output/podcast_editado.mp3`.
6. Se editar o audio no CapCut, mantenha o arquivo final editado em `output/`.
7. Atualize o preview do README para apontar para o MP3 final, se desejar.

## Alternativa local

Enquanto o audio do ElevenLabs nao for gerado, existe uma versao local em WAV.

Para recriar essa versao no Windows:

```powershell
powershell.exe -ExecutionPolicy Bypass -File .\scripts\gerar-audio.ps1
```

O audio local sera gerado em:

```text
audio/podcast-prompts-na-pratica.wav
output/podcast-prompts-na-pratica.wav
```

## Referencia

Este projeto foi inspirado na estrutura do repositorio base indicado pela DIO:

https://github.com/felipeAguiarCode/prompts-for-podcast-generate-by-ia

