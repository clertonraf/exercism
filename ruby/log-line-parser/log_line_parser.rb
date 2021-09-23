class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line[@line.index(":")+1...@line.length].strip
  end

  def log_level
    @line[@line.index("[")+1, @line.index("]")-1].downcase
  end

  def reformat
    "#{self.message} (#{self.log_level})"
  end

end
