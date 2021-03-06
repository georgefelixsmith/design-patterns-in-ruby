class Computer
  attr_accessor :display, :motherboard, :drives

  def initialize(display=:crt, motherboard = Motherboard.new, drives=[])
    @display = display
    @motherboard = motherboard
    @drives = drives
  end

  def computer
    raise "Not enough memory" if @computer.motherboard.memory_size < 250 
    raise "Too many drives" if @computer.drives.size > 4
    hard_disk = @computer.drives.find {|drive| drive.type == :hard_disk} 
    raise "No hard disk." unless hard_disk
    @computer
  end
end
