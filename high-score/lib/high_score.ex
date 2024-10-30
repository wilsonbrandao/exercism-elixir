defmodule HighScore do
  @inital_score 0

  def new(), do: %{}

  def add_player(scores, name, score \\ @inital_score), do: Map.put(scores, name, score)

  def remove_player(scores, name), do: Map.delete(scores, name)

  def reset_score(scores, name), do: remove_player(scores, name)
    |> add_player(name)

  def update_score(scores, name, score) do
    Map.update(scores, name, score, fn val -> val + score end)
  end

  def get_players(scores), do: Map.keys(scores)
end
