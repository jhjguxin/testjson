# encoding: UTF-8
class GxPush
  def initialize(attributes = {})
    attributes.each do |k,v|
      instance_variable_set("@#{k.to_s}", v)
    end
  end
end
