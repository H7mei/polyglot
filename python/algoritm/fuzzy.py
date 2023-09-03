# src: https://www.youtube.com/watch?v=XKj8kL1t0Sc
# implementation of fuzzy logic

# 1. fuzzification    (fungsi keagotaan)
# 2. inference
# 3. defuzzification

# variabel input
tempt = 10    # (F)
could = 30    # (%)

# 1. fuzzyfikasi
# 1.1 fungsi keanggotaan suhu
if tempt <= 30:
    F = 1
    C = 0
    W = 0
    H = 0
elif tempt > 30 and tempt < 50:
    F = (50 - tempt) / (50 - 30)
    C = (tempt - 30) / (50 - 30)
    W = 0
    H = 0
elif tempt == 50:
    F = 0
    C = 1
    W = 0
    H = 0
elif tempt > 50 and tempt < 70:
    F = 0
    C = (70 - tempt) / (70 - 50)
    W = (tempt - 50) / (70 - 50)
    H = 0
elif tempt == 70:
    F = 0
    C = 0
    W = 1
    H = 0
elif tempt > 70 and tempt < 90:
    F = 0
    C = (90 - tempt) / (90 - 70)
    W = (tempt - 70) / (90 - 70)
    H = 0
elif tempt >= 90:
    F = 0
    C = 0
    W = 0
    H = 1


# 1.2 fungsi keanggotaan kelembaban
if could <= 20:
    S = 1
    P = 0
    O = 0
if could > 20 and could < 40:
    S = (40 - could) / (40 - 20)
    O = 0
if could > 20 and could < 50:
    P = (could - 20) / (50 - 20)
if could == 50:
    S = 0
    P = 1
    O = 0
if could > 50 and could < 80:
    S = 0
    P = (80 - could) / (80 - 50)
if could >= 60 and could < 80:
    S = 0
    O = (could - 60) / (80 - 60)
if could >= 80:
    S = 0
    P = 0
    O = 1


temp = [F, C, W, H]
could = [S, P, O]

# 2. inference
# slow
speed = []


def slow(t, c):
    if (t != 0):
        if (c != 0):
            output = min(t, c)
            speed.append([output, 25])


def fast(t, c):
    if (t != 0):
        if (c != 0):
            output = min(t, c)
            speed.append([output, 75])


slow(temp[0], could[0])
slow(temp[0], could[1])
slow(temp[0], could[2])
slow(temp[1], could[0])
slow(temp[1], could[1])
slow(temp[1], could[2])
fast(temp[2], could[0])
fast(temp[2], could[1])
fast(temp[2], could[2])
fast(temp[3], could[0])
fast(temp[3], could[1])
fast(temp[3], could[2])


# 3. defuzzification
# 3.1 centroid
def centroid(speed):
    numerator = 0
    denominator = 0
    for i in speed:
        numerator += i[0] * i[1]
        denominator += i[0]
    return numerator / denominator


print(centroid(speed))

# 3.2 bisector


def bisector(speed):
    numerator = 0
    denominator = 0
    for i in speed:
        numerator += i[0] * i[1]
        denominator += i[0]
    return numerator / denominator


print(bisector(speed))

# 3.3 mean of maximum


def mean_of_maximum(speed):
    maximum = 0
    for i in speed:
        if i[0] > maximum:
            maximum = i[0]
    return maximum


print(mean_of_maximum(speed))
