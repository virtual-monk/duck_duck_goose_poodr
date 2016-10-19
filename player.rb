class Player
  attr_reader :first_name

  def initialize(args)
    @first_name = args[:first_name]
    post_initialize(args)
  end

  def choose_goose(ducks)
    raise "#{self.class} needs to define choose_goose method"
  end

  def post_initialize(args)
    nil
  end
end

