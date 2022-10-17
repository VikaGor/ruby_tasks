#3. Заполнить хеш гласными буквами, где значением будет являтся порядковый номер буквы в алфавите (a - 1).
alp = "abcdefghigklmnpqrstuvwxyz".split("")
vowels = "aeiouy".split("")
hash = {}
alp.each do |item|
    if vowels.include? item
        hash[item]=alp.find_index(item)+1
    end
end
print hash