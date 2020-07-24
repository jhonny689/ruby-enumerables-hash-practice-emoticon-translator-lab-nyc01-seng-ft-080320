# require modules here

def load_library
  # code goes here
  library = {}
  emoticons = YAML.load_file('emoticons.yml')
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