# {Style:
#   {Language:
#     {type: value}

#Reformatted to:

# {Language:
#   {type: value, style: [value(s)] } (style values are arrays)

require 'pry'

def reformat_languages(languages)
  new_hash = {}
  
  languages.each do |style, lang_data|
    lang_data.each do |lang, type_data|
      if new_hash[lang] == nil
        new_hash[lang] = type_data
        new_hash[lang][:style] = [style]
      else
        new_hash[lang][:style] << style
      end
    end
  end
  new_hash
end
