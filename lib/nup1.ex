defmodule Calculadora do
  require Integer

  def potencia(_, 0), do: 1
  def potencia(n, p) when Integer.is_odd(p), do: n * potencia(n, p - 1)

  def potencia(n, p) do
    result = potencia(n, div(p, 2))
    result * result
  end

end
