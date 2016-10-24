module SerializableResponse
  AFFIRMATIVE = ["yes", "yup", "ok", "sure", "yeah", "y", "lets go", "bring it",
    "fa sho"]
  NEGATIVE = ["no", "nope", "no way", "no thanks", "n", "exit", "cancel"]

  def check(response)
    if AFFIRMATIVE.include?(response)
      return "affirmative"
    elsif NEGATIVE.include?(response)
      return "negative"
    else
      return "Didn't quite get that, try '#{AFFIRMATIVE.sample}' or '#{NEGATIVE.sample}'"
    end
  end
end
