# frozen_string_literal: true

#   x_max = (vo^2 *  sin(2Θ)) / g
#   h_max = (vo^2 * sin^2(Θ)) / (2 * g)
#   1 rad = Θ / (180 / π)
# Note: String formatting was detected as an offence by rubocop.

# Class for Parabolic Motion calculations
class ParabolicMotion
  GRAVITATIONAL_ACELERATION = -9.81

  def self.javelin_throw_calculator(speed, angle)
    angle_rad = degree_to_rad(angle)
    h_max = (speed**2) * (Math.sin(angle_rad)**2) / (2 * GRAVITATIONAL_ACELERATION)
    x_max = ((speed**2) * Math.sin(2 * angle_rad)) / GRAVITATIONAL_ACELERATION
    formatted_result(h_max, x_max)
  end

  def self.degree_to_rad(degrees)
    degrees / (180 / Math::PI)
  end

  def self.formatted_result(h_max, x_max)
    format('The maximum height the javelin will reach is %<height>0.2fm and the maximum range is %<distance>0.2fm',
           height: h_max.abs.round, distance: x_max.abs.round)
  end
end

p ParabolicMotion.javelin_throw_calculator(10, 50)
p ParabolicMotion.javelin_throw_calculator(15, 53)
