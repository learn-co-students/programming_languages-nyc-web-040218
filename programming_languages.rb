require 'pry'

def reformat_languages(languages)
	result = {}
	languages.each do |style, language_hash|
		language_hash.each do |language_name, info_hash|
			if not result[language_name]
				result[language_name] = {}
			end
			result[language_name][:type] = info_hash[:type]
			if result[language_name][:style]
				result[language_name][:style] << style
			else
				result[language_name][:style] = [style]
			end
		end
	end
	result
end
