require "yaml"
require "pry"

def load_library(file_path)
  library = YAML.load_file(file_path)
  result = {
      :get_meaning => { },
      :get_emoticon => { }
    }
 library.each do | key, value |
   p result[:get_meaning] = {value[1] => key}
   #result[:get_emoticon] = {value[0] => key}
 end
   #binding.pry
return result
end

load_library("emoticons.yml")

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
