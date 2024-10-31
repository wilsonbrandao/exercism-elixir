defmodule RPG.CharacterSheet do
  def welcome() do
    IO.puts("Welcome! Let's fill out your character sheet together.")
  end

  def ask_name() do
    IO.gets("What is your character's name?\n")
    |> String.replace("\n", "")
  end

  def ask_class() do
    IO.gets("What is your character's class?\n")
    |> String.replace("\n", "")
  end

  def ask_level() do
    IO.gets("What is your character's level?\n")
    |> String.replace("\n", "")
    |> String.to_integer()
  end

  def run() do
    welcome()
    name = ask_name()
    class = ask_class()
    level = ask_level()
    IO.inspect(%{
      name: name,
      level: level,
      class: class
      }, label: "Your character")
  end
end
