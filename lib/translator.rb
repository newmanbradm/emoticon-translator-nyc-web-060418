require "yaml"

def load_library(file)
  emoticons = YAML.load_file(file)
  library = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }
  emoticons.each do |meaning, text|
    emoticon_english = text[0]
    emoticon_japanese = text[1]
    library["get_meaning"][emoticon_japanese] = meaning
    library["get_emoticon"][emoticon_english] = emoticon_japanese
  end
  library
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end