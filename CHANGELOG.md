# Notas de Versão - Jogo de Damas

## Versão 1.0.0 - Lançamento Inicial

### 🎮 Descrição
Jogo de Damas clássico completo com inteligência artificial, interface intuitiva e personalização completa. Desenvolvido como Progressive Web App (PWA) para funcionar offline e ser instalável em dispositivos móveis.

---

## ✨ Funcionalidades Principais

### 🎯 Modos de Jogo
- **Jogador Local**: Duas pessoas podem jogar no mesmo dispositivo
- **Contra a Máquina**: Desafie a IA com 10 níveis de dificuldade progressiva
- Sistema de desbloqueio de níveis: Desbloqueie novos níveis conforme progride

### 🎨 Personalização
- **6 cores disponíveis** para as peças (Jatobá, Castanho, Verde, Vermelho, Preta, Imbuia)
- **5 temas de tabuleiro** diferentes:
  - Preto-Castanho
  - Preto-Branco
  - Teca-Nogueira
  - Preto-Teca
  - Teca-Carvalho
- Prévia em tempo real das customizações antes de iniciar o jogo

### 🎵 Áudio e Efeitos
- Música de fundo atmosférica
- Efeitos sonoros para:
  - Movimentos das peças
  - Capturas
  - Vitórias
  - Cliques nos botões
- Controles de volume independentes para música e efeitos
- Opção de silenciar música e/ou efeitos

### 🤖 Inteligência Artificial
- IA adaptativa com 10 níveis de dificuldade
- Algoritmo de minimax para tomada de decisões
- Estratégias avançadas que priorizam:
  - Proteção de peças
  - Formação de damas
  - Controle do centro do tabuleiro
  - Capturas obrigatórias e múltiplas

### 🎯 Regras Clássicas
- Tabuleiro 8x8 tradicional
- Capturas obrigatórias quando disponíveis
- Capturas múltiplas permitidas
- Promoção a dama ao alcançar o lado oposto
- Movimentos especiais das damas (todas as direções diagonais)
- Validação completa das regras do jogo

---

## 🆕 Melhorias e Correções Recentes

### ✅ Versão 1.0.0
- ✨ **Música de fundo inteligente**: Toca apenas quando o tabuleiro está aberto e para automaticamente ao fechar
- 🎨 **Interface otimizada**: Melhor experiência visual e responsiva
- 📱 **PWA otimizado**: Manifest.json melhorado com múltiplos tamanhos de ícones para melhor compatibilidade
- 🔧 **Correções de código**: Removida tag HTML duplicada, melhor organização do código
- 📦 **Preparado para PWA Builder**: Arquivos otimizados para geração de APK/AAB via PWA Builder
- 🎯 **Sistema de desbloqueio**: Progressão de níveis de dificuldade
- 💾 **Persistência de preferências**: Suas configurações são salvas automaticamente

---

## 🔧 Características Técnicas

### 🌐 Progressive Web App (PWA)
- Funciona **offline** após primeira visita
- Instalável em dispositivos Android, iOS e Desktop
- Service Worker para cache inteligente de recursos
- Manifest.json completo e otimizado

### 📱 Compatibilidade
- **Dispositivos**: Smartphones, Tablets, Desktop
- **Navegadores**: Chrome, Firefox, Safari, Edge (versões recentes)
- **Orientação**: Portrait (vertical) otimizada para mobile
- **Responsivo**: Adapta-se a diferentes tamanhos de tela

### 🎮 Controles
- Interface touch-friendly para dispositivos móveis
- Área de toque otimizada para acessibilidade
- Feedback visual e sonoro para todas as ações

### 📊 Recursos Adicionais
- Anúncios via Google AdMob (AD_ID)
- Política de privacidade integrada
- Tela de configurações acessível durante o jogo
- Indicador visual de turno do jogador
- Celebração com confetes ao vencer

---

## 📥 Como Usar

### Opção 1: Jogar Online
1. Acesse: `https://lucio12carvalho.github.io/Jogos/`
2. O jogo carrega automaticamente no navegador
3. Personalize cores e tema do tabuleiro
4. Escolha o modo de jogo e dificuldade
5. Clique em "Iniciar Jogo"

### Opção 2: Instalar como App
1. Acesse o site no seu dispositivo móvel
2. Quando aparecer o prompt de instalação, toque em "Instalar"
3. O app será instalado na sua tela inicial
4. Abra como um aplicativo nativo

### Opção 3: Build Android (AAB/APK)
1. Use o PWA Builder: https://www.pwabuilder.com/
2. Cole a URL do jogo
3. Gere o pacote Android (.AAB para Play Store ou .APK para instalação direta)
4. Siga as instruções em `GUIA_PWA_BUILDER.md`

---

## 🎯 Próximas Melhorias (Roadmap)

- [ ] Sistema de pontuação e ranking
- [ ] Modo multiplayer online
- [ ] Histórico de partidas
- [ ] Replay de jogadas
- [ ] Temas adicionais
- [ ] Animações mais suaves
- [ ] Modo torneio
- [ ] Estatísticas de desempenho

---

## 📝 Notas Técnicas

- **Service Worker**: Cache versionado (v5) para recursos estáticos
- **LocalStorage**: Armazenamento local de preferências e progresso
- **HTML5/CSS3/JavaScript**: Sem dependências externas
- **Áudio**: Formato MP3, carregamento sob demanda

---

## 🤝 Contribuições

Este é um projeto pessoal, mas sugestões e feedback são bem-vindos!

---

## 📄 Licença

Todos os direitos reservados © 2024

---

## 📞 Suporte

Para problemas ou dúvidas, consulte a política de privacidade ou entre em contato através do repositório.

---

**Divirta-se jogando! 🎮♟️**


