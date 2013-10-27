require_relative './expression'

class FileName < Expression
  def initialize(pattern)
    @pattern = pattern
  end

  def evaluate(dir)
    results = []
    Find.find(dir) do |file|
      next unless File.file?(file)
      name = File.basename(file)
      results << file if File.fnmatch(@pattern, name)
    end
    results
  end
end
