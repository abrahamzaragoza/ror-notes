# frozen_string_literal: true

# 0 to 32 days: $0
# 33 to 40 days: $365 per day
# 41 to 48 days: $525 per day
# More than 48 days: $625 per day

# Just using one method
def bonus_calculator(days)
  bonus = 0
  days_worked = days
  return 'You have to work more than 32 days to obtain the bonus.' unless days > 32

  while days > 32
    case days
    when 33..40
      days_in_range = days - 32
      days -= days_in_range
      bonus += days_in_range * 365
    when 41..48
      days_in_range = days - 40
      days -= days_in_range
      bonus += days_in_range * 525
    else
      days_in_range = days - 48
      days -= days_in_range
      bonus += days_in_range * 625
    end
  end
  "The bonus obtained for working #{days_worked} days is $#{bonus}"
end

# This class calculates the bonus obtainer by an employee at the end of the quarter
class BonusCalculator
  def self.calculate_bonus(days)
    @bonus = 0
    @days = days
    @worked_days = days

    return 'You have to work more than 32 days to obtain the bonus.' unless @days > 32

    while @days > 32
      case @days
      when 33..40
        calculate_range_bonus(32, 365)
      when 41..48
        calculate_range_bonus(40, 525)
      else
        calculate_range_bonus(48, 625)
      end
    end

    "The bonus obtained for working #{@worked_days} days is $#{@bonus}"
  end

  def self.calculate_range_bonus(previous_max_limit, amount)
    days_in_range = @days - previous_max_limit
    @days -= days_in_range
    @bonus += days_in_range * amount
  end
end

p bonus_calculator(49)
p BonusCalculator.calculate_bonus(49)
p BonusCalculator.calculate_bonus(44)
