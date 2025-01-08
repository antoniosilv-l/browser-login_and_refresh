' Cria um objeto capaz de interagir com o chrome.
Set WshShell = WScript.CreateObject("WScript.shell")
' Cria um objeto capaz de interagir com os objetos do sistema.
' Nesse caso ele irá procurar um arquivo .env que está na mesma pasta.
Set FSO = CreateObject("Scripting.FileSystemObject")
Set File = FSO.OpenTextFile("C:\browser-autologin\.env", 1) ' Inluir o caminho do arquivo .env

' Observa se o chrome está executando e executa comandos para passar da primeira parte do login.
' Alem de navegar ate o botao de Single Sign On
WshShell.AppActivate "Google Chrome"
Wscript.Sleep 5000

WshShell.SendKeys "{TAB}"
WshShell.SendKeys "{TAB}"
WshShell.SendKeys "{TAB}"
WshShell.SendKeys "{ENTER}"

' Aguarda um tempo até a pagina está carregada para ler o arquivo .env
' E colocar o usuario e senha.
' Depois simula o clique do enter e fecha o arquivo env.
Wscript.Sleep 10000

Do Until File.AtEndOfStream
    Line = File.ReadLine
    ' Aqui é uma verificação para saber se está dentro do modelo VARIAVEL=VALOR
    ' Se o retorno for maior que 0, ele está correto e segue para o preenchimento das informaões.
    if InStr(Line, "=") > 0 then
        Parts = Split(Line, "=")

        ' O valor da variavel sempre estará no index 1.
        WshShell.SendKeys Parts(1)
        WshShell.SendKeys "{TAB}"
    end if
loop

WshShell.SendKeys "{ENTER}"
Wscript.Sleep 5000
WshShell.SendKeys "{F11}"

File.Close