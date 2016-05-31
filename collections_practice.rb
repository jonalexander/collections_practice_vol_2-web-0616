require 'Pry'

#["ruby", "rspec", "rails"]

def begins_with_r(array)
  array.all? { |word| word[0].downcase == 'r'}
end

def contain_a(array)
  array.select { |word| word.downcase.split('').include?('a') }
end

def first_wa(array)
  array.find { |word| word.slice(0,2).downcase == 'wa'}
end

def remove_non_strings(array)
  array.delete_if { |word| !(word.is_a?(String)) }
end

def count_elements(array)
  names_array = []
  names_hash = {}
  names_hash.default = 0  #sets :name & :count values to 0 upon creation

  array.each do |name|
    names_hash[name[:name]] += 1 
  end

  names_hash.each do |name, count|
    names_array << {:name => name, :count => count}
  end

  names_array
end

def merge_data(keys, data_array)
  new_array = [] 
  data_hash = data_array[0]

  keys.each do |key|
    new_hash = {:first_name => key[:first_name]}    
    new_hash.merge!(data_hash[key[:first_name]])
    new_array << new_hash
  end

  new_array
end

def find_cool(data)
  data.select { |hash| hash[:temperature] == "cool" }
end

def organize_schools(data)
  new_hash = {}

  data.each do |school, city|
    new_hash.has_key?(city[:location]) ? new_hash[city[:location]] << school : new_hash[city[:location]] = [school]
  end

  new_hash
end

