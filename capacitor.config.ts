import { CapacitorConfig } from '@capacitor/cli';

const config: CapacitorConfig = {
  appId: 'com.lucio12carvalho.damas',
  appName: 'Jogo de Damas - Clássico',
  webDir: '.',
  server: {
    androidScheme: 'https'
  },
  plugins: {
    SplashScreen: {
      launchShowDuration: 2000,
      backgroundColor: "#8B2500",
      showSpinner: false
    }
  }
};

export default config;
