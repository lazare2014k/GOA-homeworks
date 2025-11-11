userage = int(input('enter your age'))

if userage >= 18:
    print('you can vote')
else:
    print('you are not 18 you cant vote')

userNUM = int(input('entet a number'))

if userNUM %2 == 0:
    print('number  is even')
else:
    print('number is odd')

cars =  ['mercedes', 'bmw' , 'lambo' , 'toyota' , 'tesla']
first_car= cars[0]
second_car=  cars[-1]
print(first_car )
print(second_car)
print(first_car[0])
print(second_car[0])

numlist = [1,2,3,4,5,6,7,8,9,10]
for i in numlist:
    if i % 2 ==  0:
        print(i)

