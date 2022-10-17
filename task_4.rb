#4. Заданы три числа, которые обозначают число, месяц, год (запрашиваем у пользователя).
#Найти порядковый номер даты, начиная отсчет с начала года. Учесть, что год может
#быть високосным. Алгоритм опредления високосного года: www.adm.yar.ru
print "Enter the day: "
day = gets.to_i
print "Enter the month: "
month = gets.to_i
print "Enter the year: "
year = gets.to_i

month_list = [31,28,31,30,31,30,31,31,30,31,30,31]

if year%400==0 or (year%4==0 and year%100!=0)
    month_list[1] = 29
end

sum_days = 0
month_list[0...month-1].each do |element|
    sum_days += element
end
sum_days += day
puts "Date number '#{day}-#{month}-#{year}' : #{sum_days}"