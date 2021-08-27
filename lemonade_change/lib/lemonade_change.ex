defmodule LemonadeChange do
  def enough_change?(bills) do
    enough_change?(bills, 0, 0)
  end

  def enough_change?(_bills, five_bills, _ten_bills) when five_bills < 0 do
    false
  end

  def enough_change?([], _five_bills, _ten_bills) do
    true
  end

  def enough_change?([5 | bills], five_bills, ten_bills) do
    enough_change?(bills, five_bills + 1, ten_bills)
  end

  def enough_change?([10 | bills], five_bills, ten_bills) do
    enough_change?(bills, five_bills - 1 , ten_bills + 1)
  end

  def enough_change?([20 | bills], five_bills, 0) do
    enough_change?(bills, five_bills - 3 , 0)
  end

  def enough_change?([20 | bills], five_bills, ten_bills) do
    enough_change?(bills, five_bills - 1 , ten_bills - 1)
  end
end
