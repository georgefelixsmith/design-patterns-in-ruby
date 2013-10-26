class LaptopComputerBuilder < ComputerBuilder
  def initialize
    reset
  end

  def display=(display)
    raise 'Laptops must have lcd displays' unless display == :lcd
  end

  def add_cd(writer = false)
    @computer.drives << Drive.new(:cd, 760, writer)
  end

  def add_dvd(writer = false)
    @computer.drives << Drive.new(:dvd, 4000, writer)
  end

  def add_hard_disk(size_in_mb)
    @computer.drives << Drive.new(:hard_disk, size_in_mb, true)
  end

  def reset
    @computer = LaptopComputer.new
  end
end
