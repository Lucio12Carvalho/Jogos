# 📱 Como Gerar APK/AAB para Google Play Store

## 🚀 **Método 1: Capacitor (Recomendado)**

### **Pré-requisitos:**
- Node.js instalado
- Android Studio instalado
- Java JDK 11+

### **Passo a Passo:**

#### **1. Instalar Capacitor:**
```bash
npm install -g @capacitor/cli
```

#### **2. Inicializar Projeto:**
```bash
cd damas-github
npx cap init "Jogo de Damas" "com.lucio12carvalho.damas"
```

#### **3. Adicionar Plataforma Android:**
```bash
npx cap add android
```

#### **4. Copiar Arquivos:**
```bash
npx cap copy
```

#### **5. Abrir no Android Studio:**
```bash
npx cap open android
```

#### **6. Gerar APK/AAB no Android Studio:**
1. **Build** → **Generate Signed Bundle/APK**
2. Escolha **Android App Bundle** (AAB)
3. Crie uma **keystore** (chave de assinatura)
4. Configure:
   - **Key store path:** Crie um arquivo `.jks`
   - **Key alias:** `damas-key`
   - **Password:** (escolha uma senha forte)
   - **Validity:** 25 anos
5. **Build** → **Build Bundle(s) / APK(s)**

### **Resultado:**
- **AAB:** `app/build/outputs/bundle/release/app-release.aab`
- **APK:** `app/build/outputs/apk/release/app-release.apk`

---

## 🛠️ **Método 2: Cordova (Alternativo)**

### **Instalação:**
```bash
npm install -g cordova
```

### **Configuração:**
```bash
cordova create damas-app com.lucio12carvalho.damas "Jogo de Damas"
cd damas-app
cordova platform add android
```

### **Copiar Arquivos:**
```bash
# Copie todos os arquivos do seu projeto para www/
cp -r ../damas-github/* www/
```

### **Gerar APK:**
```bash
cordova build android --release
```

---

## 🔑 **Configuração de Assinatura**

### **Criar Keystore:**
```bash
keytool -genkey -v -keystore damas-release-key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias damas-key
```

### **Configurar build.gradle:**
```gradle
android {
    signingConfigs {
        release {
            storeFile file('damas-release-key.jks')
            storePassword 'sua-senha'
            keyAlias 'damas-key'
            keyPassword 'sua-senha'
        }
    }
    buildTypes {
        release {
            signingConfig signingConfigs.release
        }
    }
}
```

---

## 📋 **Checklist para Play Store:**

### **Antes de Publicar:**
- [ ] **AAB gerado** (não APK)
- [ ] **Assinado** com keystore
- [ ] **Testado** em dispositivos
- [ ] **Ícones** configurados
- [ ] **Permissões** definidas
- [ ] **Versão** definida

### **Configurações Importantes:**
- **Package name:** `com.lucio12carvalho.damas`
- **Version code:** 1
- **Version name:** 1.0.0
- **Min SDK:** 21 (Android 5.0)
- **Target SDK:** 34 (Android 14)

---

## 🎯 **Comandos Rápidos:**

### **Capacitor:**
```bash
# Instalar
npm install -g @capacitor/cli

# Configurar
npx cap init "Jogo de Damas" "com.lucio12carvalho.damas"
npx cap add android
npx cap copy
npx cap open android
```

### **Cordova:**
```bash
# Instalar
npm install -g cordova

# Configurar
cordova create damas-app com.lucio12carvalho.damas "Jogo de Damas"
cd damas-app
cordova platform add android
cordova build android --release
```

---

## ⚠️ **Problemas Comuns:**

### **1. Erro de Permissões:**
- Verifique se o Android Studio tem permissões
- Execute como administrador se necessário

### **2. Erro de Java:**
- Instale Java JDK 11+
- Configure JAVA_HOME

### **3. Erro de Gradle:**
- Atualize Android Studio
- Sincronize projeto

### **4. Erro de Assinatura:**
- Verifique keystore
- Confirme senhas

---

## 📞 **Suporte:**

- **Android Studio:** https://developer.android.com/studio
- **Capacitor:** https://capacitorjs.com/docs
- **Cordova:** https://cordova.apache.org/docs

**Escolha o método que preferir e siga os passos!** 🚀
