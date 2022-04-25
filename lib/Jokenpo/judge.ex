defmodule Jokenpo.Judge do
  def play(p1, p2) when p1 == p2, do: {:ok, "empate"}

  def play("pedra", "tesoura"), do: {:ok, "pedra"}

  def play("papel", "pedra"), do: {:ok, "papel"}

  def play("tesoura", "papel"), do: {:ok, "tesoura"}

  def play(_p1, p2), do: {:ok, p2}
end
