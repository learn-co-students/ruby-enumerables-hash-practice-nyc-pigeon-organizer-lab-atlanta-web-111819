def nyc_pigeon_organizer(data)
  list = {}
  data.each do |trait, attributes|
    attributes.each do |details, names|
      names.each do |name|
        list[name] ||= {}
        list[name][trait] ||= []
        list[name][trait] << details.to_s
      end
    end
  end
  return list
end
