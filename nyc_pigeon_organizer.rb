 pigeon_data = {
        :color => {
          :purple => ["Theo", "Peter Jr.", "Lucky"],
          :grey => ["Theo", "Peter Jr.", "Ms. K"],
          :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
          :brown => ["Queenie", "Alex"]
        },
        :gender => {
          :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
          :female => ["Queenie", "Ms. K"]
        },
        :lives => {
          "Subway" => ["Theo", "Queenie"],
          "Central Park" => ["Alex", "Ms. K", "Lucky"],
          "Library" => ["Peter Jr."],
          "City Hall" => ["Andrew"]
        }
      }




def nyc_pigeon_organizer(data)
<<<<<<< HEAD
  new_data = {}
=======
  new_data = []
>>>>>>> f2b26bca4dced9ca946b1eb3d8473f7ad1e13078
  data.reduce({}) do |memo, (key, value)|
    level = data[key]
    j = 0
    while j < key.length
      attribute = key
<<<<<<< HEAD
      attribute_value = value
=======
>>>>>>> f2b26bca4dced9ca946b1eb3d8473f7ad1e13078
      data[key].reduce({}) do |memo, (key, value)|
        i = 0 
        while i < value.size
          name = value[i]
<<<<<<< HEAD
          new_data[name] = {:color => [], :gender => [], :lives => []} unless new_data[name]
          case attribute
            when :color
              new_data[name][:color]
              new_data[name][:color] << key.to_s unless new_data[name][:color] == key
              new_data[name][:color] = new_data[name][:color].uniq
            when :gender
              new_data[name][:gender] << key.to_s unless new_data[name][:gender] == key
              new_data[name][:gender] = new_data[name][:gender].uniq
            when :lives
              new_data[name][:lives] << key.to_s unless new_data[name][:lives] == key   
              new_data[name][:lives] = new_data[name][:lives].uniq
          end
=======
          new_data << {name => {attribute => key}}
>>>>>>> f2b26bca4dced9ca946b1eb3d8473f7ad1e13078
          i += 1
        end
        j += 1
      end
    end
  end
<<<<<<< HEAD
  return new_data
=======
  # p "new data is #{new_data}"
  # p "new data class is #{new_data.class}"
  final_data = {}
  k = 0
  while k < new_data.length
    new_data[k].each_pair do |key, value|
      p "new_data[k][key] = #{new_data[k][key]}"
      new_data[k][key].each_pair do |key, value|
        p key
        p value
        if 
          unique_items[key][:count] += 1
        else
          unique_items[key] = value
          unique_items[key][:count] = 1
        end
      end
    end
    k += 1
  end
  
  #p "final data is #{final_data}"
  
  
  
>>>>>>> f2b26bca4dced9ca946b1eb3d8473f7ad1e13078
end

nyc_pigeon_organizer(pigeon_data)
