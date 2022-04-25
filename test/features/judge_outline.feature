	Feature: Apresentar o Vencendor da Partida de Jokenpo

  Como jogadores de Jokenpo
	Nós gostaríamos de informar nossas jogadas
	Para que apresentasse a jogada vencedora

  Scenario Outline: Jokenpo
		Given que existem dois jogadores
		When o jogador1 jogar "<jogador1>"
		And o jogador2 jogar "<jogador2>"
		Then o vencedor será "<winner>"

		Examples:
			| jogador1			| jogador2			| winner	|
			| papel		|	pedra		|	papel		|
			| papel		| tesoura	|	tesoura	|
			|	pedra		|	papel		| papel		|
			| pedra		| tesoura	|	pedra		|
			| tesoura	|	papel		|	tesoura	|
			| tesoura	|	pedra		|	pedra		|
			| papel		|	papel		|	empate	|
			| pedra		|	pedra		| empate	|
			| tesoura	|	tesoura	|	empate	|
