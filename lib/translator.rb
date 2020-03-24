require "yaml"
require "pry"

def load_library(file_path)
  library = YAML.load_file(file_path)
  result = {
      :get_meaning => { },
      :get_emoticon => { }
    }
 library.each do | key, value |
   result[:get_meaning][value[1]] = key
   result[:get_emoticon][value[0]] = value[1]
 end
   #binding.pry
result
end


def get_japanese_emoticon(file_path, emoticon)
  data = load_library(file_path)
  return data[:get_emoticon][emoticon]
  if return == nil
    puts "Sorry, that emoticon was not found"
  end
end

def get_english_meaning
  # code goes here
end
