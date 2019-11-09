# require modules here
require 'pp'
require "yaml"


def load_library(filepath)
  emoticons = YAML.load_file(filepath)
  
  emote_hash = {
    :get_meaning => {},
    :get_emoticon => {}
  }
  
  emoticons.each do |key, value|
    emote_hash[:get_meaning] = {value[1] => key}
    emote_hash[:get_emoticon] = {value[0] => value[1]}
  end
  
  emote_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

filepath = "lib/emoticons.yml"
pp load_library(filepath)