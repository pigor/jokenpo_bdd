defmodule Jokenpo.Features.Judge do
  # Example using Outline format
  # use Cabbage.Feature, async: false, file: "judge_outline.feature"

  use Cabbage.Feature, async: false, file: "judge.feature"

  defgiven ~r/^que existem dois jogadores/, _, state do
    {:ok, state}
  end

  defwhen ~r/^o jogador1 jogar "(?<jogador1>\w+)"/, %{jogador1: jogador1}, state do
    {:ok, Map.merge(state, %{jogador1: jogador1})}
  end

  defand ~r/^o jogador2 jogar "(?<jogador2>\w+)"/, %{jogador2: jogador2}, state do
    {:ok, Map.merge(state, %{jogador2: jogador2})}
  end

  defthen ~r/^o vencedor será "(?<winner>\w+)"/, %{winner: winner}, state do
    assert {:ok, winner} == Jokenpo.Judge.play(state.jogador1, state.jogador2)
  end
end
