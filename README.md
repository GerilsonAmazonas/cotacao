# cotacoes_app

projeto: Cotação Flutter

## INSTALAÇÃO

Primeiramente a aplicação Flutter foi desenvolvido em Visual Studio Code (Vs Code)

instalação obrigatória:

1. Visual Studio Code:
	- Dart (extensão)
	- Flutter (extensão)

2. Android Studio:
	- Command-line Tools
    - Android Emulator
	- no terminal do PowerShell(windows) ou terminal VS Code, digite:
		- flutter doctor --android-licenses

/////////////////////////////////////////////////////////////////////////////////////////////////////

## INSTRUÇÕES PARA COMO RODAR O APP:

através do vs code, deve seguir os seguintes passos:
- Digite: Crtl + alt + P
- Selecione a opção: Flutter: Launcher emulator
- Selecione: Android Medium Phone

Para a visualização do Celular Emulador

1. No terminal do vs code, digite:
- flutter run
- ou dê debug no vs code

para executar o app dentro do celular emulador

////////////////////////////////////////////////////////////////////////////////////////////////////

## ARQUIVOS DARTs CRIADOS ou MODIFICADOS

Para organização e minha prática, criei:

Da pasta Lib, foi criado/modificado:
1. api.dart
	- Arquivo principal para funcionar a API: https://api.exchangerate-api.com/v4/latest/USD
	- para poder funcionar as cotações em tempo real
2. boas_vindas.dart
	- A primeira tela para deixar o app com um visual mais agradável
3. cotações_screen.dart
	- Tela principal que vem após a tela de boas vindas
	onde mostra todas as moedas e seus valores
4. detalhes.dart
	- Tela que após o usuários clicar na moeda selecionada
	- exemplo:
	- moeda: USD
	- valor: 1
5. main.dart (vem pronto)
	- Arquivo principal onde faz com que rode o app através do runApp
	- colocando a tela de boas vindas como home (para ser a primeira tela do app)

pasta test:
1. api_test.dart
    - Foi criado para verificar o API retorna dados

no arquivo pubspec.yaml:
1. http: ^0.13.6
    - para funcionar o http no app

## Recursos utilizados para a produção:
	Documentação do Flutter: flutter.dev
	Pacote http: pub.dev/packages/http
	API: https://api.exchangerate-api.com/v4/latest/USD
	Cursos e vídeos