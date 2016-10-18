class Response
  AFFIRMATIVE = ["yes", "yup", "ok", "sure", "yeah", "y", "lets go", "bring it"]
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
end
