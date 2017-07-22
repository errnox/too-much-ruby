class Abstraction
  attr_reader :level
  attr_writer :level

  def initialize(level=1)
    @level = level
  end

  def describe()
    "Abstraction with level #{_beautify_level}"
  end

  def _beautify_level()
    "*#{@level}*"
  end

  def augment(augmentation)
    @special_feature = augmentation
  end
end

abstraction = Abstraction.new(10)
abstraction.augment('some augmentation')
puts abstraction.describe
