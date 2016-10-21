module Response
  AFFIRMATIVE = ["yes", "yup", "ok", "sure", "yeah", "y", "lets go", "bring it",
    "fa sho"]
  NEGATIVE = ["no", "nope", "no way", "no thanks", "n", "exit", "cancel"]

  def check(response)
    if AFFIRMATIVE.include?(response.downcase)
      return "affirmative"
    elsif NEGATIVE.include?(response.downcase)
      return "negative"
    else
      return "Didn't quite get that, try '#{AFFIRMATIVE.sample}' or '#{NEGATIVE.sample}'"
    end
  end

  def check_number(response)
    if Fixnum === response.to_i
      return response.to_i
    else
      puts "Do you not know what a number is? Try again..."
    end
  end

  def pick_from_list(response:, list:)
    if list.any?{|i| i.listed_attribute == response.capitalize }
      list.select { |i| i.listed_attribute == response.capitalize }.first
    else
      puts "#{response.capitalize} isn't on this list... Read much?"
    end
  end
end
