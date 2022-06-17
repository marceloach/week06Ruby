=begin 
  GUIA: ASOCIACIONES

  EJERCICIO:
  Una persona puede tener múltiples redes sociales, tienen un nombre y una edad. 
  La información de la red social se requiere saber qué tipo de red social, que puede ser Facebook, Instagram, Pinterest, Twitter o Linkedin y el usuario en la red social.
=end

class Person
  attr_accessor :name, :age, :social_media
  def initialize(name, age, social_media)
    @name = name
    @age = age
    @social_media = social_media
  end
end

class SocialMedia
  attr_accessor :type, :nameUser
  def initialize(type, nameUser)
    @type = type
    @nameUser = nameUser
  end
end

# Instancias
sm1 = SocialMedia.new(:Facebook, "lop2034")
sm2 = SocialMedia.new(:Twitter, "@lop2034")
person1 = Person.new("Fernando", 29, [sm1, sm2])

print "#{person1.name} de #{person1.age} años tiene las siguientes redes sociales:\n"
puts "#{person1.social_media[0].type}, su nombre de usuario es: #{person1.social_media[0].nameUser}."
puts "#{person1.social_media[1].type}, su nombre de usuario es: #{person1.social_media[1].nameUser}."

