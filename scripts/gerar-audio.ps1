$ErrorActionPreference = "Stop"

Add-Type -AssemblyName System.Speech

$projectRoot = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
$audioDir = Join-Path $projectRoot "audio"
$outputPath = Join-Path $audioDir "podcast-prompts-na-pratica.wav"

New-Item -ItemType Directory -Force -Path $audioDir | Out-Null

$texto = @"
Ola! Seja bem-vindo a este episodio rapido sobre inteligencia artificial.

Hoje o tema e simples, mas muito importante: prompts.

Prompt e a instrucao que voce escreve para orientar uma inteligencia artificial. Pode ser uma pergunta, um pedido, uma tarefa ou ate um conjunto de regras.

Por exemplo: quando voce escreve "explique inteligencia artificial", isso e um prompt.

Mas existe uma diferenca grande entre um prompt simples e um prompt bem construido.

Um prompt muito vago pode gerar uma resposta generica. Ja um prompt claro ajuda a IA a entender melhor o que voce precisa.

Imagine que voce pede: explique IA.

A resposta pode vir muito ampla, tecnica ou fora do seu nivel.

Agora veja um prompt melhor: explique inteligencia artificial para um aluno iniciante, usando linguagem simples, em tres topicos e com um exemplo do dia a dia.

Percebe a diferenca?

Nesse segundo caso, voce informou o publico, o formato, o nivel de linguagem e o tipo de exemplo esperado.

Um bom prompt geralmente tem alguns elementos importantes.

Primeiro: contexto. Explique a situacao.

Segundo: objetivo. Diga exatamente o que voce quer.

Terceiro: formato. Peca lista, resumo, tabela, passo a passo ou outro formato.

Quarto: restricoes. Informe limites, como tamanho, linguagem ou o que deve ser evitado.

Quinto: exemplos. Quando possivel, mostre um modelo de resposta.

Isso nao significa que a IA sempre vai acertar. Modelos de linguagem podem errar, inventar informacoes ou deixar passar detalhes importantes. Por isso, a revisao humana continua sendo essencial.

A ideia principal e: quanto melhor voce explica a tarefa, maior a chance de receber uma resposta util.

Engenharia de prompts nao e sobre decorar comandos magicos. E sobre aprender a conversar melhor com sistemas de IA.

Entao, quando for usar uma IA, lembre-se: seja claro, diga o contexto, defina o objetivo e revise o resultado.

Assim, a IA deixa de ser apenas uma ferramenta curiosa e passa a ser uma parceira de estudo, trabalho e criatividade.

Esse foi o episodio de hoje. Bons estudos e ate a proxima!
"@

$synth = New-Object System.Speech.Synthesis.SpeechSynthesizer
$synth.Rate = 0
$synth.Volume = 100
$synth.SetOutputToWaveFile($outputPath)
$synth.Speak($texto)
$synth.SetOutputToNull()
$synth.Dispose()

Write-Host "Audio gerado em: $outputPath"

