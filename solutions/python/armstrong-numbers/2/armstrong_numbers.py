def is_armstrong_number(number):
    str_number = str(number)
    armstrong_exp = len(str_number)

    digit_sum = 0

    for digit in str_number:
        digit_sum += int(digit) ** armstrong_exp

    return digit_sum == number
