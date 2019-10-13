defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create_deck makes 20 cards" do
    list_length = length(Cards.create_deck)
    assert list_length == 20
  end

  test "shuffling a deck randomizes it" do
    deck = Cards.create_deck
    assert deck != Cards.shuffle(deck)
  end

  test "creating a hand returns a hand of correct size" do
    hand = Cards.create_hand(5)
    dealt_hand = elem(hand, 0)
    assert length(dealt_hand) == 5
  end
end
