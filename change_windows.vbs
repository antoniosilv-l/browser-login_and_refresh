do
    ' Instancia as variaveis que ficaram com os horarios necessarios para rodar o script.
    dim horaFimExpediente
    dim FimExpediente
    dim CurrentTime

    ' Atribuindo valores as variaveis de horarios.
    horaFimExpediente = "22:00:00"
    FimExpediente = timevalue(horaFimExpediente)

    ' Cria um objeto capaz de interagir com o chrome.
    Set WshShell = WScript.CreateObject("WScript.shell")

    ' Necessario está dentro do loop para pegar a hora atual corretamente.
    CurrentTime = time

    if CurrentTime <= horaFimExpediente then
        ' Observa se o chrome está executando e executa comandos para trocar de abas a cada x tempo.
        WshShell.AppActivate "Google Chrome"
        Wscript.Sleep 1000

        ' Aguarda 120s para trocar a aba do google chrome.
        ' Além de recarregar a pagina.
        WshShell.SendKeys "^{TAB}"
        Wscript.Sleep 5000
        WshShell.SendKeys "^{F5}"
        Wscript.Sleep 120000
    else
        Wscript.Quit
    end if

    ' A cada iteração atualiza a variavel para pegar a hora atual.
    CurrentTime = time
loop until CurrentTime > FimExpediente
