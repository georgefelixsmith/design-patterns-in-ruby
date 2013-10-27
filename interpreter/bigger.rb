require_relative './expression'

class Bigger < Expression
  def initialize(size)
    @size = size
  end

  def evaluate(dir)
    results = []
    Find.find(dir) do |file|
      next unless File.file?(file)
      results << file if File.size(file) > @size
    end
    results
  end
end
