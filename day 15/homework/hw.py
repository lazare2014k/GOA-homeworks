score = int(input('ener your score:'))

if score >= 90 and score <=100:
    print('you got A')
elif score >=80 and score <= 89:
    print('you got B')
elif score  >=70 and score <=79:
    print('you got C')
elif score >=60 and score <= 69:
    print('you got D')
elif score  >=0 and score <= 59:
    print('you got F')
else:
    print('you entered wrong score')


user_num = int(input('enter  your number'))

if user_num > 0 :
    print('your number is positive')
elif user_num < 0:
    print('your number is  negative ')
else:
    print('enter a  different number!')


num1 = int(input('enter your first number'))

num2 = int(input('enter your second number'))


if num1 > num2 :
    print('first number is greater than second number')
elif num2 > num1 :
    print('second number is greater than first number')
else:
    print('numbers are same')

usernum =int(input('enter your number'))

if usernum %2 ==0 :
    print('number is even')
else:
    print('number is odd')

usertemp = int(input('enter a temperature'))

if usertemp <0 :
    print('cold')
elif usertemp <=30:
    print('normal')
elif usertemp >30:
    print('hot')
else:
    print('error4')


