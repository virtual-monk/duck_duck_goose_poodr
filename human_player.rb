class HumanPlayer < Player
  include Pickable

  def chooses_goose(ducks)
    message.is_it(self)
    player = nil
    until player
      message.choose_goose(ducks)
      player = pick_from_list(list: ducks, response: gets.chomp)
    end
    goose = Racer.new(player: player)
  end

  def human?
    true
  end

  private
  def message
    GameMessage
  end
end
