class PhoneNumber:
    def __init__(self, number):
        self._check_number(number)

    def pretty(self):
        return f"({self.area_code})-{self.exchange_code}-{self.sufix}"
    
    def _check_number(self, number):
        number_no_format = ''.join(digit for digit in number if digit.isalnum())
        number_no_format_len = len(number_no_format)
        if number_no_format_len < 10 or number_no_format_len > 11:
            raise ValueError("Num of digits invalid")
        self.country_code = number_no_format[0] if number_no_format_len == 11 else '1'
        self.area_code = number_no_format[:3] if number_no_format_len == 10 else number_no_format[1:4]
        self.exchange_code = number_no_format[3:6] if number_no_format_len == 10 else number_no_format[4:7]
        self.sufix = number_no_format[6:] if number_no_format_len == 10 else number_no_format[7:]
        if self.area_code[0] == '0' or self.area_code[0] == '1' or self.exchange_code[0] == '0' or self.exchange_code[0] == '1' or self.country_code[0] != '1':
            raise ValueError("Num of digits invalid")
        result = number_no_format if number_no_format_len == 10  else number_no_format[1:]
        self.number = result
