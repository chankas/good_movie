class BasePolicy
  attr_reader :record

  def initialize record
    @record = record
  end

  def method_missing method, *args, &block
    return false if method.to_s.end_with?('?')
    
  end
end