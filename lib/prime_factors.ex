defmodule PrimeFactors do
  def generate(value) do
    generate(value, 2, [])
  end

  defp generate(1, _, primes) do
    primes
  end

  defp generate(value, divisor, primes) when rem(value, divisor) == 0 do
    generate(div(value, divisor), divisor, primes ++ [divisor])
  end

  defp generate(value, divisor, primes) do
    generate(value, divisor + 1, primes)
  end
end
