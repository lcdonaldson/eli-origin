defmodule Cards do
  def new_deck do
    cards = [
            "Ace", "Two", "Three", 
            "Four", "Five", "Six",
            "Seven", "Eight", "Nine",
            "Ten", "Jack", "Queen", 
            "King"
           ]

    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

    for suit <- suits, card <- cards do
      "#{card} of #{suit}"
    end

  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end

  def save(deck, filename) do
    binary = :erlang.term_to_binary(deck)
    File.write(filename, binary)
  end
end
