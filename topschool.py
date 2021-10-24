# В олимпиаде по информатике принимало участие N человек. Определите школы, из которых в олимпиаде принимало участие
# больше всего участников. В этой задаче необходимо считывать данные построчно, не сохраняя в памяти 
# данные обо всех участниках, а только подсчитывая число участников для каждой школы.

# Формат ввода
# Информация о результатах олимпиады записана в файле, каждая из строк которого имеет вид: фамилия имя школа балл

# Фамилия и имя — текстовые строки, не содержащие пробелов. Школа — целое число от 1 до 99. Балл — целое число от 0 до 100.

# Формат вывода
# Выведите номера этих школ в порядке возрастания.

# Пример 1
# Ввод  
# Иванов Сергей 14 56
# Сергеев Петр 23 74
# Петров Василий 3 99
# Васильев Андрей 3 56
# Андреев Роман 14 75
# Романов Иван 27 68

# Вывод
# 3 14

schoolList = []
maxPerson = 4

class School:
    def __init__(self, intval):
        self.code = intval
        self.counter = 1
    def __repr__(self):
        return repr((self.code, self.counter))
    def addPupil(self):
        self.counter = self.counter + 1

for i in range(maxPerson):
    code = int(input().split()[2])
    school = next((x for x in schoolList if x.code == code), None)
    if school == None:
        schoolList.append(School(code))
    else:
        school.addPupil()    
    
schoolList.sort(key=lambda school: school.code)    
# print(*schoolList, sep = "\n")
for school in schoolList:
    print(school.code) 
