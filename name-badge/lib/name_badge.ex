defmodule NameBadge do
  def print(id, name, department) do
    badge_label = if id, do:  "[#{id}] - ", else: ""
    badge_label = badge_label <> "#{name} - "
    badge_label = badge_label <>
      if department do
        "#{String.upcase(department)}"
      else
        "OWNER"
      end
    badge_label
  end
end
