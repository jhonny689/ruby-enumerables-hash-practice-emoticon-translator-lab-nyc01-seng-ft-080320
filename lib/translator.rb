# require modules here
require 'yaml'
require 'pry'

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
  library.each { |meaning, translations|
    if translations[:english] == western_emoticon
      return translations[:japanese]\
    end
  }
end

def get_english_meaning (path, japanese_emoticon)
  # code goes here
  library = load_library(path)
  library.each { |meaning, translations|
    if translations[:japanese] == japanese_emoticon
      return meaning
    end
  }
end