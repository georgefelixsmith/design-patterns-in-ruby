class CompositeCommand < Command
  def initialize
    @commands = []
  end

  def add_command(command)
    @commands << command
  end

  def execute
    @commands.each {|command| command.execute}
  end

  def description
    @commands.inject('') { |result, command| result += command.description + "\n" }
  end

  def unexecute
    @commands.reverse.each { |command| command.unexecute }
  end
end
