require 'yaml'
require 'pry'

def load_library(path)
  
  emoticons_yml = YAML.load_file(path)
  
  new_emoticons = {}
  
  new_emoticons["get_meaning"] = {}
  new_emoticons["get_emoticon"] = {}
  
  emoticons_yml.each do |meaning, emoticon|
    
    new_emoticons["get_meaning"][emoticon[1]] = meaning
    new_emoticons["get_emoticon"][emoticon[0]] = emoticon[1]

  end 
  
  new_emoticons
  
end

# binding.pry

def get_japanese_emoticon(path, emoticon)
   
  library_result = load_library(path)

  library_result["get_emoticon"].each do |key, value|
    
      if emoticon == value1
        return value1
      end
      
  end
end

def get_japanese_emoticon(file_path, english_emoticon)
  comparison_hash = load_library(file_path)
   comparison_hash[:get_emoticon].each do |english, japanese|
      if english == english_emoticon
      return japanese
   end
 end
 return "Sorry, that emoticon was not found"
end



# binding.pry

def get_english_meaning(path, emoticon)
  load_library(path)
end