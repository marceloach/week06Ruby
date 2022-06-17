=begin 
  GUIA: MUTABILIDAD

  EJERCICIO:
  Suponga que se tienen canastas, cada canasta se compone de cierta cantidad de frutas, velas aromáticas y/o tarjetas. 
  Se pide crear la clase 'Basket' que reciba las cantidades de cada elemento. 
  Un método que suma la cantidad de elementos por separado y devuelva la cuenta total. 
  Se pide, además, agregar el método + para poder juntar una canasta con otra, este método debe devolver una canasta nueva con la suma de cada elemento por separado.
=end

class Basket
  attr_accessor :fruits, :candles, :cards

  def initialize(fruits, candles, cards)
    @fruits = fruits
    @candles = candles
    @cards = cards
  end

  def +(other_basket)
    Basket.new(
      @fruits + other_basket.fruits,
      @candles + other_basket.candles,
      @cards + other_basket.cards
    )
  end

  def totalElements
    @fruits + @candles + @cards
  end
end

basketMergeObj = Basket.new(2,1,3) + Basket.new(5,2,3)
puts basketMergeObj.totalElements