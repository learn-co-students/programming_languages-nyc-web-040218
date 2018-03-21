require 'pry'

def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, languages|
    languages.each do |language, type|
      unless new_hash.include?(language)
        new_hash[language] = type
      end
      if new_hash[language][:style] == nil
        new_hash[language][:style] = []
        new_hash[language][:style] << style
      else
        new_hash[language][:style] << style
      end
    end
  end
  new_hash
end
