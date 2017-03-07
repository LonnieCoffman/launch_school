# instance method: compare_secret
# -- compares @secret value from person1 to person2
# expected Output
# bool

class Person
  attr_writer :secret

  def compare_secret(other)
    other.secret == secret
  end

  protected

  attr_reader :secret
end

person1 = Person.new
person1.secret = 'Shh.. this is a secret!'

person2 = Person.new
person2.secret = 'Shh.. this is a different secret!'

p person1.compare_secret(person2)