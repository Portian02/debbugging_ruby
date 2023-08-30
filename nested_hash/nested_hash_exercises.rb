
#_________________________________Exercise#1__________________________________
# Take languages (a nested hash) and language_name as a symbol, return the
# value for the language_name key (which will be another hash!)

# the languages hash will look something like this:
# {
#   ruby: { initial_release: 'December 25, 1996', is_beautiful?: true },
#   javascript: { initial_release: 'December 4, 1995', is_beautiful?: false }
# }
h =   {
  ruby: { initial_release: 'December 25, 1996', is_beautiful?: true },
  javascript: { initial_release: 'December 4, 1995', is_beautiful?: false }
}
def find_language_information(languages, language_name)
  languages[language_name]
end
p find_language_information(h, :ruby)
#
#
#_________________________________Exercise#2__________________________________
#
h1 =  {
  ruby: { initial_release: 'December 25, 1996' },
  javascript: { is_beautiful?: false }
}
# Take languages and add the key/value pair info_key/info_value to the nested
# hash of language_name, then return the updated languages hash
def add_information_about_language(languages, language_name, info_key, info_value)
  languages[language_name][info_key] = info_value   
  languages
end
p add_information_about_language(h1, :ruby, :is_beautiful?, "true")
#
#
#_________________________________Exercise#3__________________________________
#
# Take languages and add the key/value pair language_name/language_info_value
# to it, then return languages
key_to_add = :java
value_to_add = { is_beautiful?: false, initial_release: 'May 23, 1995' }
h2 =   {
  ruby: { is_beautiful?: true, initial_release: 'December 25, 1996' },
  javascript: { is_beautiful?: false, initial_release: 'December 4, 1995' }
}
def add_language(languages, language_name, language_info_value)
languages[language_name] = language_info_value
languages
end
p add_language(h2, key_to_add, value_to_add)
#
#
#_________________________________Exercise#4__________________________________
#
# Take languages and delete the key/value pair with key info_key from
# language_name, then return languages
h3 = {
  ruby: { is_beautiful?: true, initial_release: 'December 25, 1996' },
  javascript: { is_beautiful?: false, initial_release: 'December 4, 1995' }
}
def delete_information_about_language(languages, language_name, info_key)
  languages[language_name].delete(info_key)
  languages
end
p delete_information_about_language(h3, :ruby, :is_beautiful?)
#
#
#_________________________________Exercise#5__________________________________
#
h4=   {
  ruby: { is_beautiful?: true, initial_release: 'December 25, 1996' },
  javascript: { is_beautiful?: false, initial_release: 'December 4, 1995' }
}
def delete_language(languages, language_name)
  # Take languages and delete the language_name key/value pair, then return
  languages.delete(language_name)
  languages
end
p delete_language(h4, :ruby)
#
#
#_________________________________Exercise#6__________________________________
#
h5 =   {
  ruby: { is_beautiful?: true, initial_release: 'December 25, 1996' },
  javascript: { is_beautiful?: false, initial_release: 'December 4, 1995' },
  python: { is_beautiful?: false, initial_release: 'Feb 20, 1991' }
}
def find_beautiful_languages(languages)
  # Take languages and return a hash containing only languages which have the
  languages.select {|name, data| data[:is_beautiful?] == true}
  # key/value pair { is_beautiful?: true } listed in their information
end
p find_beautiful_languages(h5)
#
#
#_________________________________Exercise#7__________________________________
#
# Take languages (now with additional facts added to each language with the
# key :facts and value of an array of strings) and return the fact
# language_name has at fact_index of its facts array, or at index 0 if this
# argument is not given

h6 =       {
  ruby: { facts: ['was made for programmer happiness', 'its code is beautiful'],
          initial_release: 'December 25, 1996',
          is_beautiful?: true },

  javascript: { facts: ['you have to use semicolons everywhere', "its real name isn't even javascript"],
                initial_release: 'December 4, 1995',
                is_beautiful?: false }
}
def find_language_facts(languages, language_name, fact_index = 0)
 languages.dig(language_name, :facts, fact_index)

end

p find_language_facts(h6, :phyton)