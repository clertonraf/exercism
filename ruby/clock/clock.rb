# frozen_string_literal: true

# The clock class
class Clock
  def initialize(clock)
    @hour = clock[:hour]
    @minute = clock[:minute]
  end

  def to_s
    "#{calculate_hour}:#{calculate_minute}"
  end

  def +(other)
    Clock.new(hour: @hour + other.hour, minute: @minute + other.minute)
  end

  def -(other)
    Clock.new(hour: @hour - other.hour, minute: @minute - other.minute)
  end

  def ==(other)
    to_s == other.to_s
  end

  def hour
    return 0 if @hour.nil?

    @hour
  end

  def minute
    return 0 if @minute.nil?

    @minute
  end

  private

  def format_hour_digit(hour)
    format_clock_digit(hour >= 24 ? (hour % 24) : hour)
  end

  def format_clock_digit(digit)
    return '00' if digit.nil?

    digit < 10 ? "0#{digit}" : digit.to_s
  end

  def calculate_extra_hour
    if @minute.nil?
      0
    elsif @minute == 60
      1
    else
      @minute / 60
    end
  end

  def calculate_hour
    return format_hour_digit(0 + calculate_extra_hour) if @hour.nil?

    format_hour_digit((@hour + calculate_extra_hour) % 24)
  end

  def calculate_minute
    return format_clock_digit(0) if @minute.nil?

    format_clock_digit(@minute % 60)
  end
end
