module CheckableNumber
  def check_number(response)
    answer = response.to_i
    if answer > 0 || response == "0"
      return answer
    else
      puts "Do you not know what a number is? Try again..."
    end
  end
end
