@echo off
echo ========================================
echo    GERAR AAB COM ANDROID STUDIO
echo ========================================
echo.
echo PRÉ-REQUISITOS:
echo 1. Node.js instalado
echo 2. Android Studio instalado
echo.
echo ========================================
echo    INSTALAÇÃO DO NODE.JS
echo ========================================
echo.
echo 1. Baixe: https://nodejs.org/
echo 2. Instale a versão LTS
echo 3. Reinicie o PowerShell
echo.
echo ========================================
echo    COMANDOS PARA EXECUTAR
echo ========================================
echo.
echo cd "c:\Ecivaldo\lucio\damas-github"
echo npm install -g @capacitor/cli
echo npx cap init "Damas" "com.lucio.damas"
echo npx cap add android
echo npx cap copy
echo npx cap open android
echo.
echo ========================================
echo    NO ANDROID STUDIO
echo ========================================
echo.
echo 1. Build → Generate Signed Bundle/APK
echo 2. Escolha "Android App Bundle (AAB)"
echo 3. Create New Keystore
echo 4. Preencha:
echo    - Key store path: C:\Ecivaldo\lucio\damas-github\keystore.jks
echo    - Password: damas123
echo    - Key alias: damas
echo    - Key password: damas123
echo 5. Build → Generate
echo.
echo ========================================
echo    ARQUIVO GERADO
echo ========================================
echo.
echo O AAB será gerado em:
echo android\app\build\outputs\bundle\release\
echo.
echo Renomeie para: Damas.aab
echo.
pause
