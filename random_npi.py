#  Enter a number up to 9 characters and return a 10 digit number with a luhn check digit as the
# 10th digit
# This is created to assist IG authors in creating a 10 digit NPI number that will pass the US Core checks
# requires luhncheck module. Install with pip3 install luhncheck
# Vallid NPI: 1982947230
# Author: @ekivemark, OnyxHealth.io

import random
import argparse
# from luhncheck import is_luhn

def generate_random_9_digit_number():
    """Generate a random 9-digit number."""
    return random.randint(100000000, 999999999)


def calculate_npi_check_digit(npi):
    # Ensure the NPI is a string and convert it to a list of integers
    npi = list(map(int, str(npi)))
    length = len(npi)

    # Step  1: Double every second digit from the right, starting with the second-to-last digit
    for i in range(-2, -(length +  1), -2):
        npi[i] *=  2
        if npi[i] >=  10:
            npi[i] -=  9  # If the result is  2-digits, subtract  9 (e.g.,  16 becomes  7)

    # Step  2: Sum the digits
    total = sum(npi)

    # Step  3: Add  24 if it's a  10-position NPI
    if length ==  10:
        total +=  24

    # Step  4: Take the unit digit
    unit_digit = total %  10

    # Step  5: Subtract the unit digit from  10 if it's not zero
    check_digit =  10 - unit_digit if unit_digit !=  0 else  0

    # Step  6: Return the check digit
    return check_digit


def my_luhn_calculator(number):
    """Calculate luhn check using NPI Validation logic. Version 2 based on NPI processing
    https://www.eclaims.com/articles/how-to-calculate-the-npi-check-digit
    """
    digits = [int(d) for d in str(number)[:9]][::-1]  # Starting from the right - so we reverse the digits
    print(f"{digits}")
    checksum = 0
    for index, i in enumerate(digits):
        if index % 2 == 0: # even item
            if i * 2 > 9:
                result = ((i * 2) - 9)
                # print(f"Even entry after subtracting 9:{i} => {result}")
                checksum += result
            else:
                result = (i * 2)
                # print(f"Even Entry:{i} => {result}")
                checksum += result
        else:  # odd item
            # print(f"Odd Entry {i}")
            checksum += i

    check_digit = (10 - ((checksum + 24) % 10) % 10) # Add 24 to account for 80840 standard prefix
    if check_digit == 10:
        check_digit = 0
    print(f"Check Digit:{check_digit}")
    return check_digit


# def my_luhn_calculator(number):
#     """Calculate luhn check using NPI Validation logic."""
#     digits = [int(d) for d in str(number)]
#     checksum = 0
#     for index, i in enumerate(digits):
#         if index % 2 == 0: # even item
#             if i * 2 > 9:
#                 result = ((i * 2) - 9)
#                 # print(f"Even entry after subtracting 9:{i} => {result}")
#                 checksum += result
#             else:
#                 result = (i * 2)
#                 # print(f"Even Entry:{i} => {result}")
#                 checksum += result
#         else:  # odd item
#             # print(f"Odd Entry {i}")
#             checksum += i
#
#     check_digit = (10 - (checksum % 10) % 10)
#     # print(f"Check Digit:{check_digit}")
#     return check_digit


def generate_10_digit_number(number=None, alternate=False):
    """Generate a 10-digit number by appending the Luhn check digit to a 9-digit number."""
    if number is None:
        number = generate_random_9_digit_number()
    else:
        # Ensure the number is exactly 9 characters long by adding zeros to the front if necessary
        number = str(number).zfill(9)
    if alternate:
        check_digit = calculate_npi_check_digit(number)
    else:
        # check_digit = luhn_algorithm(number)
        check_digit = my_luhn_calculator(number)
    # Format the 10-digit number as a 10-digit number
    formatted_number = f'{int(str(number)[:9] + str(check_digit)):010d}'
    return formatted_number


# Set up command-line argument parsing
parser = argparse.ArgumentParser(description='Generate a 10-digit number with Luhn check digit.')
parser.add_argument('--number', type=int, help='Optional 9-digit number. If not provided, a random number will be generated.')
args = parser.parse_args()

# Generate and print the 10-digit number
ten_digit_number = generate_10_digit_number(args.number)
print(f"Generated 10-digit number: \n{ten_digit_number}")
# print(f"Luhn Validation: {is_luhn(ten_digit_number)}")
# alternate_ten_digit_number = generate_10_digit_number(args.number, True)
# print(f"Alternate Generated 10-digit number: \n{alternate_ten_digit_number}")
# print(f"Luhn Validation: {is_luhn(alternate_ten_digit_number)}")
