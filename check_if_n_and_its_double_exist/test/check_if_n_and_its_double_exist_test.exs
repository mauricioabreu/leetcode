defmodule CheckIfNAndItsDoubleExistTest do
  use ExUnit.Case
  doctest CheckIfNAndItsDoubleExist

  test "example 1" do
    assert CheckIfNAndItsDoubleExist.check_if_exist([10, 2, 5, 3]) == true
  end

  test "example 2" do
    assert CheckIfNAndItsDoubleExist.check_if_exist([7, 1, 14, 11]) == true
  end

  test "example 3" do
    assert CheckIfNAndItsDoubleExist.check_if_exist([3, 1, 7, 11]) == false
  end
end
