#1
defmodule Calculadora do

  def potencia(base, expoente) do
    :math.pow(base, expoente) |> round()
  end


  def fatorial(x) do

    x * (fatorial(x - 1))


  end
  def percentual(valor, percentual) do

    valor * (percentual / 100)

  end
end





defmodule Listas do
#2
list1 = [2, 5, 0, 88, 1];
list2 = [2, 1, 468, 46];

  def maiorValor(list) do
    maior = Enum.max(list)
    posicao = Enum.find_index(list, fn x -> x == Enum.max(list) end)
    {maior, posicao}
  end

  def uniao(list1, list2) do
    MapSet.union(MapSet.new(list1), MapSet.new(list2))
  end

  #3
  listTupla = [{"Yauo", 30}, {"Yone", 40}, {"Kayn", 13}, {"morgana", 37}, {"zoe", 17}]

  def jovenil(listTupla) do
    nome = Enum.map(listTupla, fn x -> elem(x, 0) end)
    idade = Enum.map(listTupla, fn x -> elem(x, 1) end)
    maisjovemidade = Enum.min(idade)
    maisjovemposicao = Enum.find_index(idade, fn x -> x == maisjovemidade end)
    maisjovem = Enum.at(nome, maisjovemposicao)
  end

  def maior30(listTupla) do
    Enum.filter(listTupla, fn x -> elem(x, 1) > 30 end)
    |> Enum.count()
  end

  def impar(listTupla) do
    Enum.filter(listTupla, fn x -> rem(elem(x, 1), 2) == 1 end)
  end
  #4
  def interseçao(list1, list2) do
    MapSet.intersection(MapSet.new(list1), MapSet.new(list2))
  end
end
