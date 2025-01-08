do
    ' Instancia as variaveis que ficaram com os horarios necessarios para rodar o script.
    dim horarioFinalExpediente
    dim fimExpediente
    dim horarioAtual

    ' Atribuindo valores as variaveis de horarios.
    horarioFinalExpediente = "18:00:00"
    fimExpediente = timevalue(horarioFinalExpediente)

    ' Cria um objeto capaz de interagir com o chrome.
    Set WshShell = WScript.CreateObject("WScript.shell")

    horarioAtual = time

    if horarioAtual <= horarioFinalExpediente then
        ' Observa se o chrome está executando e executa comandos para trocar de abas a cada x tempo.
        WshShell.AppActivate "Google Chrome"
        Wscript.Sleep 1000

        WshShell.SendKeys "^{TAB}"
        Wscript.Sleep 5000
        WshShell.SendKeys "^{F5}"
        Wscript.Sleep 120000
    else
        Wscript.Quit
    end if

    ' A cada iteração atualiza a variavel para pegar a hora atual.
    horarioAtual = time
loop until horarioAtual > fimExpediente
