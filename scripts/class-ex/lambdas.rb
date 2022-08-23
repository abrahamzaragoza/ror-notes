# NO usar return con procs
def variable_modification
  x = 10
  modifier = Proc.new { |y| x = y }
  modifier.call(2)
  p x
end

variable_modification()

#  valor y en lambda
def self_context
  x = 10
  modifier = -> { return 2 }
  modifier.call
end

self_context()

# modulo -> clase (solo dentro del modulo)

module Example
  class ModuleClass
    def initialize
      p "Hi"
    end
  end

  def module_method
    ModuleClass.new
  end
end



# clase -> metodo protegido -> llamarlo en metodo publico (public instance methods)

class Anything
  def public_method
    protected_method
  end

  protected

  def protected_method
    puts "You can't call me from outside."
  end
end

Anything.public_instance_methods[0]
