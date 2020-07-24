# require modules here
library = {}
def load_library(path)
  # code goes here
  emoticons = YAML.load_file(path)
  emoticons.each{ |emoticon, translation|
    library[emoticon][:english] = translation[0]
    library[emoticon][:japanese] = translation[1]
  }
  library
end

def get_japanese_emoticon (western_emoticon)
  # code goes here
  
end

def get_english_meaning
  # code goes here
end