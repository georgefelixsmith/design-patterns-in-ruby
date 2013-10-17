require 'etc'

class AccountProtectionProxy
  def initialize(real_account, owner_name)
    @subject = real_account
    @owner_name = owner_name
  end

  def method_missing(method, *args)
    check_access
    @subject.send(method, *args)
  end

  def check_access
    if Etc.getlogin != @owner_name
      raise "Illegal access! #{Etc.getlogin}"
    end
  end
end
