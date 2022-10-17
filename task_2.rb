#2. Заполнить массив числами фибоначчи до 100
arr=[0,1]
i = 2
arr.each do |item|
    item = arr[-2]+arr[-1]
    break if item>=100
    arr.push(item)
    i+=1
end
print arr