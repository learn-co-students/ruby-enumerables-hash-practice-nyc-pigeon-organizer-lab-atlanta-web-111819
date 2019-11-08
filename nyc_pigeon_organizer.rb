def extract_names(data)
  data[:gender][:female] + data[:gender][:male]
end


def map_attributes_to_name(attribute_hash, name)
  attributes = []
  attribute_hash.map do |attribute, pigeons|
    attributes << attribute if pigeons.include?(name)
  end
  attributes
end

def nyc_pigeon_organizer(data)
  new_data = {}
  names = extract_names(data)
  names.map {|n| new_data[n] = {}}


  names.map do |n|
    colors = map_attributes_to_name(data[:color], n)
    stringified = colors.map {|c| c.to_s}
    new_data[n][:color] = stringified
  end

  names.map do |n|
    gender = map_attributes_to_name(data[:gender], n)
    stringified = gender.map {|g| g.to_s}
    new_data[n][:gender] = stringified
  end

  names.map do |n|
    home = map_attributes_to_name(data[:lives], n)
    new_data[n][:lives] = home
  end

  new_data
end
