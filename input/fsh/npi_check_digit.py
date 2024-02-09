# #!/usr/bin/env/python3
#
# import argparse
#
# def calculate_luhn_check_digit(number):
#     digits = [int(d) for d in str(number)]
#     check_sum = sum(int(d) for i, d in enumerate(reversed(digits)) for j in range(i +   1, len(digits),   2))
#     check_sum += sum(sum(divmod(int(d) *   2,   10)) for i, d in enumerate(reversed(digits)) for j in range(i, len(digits),   2))
#     check_digit = (10 - (check_sum %   10)) %   10
#     return check_digit
#
# def generate_full_number(nine_digit_number):
#     check_digit = calculate_luhn_check_digit(nine_digit_number)
#     full_number = nine_digit_number *   10 + check_digit
#     return full_number
#
# def main():
#     parser = argparse.ArgumentParser(description='Generate a full number with Luhn check digit from a  9-digit number.')
#     parser.add_argument('nine_digit_number', type=int, help='The  9-digit number to append the Luhn check digit to.')
#
#     args = parser.parse_args()
#     full_number = generate_full_number(args.nine_digit_number)
#     print(f"Full number including check digit: {full_number}")
#
# if __name__ == '__main__':
#     main()

#!/usr/bin/env python3

import argparse

def calculate_npi_check_digit(nine_digit_number):
    digits = list(str(nine_digit_number))
    # Step  1: Double alternate digits starting from the right
    doubled_digits = [str(int(digit) *  2) if i %  2 !=  0 else digit for i, digit in enumerate(digits)]
    # Convert doubled digits to integers and sum them up
    sum_doubled_digits = sum(int(digit) for digit in doubled_digits)
    # Add the unaffected digits (not doubled)
    sum_unaffected_digits = sum(int(digit) for digit in digits[1::2])
    # Add the constant  24
    total_sum = sum_doubled_digits + sum_unaffected_digits +  24
    # Step  3: Find the next higher number ending in zero and subtract the total from it
    check_digit =  10 - (total_sum %  10)
    return check_digit

def main():
    parser = argparse.ArgumentParser(description='Calculate the  10th digit for an NPI number.')
    parser.add_argument('nine_digit_number', type=int, help='The  9-digit NPI number.')

    args = parser.parse_args()
    check_digit = calculate_npi_check_digit(args.nine_digit_number)
    print(f"The  10th digit (check digit) for the NPI number {args.nine_digit_number} is: {check_digit}")

if __name__ == '__main__':
    main()
