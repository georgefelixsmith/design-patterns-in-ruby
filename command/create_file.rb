class CreateFile < Command
  def initialize(path)
    super("Create file: #{path}")
    @path = path
  end

  def execute
    File.open(@path, 'w') do |file|
      file.write(@contents)
    end
  end

  def unexecute
    File.delete(@path)
  end
end
