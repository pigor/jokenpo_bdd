Feature: Apresentar o Vencendor da Partida de Jokenpo
	Como jogadores de Jokenpo
	Nós gostaríamos de informar nossas jogadas
	Para que apresentasse a jogada vencedora

	Scenario: Papel ganha da pedra
		Given que existem dois jogadores
		When o jogador1 jogar "papel"
		And o jogador2 jogar "pedra"
		Then o vencedor será "papel"

	Scenario: Papel ganha da pedra
		Given que existem dois jogadores
		When o jogador1 jogar "pedra"
		And o jogador2 jogar "papel"
		Then o vencedor será "papel"

	Scenario: Tesoura ganha do papel
		Given que existem dois jogadores
		When o jogador1 jogar "tesoura"
		And o jogador2 jogar "papel"
		Then o vencedor será "tesoura"

	Scenario: Tesoura ganha do papel
		Given que existem dois jogadores
		When o jogador1 jogar "papel"
		And o jogador2 jogar "tesoura"
		Then o vencedor será "tesoura"

	Scenario: Pedra ganha da tesoura
		Given que existem dois jogadores
		When o jogador1 jogar "pedra"
		And o jogador2 jogar "tesoura"
		Then o vencedor será "pedra"

	Scenario: Pedra ganha da tesoura
		Given que existem dois jogadores
		When o jogador1 jogar "tesoura"
		And o jogador2 jogar "pedra"
		Then o vencedor será "pedra"

	Scenario: Empate
		Given que existem dois jogadores
		When o jogador1 jogar "papel"
		And o jogador2 jogar "papel"
		Then o vencedor será "empate"
