#მომხმარებელს შემოატანინეთ სახელი
#  და ასაკი, შემდეგ პრინტის დახმარებით დაწერეთ "გამარჯობა *მათი სახელი*, თქვენ ხართ *მათი ასაკი* წლის"
name = input("enter your name: ")
age = int(input("enter your age: " ))
print("hello ",name, "you are", age)
#მომხმარებელს შემოატანინეთ მშობლის და თავისი სახელი, შემდეგ პრინტში გამოიტანეთ
#  "*მათი სახელი* არის *მშობლის სახელი*ს შვილი"
name1 = input("enter your name: ")
name2 = input("enter your parents  name: ")
print(name1 , "is",name2, "child")

#მომხმარებელ შემოატანინეთ ორი რიცხვი და ამ რიცხვებს შორის ჩაატარეთ ყველა ნასწავლი მათემატიკური ოპერაცია(+,-,*,/)
num1 = int(input("enter a number: "))
num2 = int(input("enter a number: "))

print(num1+num2)
print(num1*num2)
print(num1-num2)
print(num1/num2)