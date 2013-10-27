require_relative './expression'

class All < Expression
  def evaluate(dir)
    results = []
    Find.find(dir) do |file|
      next unless File.file?(file)
      results << file
    end
    results
  end
end
