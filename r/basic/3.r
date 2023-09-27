# Terbagi Menjadi 3 Percabangan IF

nilai = 10

# 1. IF Tunggal

if (nilai == 10){
 print("Nilai Sama Dengan 10")
} 
  

# 2. IF Ganda

if (nilai == 10){
    print("Nilai Sama Dengan 10")
} else {
    print("Nilai Tidak Sama Dengan 10")
}

# # 3. IF Majemuk

if (nilai == 10){
    print("Nilai Sama Dengan 10")
} else if (nilai > 10){
    print("Nilai Lebih Besar Dari 10")
} else {
    print("Nilai Lebih Kecil Dari 10")
}

# Percabangan Switch

# numeric switch
# this like array index
val3 = 1
switch(  
    val3,  
    {print('1')},  
)  

# character switch
# this like array key
val4 = 'a'
switch(  
    val4,  
    'a'= print('a'), 
)

# Percabangan Ternary

xxa = 73

scrl <- ifelse(xxa > 80, "A", ifelse(xxa > 70, "B", ifelse(xxa > 60, "C", "D")))

print(scrl)