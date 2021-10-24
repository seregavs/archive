import random
# from operator import itemgetter, attrgetter, methodcaller

intList = []
maxValues = 10

class Intvalue:
    def __init__(self, intval):
        self.intval = intval
        self.absval = abs(intval)
        if intval == 0:
            self.intsign = 1
        else:   
            self.intsign = abs(intval) / intval
    def __repr__(self):
        return repr((self.intval, self.absval, self.intsign))

for i in range (maxValues):
    intList.append(Intvalue(random.randint(-10000,10000)))
    print(intList[i].intval)

# descending order
sortedIntList = sorted(intList, key=lambda intval: intval.absval, reverse=True)
print('Ordered list')
for i in range (maxValues):
    print(i, sortedIntList[i].intval)

for i in range(maxValues - 2):
    sign = sortedIntList[i].intsign * sortedIntList[i+1].intsign * sortedIntList[i+2].intsign
    if sign > 0:
        print(sortedIntList[i].intval, sortedIntList[i+1].intval, sortedIntList[i+2].intval)
        break
