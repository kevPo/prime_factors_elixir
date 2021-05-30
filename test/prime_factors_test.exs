defmodule PrimeFactorsTest do
  use ExUnit.Case
  doctest PrimeFactors

  test "generate returns empty for 1" do
    assert PrimeFactors.generate(1) == []
  end

  test "generate for 2 returns 2" do
    assert PrimeFactors.generate(2) == [2]
  end

  test "generate for 3 returns 3" do
    assert PrimeFactors.generate(3) == [3]
  end

  test "generate for 4 returns 2,2" do
    assert PrimeFactors.generate(4) == [2, 2]
  end

  test "generate for 6 returns 2,3" do
    assert PrimeFactors.generate(6) == [2, 3]
  end

  test "generate for 8 returns 2,2,2" do
    assert PrimeFactors.generate(8) == [2, 2, 2]
  end

  test "generate for 9 returns 3,3" do
    assert PrimeFactors.generate(9) == [3, 3]
  end
end
