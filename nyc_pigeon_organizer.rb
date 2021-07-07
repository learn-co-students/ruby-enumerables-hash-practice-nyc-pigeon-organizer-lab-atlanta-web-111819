def nyc_pigeon_organizer(data)
  pigeon_data = {}
  data.each {|attributes, values|
  values.each {|values, array|
    array.each{|names|
      if pigeon_data[names] == nil
        pigeon_data[names] = {}
        pigeon_data[names][attributes] = []
      else
        pigeon_data[names][attributes] = []
      end
    }
  }
    
  }
  pigeon_data.each{|names, values|
    values.each{|name_hash, array|
      data.each{|attributes, values|
        values.each{|values, array|
          array.each{|trait|
            if trait == names && name_hash == attributes
              pigeon_data[names][name_hash] << values.to_s
            end
          }
        }
      }
    }
  }
  return pigeon_data
end
