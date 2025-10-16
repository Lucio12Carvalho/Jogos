@echo off
echo ========================================
echo    CONFIGURACAO PARA GOOGLE PLAY STORE
echo ========================================
echo.

echo [1/6] Verificando Node.js...
node --version
if %errorlevel% neq 0 (
    echo ERRO: Node.js nao encontrado!
    echo Baixe em: https://nodejs.org/
    pause
    exit /b 1
)

echo [2/6] Instalando Capacitor...
npm install -g @capacitor/cli
if %errorlevel% neq 0 (
    echo ERRO: Falha ao instalar Capacitor
    pause
    exit /b 1
)

echo [3/6] Inicializando projeto Android...
npx cap init "Jogo de Damas" "com.lucio12carvalho.damas" --web-dir="."
if %errorlevel% neq 0 (
    echo ERRO: Falha ao inicializar Capacitor
    pause
    exit /b 1
)

echo [4/6] Adicionando plataforma Android...
npx cap add android
if %errorlevel% neq 0 (
    echo ERRO: Falha ao adicionar Android
    pause
    exit /b 1
)

echo [5/6] Copiando arquivos...
npx cap copy
if %errorlevel% neq 0 (
    echo ERRO: Falha ao copiar arquivos
    pause
    exit /b 1
)

echo [6/6] Abrindo Android Studio...
echo.
echo ========================================
echo    CONFIGURACAO CONCLUIDA!
echo ========================================
echo.
echo PROXIMOS PASSOS:
echo 1. Android Studio vai abrir automaticamente
echo 2. Aguarde o sync do projeto
echo 3. Build ^> Generate Signed Bundle/APK
echo 4. Escolha Android App Bundle (AAB)
echo 5. Crie uma keystore
echo 6. Gere o AAB para upload na Play Store
echo.
echo Pressione qualquer tecla para abrir Android Studio...
pause

npx cap open android

echo.
echo ========================================
echo    PROCESSO CONCLUIDO!
echo ========================================
echo.
echo O Android Studio foi aberto.
echo Siga os passos no arquivo GERAR_APK.md
echo para gerar o AAB final.
echo.
pause
