require 'pry'

def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |attribute, type|
    type.each do |char, names|
      names.each do |name|
        new_hash[name] ||= {}
        new_hash[name][attribute] ||= []
        new_hash[name][attribute] << char.to_s
      end
    end
  end
  new_hash
  #binding.pry
end