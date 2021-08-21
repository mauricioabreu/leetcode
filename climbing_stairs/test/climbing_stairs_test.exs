defmodule ClimbingStairsTest do
  use ExUnit.Case
  doctest ClimbingStairs

  test "with 1 steps" do
    assert ClimbingStairs.climb_stairs(1) == 1
  end

  test "with 2 steps" do
    # 1 step + 1 step
    # 2 steps
    assert ClimbingStairs.climb_stairs(2) == 2
  end

  test "with 3 steps" do
    # 1 step + 1 step + 1 step
    # 2 steps + 1 step
    # 1 step + 2 steps
    assert ClimbingStairs.climb_stairs(3) == 3
  end

  test "with 4 steps" do
    # 1 step + 1 step + 1 step + 1 step
    # 2 steps + 2 steps
    # 1 step + 1 step + 2 steps
    # 1 step + 2 steps + 1 step
    # 2 steps + 1 step + 1 step
    assert ClimbingStairs.climb_stairs(4) == 5
  end

  test "with 5 steps" do
    # 1 step + 1 step + 1 step + 1 step + 1 step
    # 2 steps + 2 steps + 1 step
    # 2 steps + 1 step + 2 steps
    # 1 step + 2 steps + 2 steps
    # 1 step + 1 step + 1 step + 2 steps
    # 1 step + 1 step + 2 steps + 1 step
    # 1 step + 2 steps + 1 step + 1 step
    # 2 steps + 1 step + 1 step + 1 step
    assert ClimbingStairs.climb_stairs(5) == 8
  end

  test "with 44 steps (performance check)" do
    assert ClimbingStairs.climb_stairs(44) == 1134903170
  end
end
