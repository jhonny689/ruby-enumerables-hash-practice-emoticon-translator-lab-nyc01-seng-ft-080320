# require modules here

def load_library
  # code goes here
  library = {}
  emoticons = YAML.load_file('emoticons.yml')
  emoticons.each{ |emoticon|
    library[emoticon][:english] = emoticon[0]
    library[emoticon][:japanese] = emoticon[1]
  }
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end