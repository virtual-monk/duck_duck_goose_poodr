class Response
  AFFIRMATIVE = ["yes", "yup", "ok", "sure", "yeah", "y", "lets go", "bring it", "fa sho"]
  NEGATIVE = ["no", "nope", "no way", "no thanks", "n", "exit", "cancel"]

  def self.check(response)
    if AFFIRMATIVE.include?(response.downcase)
      return "affirmative"
    elsif NEGATIVE.include?(response.downcase)
      return "negative"
    else
      return "Didn't quite get that, try '#{AFFIRMATIVE.sample}' or '#{NEGATIVE.sample}'"
    end
  end

  def self.pick_from_list(response:, list:)
    if list.any?{|i| i.listed_attribute == response.capitalize }
      list.select { |i| i.listed_attribute == response.capitalize }.first
    else
      puts "#{response.capitalize} isn't on this list... Read much?"
    end
  end
end
