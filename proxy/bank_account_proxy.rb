class BankAccountProxy
  def initialize(real_object)
    @real_object = real_object
  end

  def method_missing(method, *args)
    @real_object.send(method, *args)
  end
end
