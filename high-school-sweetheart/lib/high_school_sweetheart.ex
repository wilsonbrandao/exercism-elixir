defmodule HighSchoolSweetheart do
  def first_letter(name), do:
    name
    |> String.trim()
    |> String.first()

  def initial(name), do:
    name
    |> first_letter()
    |> String.capitalize()
    |> Kernel.<>(".")

  def initials(full_name) do
    [first, last | _] = String.split(full_name, " ")
    "#{initial(first)} #{initial(last)}"
  end

  def pair(full_name1, full_name2) do
    n1 = initials(full_name1)
    n2 = initials(full_name2)
    """
         ******       ******
       **      **   **      **
     **         ** **         **
    **            *            **
    **                         **
    **     #{n1}  +  #{n2}     **
     **                       **
       **                   **
         **               **
           **           **
             **       **
               **   **
                 ***
                  *
    """
  end
end
