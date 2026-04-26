@echo off
set "dominio=cronicasminecraft.duckdns.org"

:: Pega o IP dentro dos colchetes [ ] na resposta do ping
for /f "tokens=2 delims=[]" %%a in ('ping -6 -n 1 %dominio% ^| findstr "["') do (
    :: Adiciona os colchetes manualmente ao redor da variável %%a
    echo [%%a]| clip
    echo Endereco IPv6 copiado com colchetes: [%%a]
    pause
    exit /b
)

echo Nao foi possivel capturar o IPv6. Verifique a conexao.
pause