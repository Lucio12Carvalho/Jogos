# Guia Rápido - PWA Builder para Play Store

## Passo a Passo

### 1. Acesse o PWA Builder
- Vá para: https://www.pwabuilder.com/
- Cole a URL do seu site publicado (ex: `https://lucio12carvalho.github.io/Jogos/`)

### 2. Teste seu PWA
- O PWA Builder vai analisar seu manifest.json e service worker
- Verifique se todos os requisitos estão atendidos (ícones, manifest, etc.)

### 3. Gerar Package Android
- Clique em "Build my PWA"
- Selecione "Android"
- Clique em "Generate Package"

### 4. Opções de Geração
- **APK**: Para teste direto
- **AAB (App Bundle)**: Para upload no Play Console (RECOMENDADO)

### 5. Configurações Importantes
- **Package ID**: Use um ID único (ex: `com.lucio.damas`)
- **App Name**: "Jogo de Damas"
- **Version**: Incremente a versão (ex: 1.0.1)
- **Signing**: 
  - Se já tiver uma keystore, use-a
  - Caso contrário, o PWA Builder pode gerar uma nova

### 6. Upload no Play Console
- Acesse: https://play.google.com/console/
- Vá em "Produção" ou "Teste interno"
- Clique em "Criar novo release"
- Faça upload do arquivo .AAB gerado
- Complete as informações necessárias

## Arquivos Importantes
- ✅ `manifest.json` - Configurado e otimizado
- ✅ `index.html` - Service worker registrado
- ✅ `sw.js` - Service worker configurado
- ✅ `icon.png.png` - Ícone do app

## Dicas
- Certifique-se de que o site está acessível via HTTPS
- O PWA Builder precisa que o site esteja online (não funciona com localhost)
- Se houver erros, verifique o console do navegador no PWA Builder

## Troubleshooting
- **Erro de manifest**: Verifique se o manifest.json está acessível via HTTPS
- **Erro de service worker**: Verifique se o sw.js está no caminho correto
- **Erro de ícones**: Garanta que os ícones estão acessíveis e nos tamanhos corretos

