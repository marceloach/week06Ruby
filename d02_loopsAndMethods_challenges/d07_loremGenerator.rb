=begin 
  DESAFIO: CICLOS

  INSTRUCCIONES:
  Crear un programa llamado "d07_loremGenerator.rb" en ruby que sea capaz de mostrar en pantalla varios párrafos de Lorem ipsum, donde el número de párrafos se especifica al cargar el script.
  El texto puede ser extraído del primer párrafo de lipsum.com

  Uso:
  ruby loremGenerator.rb
  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ac
  lacinia nibh, nec faucibus
  enim. Nullam quis lorem posuere, hendrerit tellus eget, tincidunt ipsum.
  Nam nulla tortor,
  elementum in elit nec, fermentum dignissim sapien. Sed a mattis nisi,
  sit amet dignissim elit.
  Sed finibus eros sit amet ipsum scelerisque interdum. Curabitur justo
  nibh, viverra a elit vel,
  elementum hendrerit erat. Duis feugiat mattis ante vel hendrerit. Etiam
  nec nibh nulla. Class
  aptent taciti sociosqu ad litora torquent per conubia nostra, per
  inceptos himenaeos.
=end

LOREM_TEXT = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consequat tempus nibh vel rutrum. Pellentesque sollicitudin, nibh ut maximus rutrum, dolor justo porta turpis, a euismod purus metus ut erat. Vestibulum interdum nunc ultrices nibh vulputate, a aliquam lectus vehicula. Mauris suscipit tincidunt consectetur. Mauris venenatis augue ut elit vulputate consectetur. Donec gravida orci id lectus porttitor euismod. Morbi venenatis lectus pharetra arcu consequat iaculis. Nam condimentum hendrerit eros, vitae rutrum velit interdum at. Vivamus tincidunt lobortis aliquet. Sed orci nibh, iaculis quis magna in, iaculis pretium nisi. Curabitur nec ipsum tempor, scelerisque tortor at, tincidunt ante. Donec vulputate molestie suscipit."

generator = 3

generator.times do
  puts LOREM_TEXT
  puts ""
end