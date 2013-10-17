class VirtualAccountProxy
  def initialize(&creation_block)
    @creation_block = creation_block
  end

  def method_missing(method, *args)
    subject.send(method, *args)
  end

  def subject
    @subject || @subject = @creation_block.call
  end
end
