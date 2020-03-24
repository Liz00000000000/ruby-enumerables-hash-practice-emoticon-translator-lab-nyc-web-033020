require "yaml"
require "pry"

def load_library(file_path)
  library = YAML.load_file(file_path)
  result = {
      :get_meaning => {},
      :get_emoticon => {}
    }
 library.each do | key, value |
   result[:get_meaning] = {key => value[1]}
end
return result
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
