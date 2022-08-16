# Hacer un regex que identifique/matchee un correo

my_string = <<DOC
Mi correo es pancho.lopez@udex.com enviame correo
para agendar una cita
DOC

puts my_string

REGEX = /([a-zA-Z0-9._-]+@[a-zA-Z0-9._-]+\.[a-zA-Z0-9_-]+)/

censored_string = my_string.gsub(REGEX, "email@example.com")

puts censored_string
