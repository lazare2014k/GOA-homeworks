#elif იმტომ ვიყენებთ რამოდენიმე if ის ნაცვლად რადგან,თუ მაგალითად age == 15 გამოიტანოს discount
#  და თუ elif==18 გამოიტანოს age accepted
age=int(input("please input your age:"))


if age >= 10:
    print("child disscount")
if age >= 64:
    print("elderly disscount")
else:
    print("regular price")
