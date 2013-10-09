require 'fileutils'

class CopyFile < Command
  def initialize(source, target)
    super("Copy file: #{source} to #{target}")
    @source = source
    @target = target
  end

  def execute
    if File.exists?(@source)
      @contents = File.read(@source)
    end
    FileUtils.copy(@source, @target)
  end

  def unexecute
    File.delete(@target)
  end
end
