defmodule FreelancerRates do
  def daily_rate(hourly_rate), do: 8 * hourly_rate / 1

  def apply_discount(before_discount, discount) do
    before_discount - (before_discount * (discount / 100))
  end

  def monthly_rate(hourly_rate, discount) do
    monthly = daily_rate(hourly_rate) * 22
    discount_applied = apply_discount(monthly, discount)
    trunc(Float.ceil(discount_applied))
  end

  def days_in_budget(budget, hourly_rate, discount) do
    daily_rate =  daily_rate(hourly_rate)
    daily_rate_discount_applied = apply_discount(daily_rate, discount)
    Float.floor(budget / daily_rate_discount_applied, 1)
    end
end
