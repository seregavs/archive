# В данном списке из n ≤ 10^5 целых чисел найдите три числа,произведение которых максимально.
# Решение должно иметь сложность O(n), где n - размер списка.
# Выведите три искомых числа в любом порядке.

# Пример 1
# Ввод  
# 3 5 1 7 9 0 9 -3 10
# Вывод
# 10 9 9
import random
# intList = [1,9,-10,-20,-8, 7, 14, 0, 20, 20, -20]

intList= []
maxValues = 10
for i in range (maxValues):
    intList.append(random.randint(-20,20))
    print(intList[i])

if len(intList) < 3:
    print ('не меньше 3 чисел в списке')
    exit (0)
 
nmax1 = intList[0]
nmin1 = intList[0]
 
for n in intList:
    if n > nmax1: nmax1 = n
    if n < nmin1: nmin1 = n
 
intList.remove(nmax1)
intList.remove(nmin1)
nmax2 = intList[0]
nmin2 = intList[0]
 
for n in intList:
    if n > nmax2: nmax2 = n
    if n < nmin2: nmin2 = n
 
intList.remove(nmax2)
 
nmax3 = intList[0]
 
for n in intList:
    if n > nmax3: nmax3 = n
 
p1 = nmin1*nmin2*nmax1
p2 = nmax1*nmax2*nmax3
 
if p1 > p2:
    print ("p1 > p2", nmin1, nmin2, nmax1)
else:
    print ("!(p1 > p2)", nmax1, nmax2, nmax3)
