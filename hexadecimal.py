# Convert base 10 to bytes of some sort (10 -> 0x0A)
def number_to_byte(number):
  used_number = int(number) % 256
  digits = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F"]
  return "0x" + digits[int(used_number / 16)] + digits[used_number % 16]

for i in range(256):
  print(number_to_byte(i))
