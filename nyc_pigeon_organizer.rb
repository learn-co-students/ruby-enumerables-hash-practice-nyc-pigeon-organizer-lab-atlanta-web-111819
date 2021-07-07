def nyc_pigeon_organizer(data)
  new_pidg_data = {}
  
  data.each do |key_pidg, val_pidg|
    val_pidg.each do |key_pidg2, val_pidg2|
      val_pidg2.each do |name|
      new_pidg_data[name]  = {
        color: [name][:color],
        gender: [name][:gender]
        lives: [name][:lives]
      }
end
end
end
end
