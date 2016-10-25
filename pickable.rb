module Pickable
  def pick_from_list(response:, list:)
    response = response.capitalize
    selected = list.find{ |list_item| list_item.listed_attribute == response }
    if selected
      selected
    else
      puts "#{response} isn't on this list... Read much?"
    end
  end
end
