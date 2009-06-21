module ProgressColor
  def self.at(percentage)
    percentage = [0, [percentage, 1].min].max
    values = 
      if percentage <= 0.5
        [255, 255 * percentage * 2, 0]
      else
        [255 * (1 - percentage) * 2, 255, 0]
      end
    '%02X' * 3 % values.map { |value| value.round }
  end
end
