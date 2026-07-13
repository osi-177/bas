#!/usr/bin/env python3
import random
import string
from colorama import init, Fore
import os
import platform



# دالة مسح الشاشة متوافقة مع جميع أنظمة التشغيل
def clear_screen():
    if platform.system() == "Windows":
        os.system('cls')
    else:
        os.system('clear')

# مسح الشاشة عند بدء التشغيل
clear_screen()


init(autoreset=True)

def pop():
    if chc.isdigit() and int(chc) == 00:
        clear_screen()
        print(logo)
        g() 


# الشعار
logo = f"""
"""
print(logo)





# القائمة الرئيسية
def g():
	print(Fore.RED+"["+Fore.WHITE+"1"+Fore.RED+"]"+Fore.RED+"Large and small characters, codes and numbers")
	print(Fore.RED+"["+Fore.WHITE+"2"+Fore.RED+"]" +Fore.RED+"Large characters, codes and numbers")
	print(Fore.RED+"["+Fore.WHITE+"3"+Fore.RED+"]"+Fore.RED+"small characters, codes and numbers")
	print("=" *28)
	print(Fore.RED+"["+Fore.WHITE+"4"+Fore.RED+"]"+Fore.RED+"Large and small characters, codes")
	print(Fore.RED+"["+Fore.WHITE+"5"+Fore.RED+"]"+Fore.RED+"Large characters, codes")
	print(Fore.RED+"["+Fore.WHITE+"6"+Fore.RED+"]"+Fore.RED+"small characters, codes")
	print("="*28)
	print(Fore.RED+"["+Fore.WHITE+"7"+Fore.RED+"]"+Fore.RED+"Large and small characters, numbers")
	print(Fore.RED+"["+Fore.WHITE+"8"+Fore.RED+"]"+Fore.RED+"Large characters, numbers")
	print(Fore.RED+"["+Fore.WHITE+"9"+Fore.RED+"]"+Fore.RED+"small characters, numbers")
	print("=" *28)
	print(Fore.RED+"["+Fore.WHITE+"10"+Fore.RED+"]"+Fore.RED+"Only numbers")
	print(Fore.RED+"["+Fore.WHITE+"11"+Fore.RED+"]"+Fore.RED+"Only large characters")
	print(Fore.RED+"["+Fore.WHITE+"12"+Fore.RED+"]"+Fore.RED+"Only small characters")
	print(Fore.RED+"["+Fore.WHITE+"13"+Fore.RED+"]"+Fore.RED+"Large and small characters only")
	print("=" *28)

	print("\nThe menu > [99]")

g()





#صانع الباسورد
def generate_passwords(count, length, use_lower, use_upper, use_digits, use_symbols, filename="bas.txt"):
    chars = ""
    if use_lower:
        chars += string.ascii_lowercase
    if use_upper:
        chars += string.ascii_uppercase
    if use_digits:
        chars += string.digits
    if use_symbols:
        chars += "!@#$%^&*"

    with open(filename, "w") as f:
        for _ in range(count):
            password = ''.join(random.SystemRandom().choice(chars) for _ in range(length))
            f.write(password + "\n")





#الكاشير
while True:
    chc = input(" \nWhere you want to go: ")
    


    clear_screen()
#زر الخروج
    if chc.isdigit() and int(chc) == 0:
    	clear_screen()
    	break


   

    
    elif chc.isdigit() and int(chc) == 1 :#الوجبه الاوله
        
        print(logo)
        print("Small and large characters, numbers and codes\n")
        x = int(input("How much you want quantity:"))
        pop() 
        clear_screen()
        print(logo)
        print("Small and large characters, numbers and codes\n")
        y = int(input("Password length📏:"))
        clear_screen()
        print(logo)
        print("Small and large characters, numbers and codes\n")
        filename = input(Fore.MAGENTA+"File name❔: ")  # 🔹 سؤال عن اسم الملف
        clear_screen()
        print(logo)
        print(Fore.GREEN+"Small and large characters, numbers and codes\n")
        generate_passwords(x, y, True, True, True, True, filename)
        g()
        pop() 

    
    elif chc.isdigit() and int(chc) == 2:#الوجبه الثانيه
        clear_screen()
        print(logo)
        print("large characters, numbers and codes\n")
        x = int(input("How much you want quantity:"))
        clear_screen()
        print(logo)
        print("large characters, numbers and codes\n")
        
        y = int(input("Password length📏:"))
        clear_screen()
        print(logo)
        print("large characters, numbers and codes\n")
        filename = input(Fore.MAGENTA+"File name❔: ")# 🔹 سؤال عن اسم الملف
        clear_screen()
        print(logo)
        print(Fore.GREEN+"large characters, numbers and codes\n")
        generate_passwords(x, y, False, True, True, True, filename)
        g()

    
    elif chc.isdigit() and int(chc) == 3:#الوجبه الثالثه
        clear_screen()
        print(logo)
        print("Small characters, numbers and codes\n")
        x = int(input("How much you want quantity:"))
        clear_screen()
        print(logo)
        print("Small characters, numbers and codes\n")
        y = int(input("Password length📏:"))
        clear_screen()
        print(logo)
        print("Small characters, numbers and codes\n")
        filename = input(Fore.MAGENTA+"File name❔: ")# 🔹 سؤال عن اسم الملف
        clear_screen()
        print(logo)
        print("Small characters, numbers and codes\n")
        generate_passwords(x, y, True, False, True, True, filename)
        g()

    
    
    elif chc.isdigit() and int(chc) == 4:#الوجبه الرابعه
        clear_screen()
        print(logo)
        print("Large and small characters and codes\n")
        x = int(input("How much you want quantity:"))
        clear_screen()
        print(logo)
        print("Large and small characters and codes\n")
        y = int(input("Password length📏:"))
        clear_screen()
        print(logo)
        print("Large and small characters and codes\n")
        filename = input(Fore.MAGENTA+"File name❔: ")# 🔹 سؤال عن اسم الملف
        clear_screen()
        print(logo)
        print(Fore.GREEN+"Large and small characters and codes\n")
        generate_passwords(x, y, True, True, False, True, filename)
        g()

    
    
    elif chc.isdigit() and int(chc) == 5:#الوجبه الخامسه
        clear_screen()
        print(logo)
        print("large characters, codes\n")
        x = int(input("How much you want quantity:"))
        clear_screen()
        print(logo)
        print("large characters, codes\n")
        y = int(input("Password length📏:"))
        clear_screen()
        print(logo)
        print("large characters, codes\n")
        filename = input(Fore.MAGENTA+"File name❔: ")# 🔹 سؤال عن اسم الملف
        clear_screen()
        print(logo)
        print(Fore.GREEN+"large characters, codes\n")
        generate_passwords(x, y, False, True, False, True, filename)
        g()

    
    
    elif chc.isdigit() and int(chc) == 6:
        clear_screen()
        print(logo)
        print("Small characters,codes\n")
        clear_screen()
        print(logo)
        print("Small characters,codes\n")
        x = int(input("How much you want quantity:"))
        clear_screen()
        print(logo)
        print("Small characters,codes\n")
        y = int(input("Password length📏:"))
        clear_screen()
        print(logo)
        print("Small characters,codes\n")
        filename = input(Fore.MAGENTA+"File name❔: ")# 🔹 سؤال عن اسم الملف
        clear_screen()
        print(logo)
        print("Small characters,codes\n")
        generate_passwords(x, y, True, False, False, True, filename)
        g()

    
    
    elif chc.isdigit() and int(chc) == 7:
        clear_screen()
        print(logo)
        print("Small and large characters, numbers\n")
        x = int(input("How much you want quantity:"))
        clear_screen()
        print(logo)
        print("Small and large characters, numbers\n")
        y = int(input("Password length📏:"))
        clear_screen()
        print(logo)
        print("Small and large characters, numbers\n")
        filename = input(Fore.MAGENTA+"File name❔: ")# 🔹 سؤال عن اسم الملف
        clear_screen()
        print(logo)
        print("Small and large characters, numbers\n")
        generate_passwords(x, y, True, True, True, False, filename)
        g()
    
    
    
    elif chc.isdigit() and int(chc) == 8:
        clear_screen()
        print(logo)
        print("large characters, numbers\n")
        x = int(input("How much you want quantity:"))
        clear_screen()
        print(logo)
        print("large characters, numbers\n")
        y = int(input("Password length📏:"))
        clear_screen()
        print(logo)
        print("large characters, numbers\n")
        filename = input(Fore.MAGENTA+"File name❔: ")# 🔹 سؤال عن اسم الملف
        clear_screen()
        print(logo)
        print(Fore.GREEN+"large characters, numbers\n")
        generate_passwords(x, y, False, True, True, False, filename)
        g()

    
    
    elif chc.isdigit() and int(chc) == 9:
        clear_screen()
        print(logo)
        print("Small characters, numbers\n")
        x = int(input("How much you want quantity:"))
        clear_screen()
        print(logo)
        print("Small characters, numbers\n")
        y = int(input("Password length📏:"))
        clear_screen()
        print(logo)
        print("Small characters, numbers\n")
        filename = input(Fore.MAGENTA+"File name❔: ")# 🔹 سؤال عن اسم الملف
        clear_screen()
        print(logo)
        print("Small characters, numbers\n")
        generate_passwords(x, y, True, True, True, False, filename)
        g()
    
    
    
    
    elif chc.isdigit() and int(chc) == 10:
        clear_screen()
        print(logo)
        print("Only numbers\n")
        x = int(input("How much you want quantity:"))
        clear_screen()
        print(logo)
        print("Small characters, numbers\n")
        y = int(input("Password length📏:"))
        clear_screen()
        print(logo)
        print("Small characters, numbers\n")
        filename = input(Fore.MAGENTA+"File name❔: ")# 🔹 سؤال عن اسم الملف
        clear_screen()
        print(logo)
        print("Small characters, numbers\n")
        generate_passwords(x, y, False, False, True, False, filename)
        g()
    
    
    
    
    elif chc.isdigit() and int(chc) == 11:
        clear_screen()
        print(logo)
        print(Fore.GREEN+"Only large characters\n")
        x = int(input("How much you want quantity:"))
        clear_screen()
        print(logo)
        print(Fore.GREEN+"Small characters, numbers\n")
        y = int(input("Password length📏:"))
        clear_screen()
        print(logo)
        print(Fore.GREEN+"Small characters, numbers\n")
        filename = input(Fore.MAGENTA+"File name❔: ")# 🔹 سؤال عن اسم الملف
        clear_screen()
        print(logo)
        print(Fore.GREEN+"Small characters, numbers\n")
        generate_passwords(x, y, False, True, False, False, filename)
        g()
    
    
    
    elif chc.isdigit() and int(chc) == 12:
        clear_screen()
        print(logo)
        print(Fore.GREEN+"Only small characters\n")
        x = int(input("How much you want quantity:"))
        clear_screen()
        print(logo)
        print(Fore.GREEN+"Small characters, numbers\n")
        y = int(input("Password length📏:"))
        clear_screen()
        print(logo)
        print(Fore.GREEN+"Small characters, numbers\n")
        filename = input(Fore.MAGENTA+"File name❔: ")# 🔹 سؤال عن اسم الملف
        clear_screen()
        print(logo)
        print(Fore.GREEN+"Small characters, numbers\n")
        generate_passwords(x, y, True, False, False, False, filename)
        g()
        
    
    elif chc.isdigit() and int(chc) == 13:
        clear_screen()
        print(logo)
        print(Fore.GREEN+"Large and small characters only\n")
        x = int(input("How much you want quantity:"))
        clear_screen()
        print(logo)
        print(Fore.GREEN+"Small characters, numbers\n")
        y = int(input("Password length📏:"))
        clear_screen()
        print(logo)
        print(Fore.GREEN+"Small characters, numbers\n")
        filename = input(Fore.MAGENTA+"File name❔: ")# 🔹 سؤال عن اسم الملف
        clear_screen()
        print(logo)
        print(Fore.GREEN+"Small characters, numbers\n")
        generate_passwords(x, y, True, True, False, False, filename)
        g()
        
        
   
    elif chc.isdigit() and int(chc) >= 11 :
        print(logo)
        g()
        print("!") 