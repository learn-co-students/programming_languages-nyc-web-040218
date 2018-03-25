
def reformat_languages(languages)
  # your code here
  results_hash = {}
    languages.each do |language_type, language_hash|
      language_hash.each do |language_name, type_hash|
        type_hash.each do |type_key, type_value|
          if !results_hash[language_name]
            results_hash[language_name] = {type_key => type_value, :style => [language_type]}
          else
            results_hash[language_name][:style] << language_type
          end
        end
      end
    end
  results_hash
end