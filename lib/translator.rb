# require modules here

def load_library(path)
  # code goes here
  library = {}
  emoticons = YAML.load_file(path)
  emoticons.each{ |emoticon, translation|
    library[emoticon][:english] = translation[0]
    library[emoticon][:japanese] = translation[1]
  }
  library
end

def get_japanese_emoticon (path, western_emoticon)
  # code goes here
  library = load_library(path)
  library.each { |sign|
    if sign[:english] == western_emoticon
      return sign[:japanese]
  }
end

def get_english_meaning
  # code goes here
end