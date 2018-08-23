def translate string
	words = string.split
	result = []
	vowels = ['a', 'e', 'i', 'o', 'u', 'y']
	consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'x', 'z']
	words.each do |word|
		if vowels.include?(word[0])
			result.push(word.to_s + 'ay')
		elsif word[0, 2] == 'qu'
			first_letters = word[0, 2]
			result.push(word.delete(first_letters) + first_letters + 'ay')
		elsif consonants.include?(word[0]) && word[1, 2] == 'qu'
			first_letters = word[0, 3]
			result.push(word.delete(first_letters) + first_letters + 'ay')
		elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
			first_letters = word[0, 3]
			result.push(word.delete(first_letters) + first_letters + 'ay')
		elsif consonants.include?(word[0]) && consonants.include?(word[1])
			first_letters = word[0, 2]
			result.push(word.delete(first_letters) + first_letters + 'ay')
		elsif consonants.include?(word[0])
			first_letter = word[0]
			result.push(word.delete(first_letter) + first_letter + 'ay')
		end
	end
	return result.join(' ')
end