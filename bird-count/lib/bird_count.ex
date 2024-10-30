defmodule BirdCount do
  def today([]), do: nil
  def today([today | _ ]), do: today

  def increment_day_count([]), do: [1]
  def increment_day_count([today | tail ]), do: [today + 1 | tail]

  def has_day_without_birds?([]), do: false
  def has_day_without_birds?([ 0 | _ ]), do: true
  def has_day_without_birds?([ _ | tail ]), do: has_day_without_birds?(tail)

  def total([]), do: 0
  def total([head | tail]), do: head + total(tail)

  def busy_days([]), do: 0
  def busy_days([h | t]) when h >= 5, do: 1 + busy_days(t)
  def busy_days([_ | t]), do: busy_days(t)

end
