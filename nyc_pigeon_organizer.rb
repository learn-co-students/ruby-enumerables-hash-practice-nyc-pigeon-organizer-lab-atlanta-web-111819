require 'pry'

def nyc_pigeon_organizer(data)
  #Create new hash for pigeon descriptions
  id = {}
  #We need to isolate the name of the pigeons for the key value, so we must tunnel through the hash
  #The first hash is color. Within the color hash is a list of colors
  data.each do |first, color_list|
    #Within the color list are individual hashes representing lists the first color and the names of the pigeons with that color
    color_list.each do |color, name_array|
      name_array.each do |name|
        id[name] = {:color => [], :gender => [], :lives => []}
      end
    end
  end
  #Create a variable for the attributes of the pigeosn
  pigeon_list = id.keys
  #For each color, list the names of the pigeons with corresponding color
  data[:color].each do |pigeon_color, pc_name_list|
    #Iterate through the list of names(name) for each pigeon(pigeon_name)
    pc_name_list.each do |pc_pigeon_name|
      #The next lines of code will create the keys for id (Master-Pigeon-List)
      pigeon_list.each do |pigeon|
        if pc_pigeon_name === pigeon
          id[pigeon][:color] << pigeon_color.to_s
        end

      end
#ends after first color finished
    end
#Colors finished
  end
    data[:gender].each do |genders, kind_name_list|
      kind_name_list.each do |pigeon_names|
        pigeon_list.each do |name|
          if pigeon_names === name
            id[name][:gender] << genders.to_s
          end
        end
  end
end
data[:lives].each do |hangouts, crew|
crew.each do |member|
pigeon_list.each do |name|
  if member === name
    id[name][:lives] << hangouts.to_s
  end
end

end

end
return id
end
