=begin 
  EN CLASE: METHOD ACCESS CONTROL

  TEMAS:
    Understand the public, protected and private access control.

  NOTAS:
  Public - anyone can access (default).
  Protected - can only be called by instances of the class and its subclasses.
  Private - can only be called by instances of a class.
=end

# Clase padre
class Person
  attr_accessor :firstName, :lastName

  def full_name
    puts "#{firstName} #{lastName}"
  end

  def initial_name
    puts "#{get_initial(firstName)}. #{lastName} (#{id()})"
  end

  private
  def get_initial(name)
    name.chars.first
  end

  protected
  def id
    rand(10**10)
  end
end

# Clase hijo
class User < Person
end

# Instancias
personObj1 = Person.new
personObj1.firstName = "Arturo"
personObj1.lastName = "Prat"
personObj1.full_name
personObj1.initial_name
# personObj1.id # => protected method `id' called for #<Person:0x000001b6ea7ee260 @firstName="Marcelo", @lastName="Castro"> (NoMethodError) 
# personObj1.get_initial # => private method `get_initial' called for #<Person:0x0000027cf8706cd8 @firstName="Marcelo", @lastName="Castro"> (NoMethodError)

userObj1 = User.new
userObj1.firstName = "Diego"
userObj1.lastName = "Portales"
userObj1.full_name
userObj1.initial_name
# userObj1.id # => protected method `id' called for #<User:0x0000022528ceeb28 @firstName="Alejandro", @lastName="Huerta"> (NoMethodError)
# userObj1.get_initial # => private method `get_initial' called for #<User:0x0000023ee2cd0118 @firstName="Alejandro", @lastName="Huerta"> (NoMethodError)