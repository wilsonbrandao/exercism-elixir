defmodule KitchenCalculator do
  def get_volume({_, volume_pair }), do: volume_pair

  def to_milliliter({:milliliter, volume_pair }), do: {:milliliter, volume_pair * 1}
  def to_milliliter({:cup, volume_pair }), do: {:milliliter ,volume_pair * 240}
  def to_milliliter({:fluid_ounce, volume_pair }), do: {:milliliter ,volume_pair * 30}
  def to_milliliter({:teaspoon, volume_pair }), do: {:milliliter ,volume_pair * 5}
  def to_milliliter({:tablespoon, volume_pair }), do: {:milliliter ,volume_pair * 15}

  def from_milliliter({:milliliter, volume_pair}, :milliliter = unit), do: {unit, volume_pair}
  def from_milliliter({:milliliter, volume_pair}, :cup = unit), do: {unit, volume_pair / 240}
  def from_milliliter({:milliliter, volume_pair}, :fluid_ounce = unit), do: {unit, volume_pair / 30}
  def from_milliliter({:milliliter, volume_pair}, :teaspoon = unit), do: {unit, volume_pair / 5}
  def from_milliliter({:milliliter, volume_pair}, :tablespoon = unit), do: {unit, volume_pair / 15}

  def convert(volume_pair, unit), do: from_milliliter(to_milliliter(volume_pair), unit)
end
