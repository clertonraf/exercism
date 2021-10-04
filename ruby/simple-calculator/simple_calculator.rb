class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  class UnsupportedOperation < StandardError  
  end

  def self.calculate(first_operand, second_operand, operation)
    self.check_operands(first_operand, second_operand)
    if ALLOWED_OPERATIONS.include? operation
      result = case operation
        when ALLOWED_OPERATIONS[0] then first_operand + second_operand
        when ALLOWED_OPERATIONS[1]
          if second_operand != 0
            first_operand / second_operand
          else
            return "Division by zero is not allowed."
          end
        when ALLOWED_OPERATIONS[2] then first_operand * second_operand
      end 
      return "#{first_operand} #{operation} #{second_operand} = #{result}"
    else
      raise UnsupportedOperation.new("UnsupportedOperation")
    end
  end

  private

  def self.check_operands(first_operand, second_operand)
    if (!first_operand.is_a? Numeric) || (!second_operand.is_a? Numeric)
      raise ArgumentError.new("Argument is not Numeric")
    end
  end

end
