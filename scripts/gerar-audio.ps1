$ErrorActionPreference = "Stop"

Add-Type -AssemblyName System.Speech

$projectRoot = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
$audioDir = Join-Path $projectRoot "audio"
$outputPath = Join-Path $audioDir "podcast-prompts-na-pratica.wav"

New-Item -ItemType Directory -Force -Path $audioDir | Out-Null

$ssml = @"
<speak version="1.0" xml:lang="pt-BR">
  <prosody rate="-5%" volume="100">
    Ola! Seja bem-vindo ao Prompts na Pratica,
    <break time="350ms"/>
    um episodio rapido para entender como conversar melhor com a inteligencia artificial.
    <break time="650ms"/>

    Hoje o tema e simples, mas muito importante:
    <emphasis level="moderate">prompts</emphasis>.
    <break time="500ms"/>

    Prompt e a instrucao que voce escreve para orientar uma inteligencia artificial.
    <break time="300ms"/>
    Pode ser uma pergunta, um pedido, uma tarefa, ou ate um conjunto de regras.
    <break time="550ms"/>

    Por exemplo: quando voce escreve, explique inteligencia artificial,
    <break time="250ms"/>
    voce acabou de criar um prompt.
    <break time="650ms"/>

    Mas existe uma diferenca enorme entre um prompt qualquer,
    <break time="250ms"/>
    e um prompt bem construido.
    <break time="500ms"/>

    Um prompt muito vago costuma gerar uma resposta generica.
    <break time="300ms"/>
    Ja um prompt claro ajuda a IA a entender melhor o que voce precisa.
    <break time="650ms"/>

    Imagine que voce pede:
    <break time="350ms"/>
    explique IA.
    <break time="600ms"/>

    A resposta pode vir muito ampla, tecnica demais, ou fora do seu nivel.
    <break time="650ms"/>

    Agora veja um prompt melhor:
    <break time="350ms"/>
    explique inteligencia artificial para um aluno iniciante,
    usando linguagem simples,
    em tres topicos,
    e com um exemplo do dia a dia.
    <break time="750ms"/>

    Percebe a diferenca?
    <break time="450ms"/>

    Nesse segundo caso, voce informou o publico, o formato,
    o nivel de linguagem e o tipo de exemplo esperado.
    <break time="350ms"/>
    Isso muda completamente a qualidade da resposta.
    <break time="700ms"/>

    Um bom prompt geralmente tem alguns elementos importantes.
    <break time="550ms"/>

    Primeiro: contexto.
    <break time="220ms"/>
    Explique a situacao.
    <break time="450ms"/>

    Segundo: objetivo.
    <break time="220ms"/>
    Diga exatamente o que voce quer.
    <break time="450ms"/>

    Terceiro: formato.
    <break time="220ms"/>
    Peca lista, resumo, tabela, passo a passo, ou outro formato.
    <break time="450ms"/>

    Quarto: restricoes.
    <break time="220ms"/>
    Informe limites, como tamanho, linguagem, ou o que deve ser evitado.
    <break time="450ms"/>

    Quinto: exemplos.
    <break time="220ms"/>
    Quando possivel, mostre um modelo do que voce espera.
    <break time="700ms"/>

    Isso nao significa que a IA sempre vai acertar.
    <break time="300ms"/>
    Modelos de linguagem podem errar, inventar informacoes,
    ou deixar passar detalhes importantes.
    <break time="350ms"/>
    Por isso, a revisao humana continua sendo essencial.
    <break time="700ms"/>

    A ideia principal e:
    <break time="300ms"/>
    quanto melhor voce explica a tarefa,
    maior a chance de receber uma resposta util.
    <break time="650ms"/>

    Engenharia de prompts nao e sobre decorar comandos magicos.
    <break time="300ms"/>
    E sobre aprender a conversar melhor com sistemas de IA.
    <break time="650ms"/>

    Entao, quando for usar uma IA, lembre-se:
    <break time="300ms"/>
    seja claro,
    diga o contexto,
    defina o objetivo,
    e revise o resultado.
    <break time="700ms"/>

    Assim, a IA deixa de ser apenas uma ferramenta curiosa,
    <break time="280ms"/>
    e passa a ser uma parceira de estudo, trabalho e criatividade.
    <break time="700ms"/>

    Esse foi o episodio de hoje.
    <break time="350ms"/>
    Bons estudos, e ate a proxima!
  </prosody>
</speak>
"@

$synth = New-Object System.Speech.Synthesis.SpeechSynthesizer

$ptVoice = $synth.GetInstalledVoices() |
    Where-Object { $_.VoiceInfo.Culture.Name -like "pt-*" } |
    Select-Object -First 1

if ($ptVoice) {
    $synth.SelectVoice($ptVoice.VoiceInfo.Name)
    Write-Host "Voz selecionada: $($ptVoice.VoiceInfo.Name)"
} else {
    Write-Host "Nenhuma voz pt-BR/pt-PT encontrada. Usando a voz padrao do Windows."
}

$synth.Rate = -1
$synth.Volume = 100
$synth.SetOutputToWaveFile($outputPath)
$synth.SpeakSsml($ssml)
$synth.SetOutputToNull()
$synth.Dispose()

Write-Host "Audio gerado em: $outputPath"

