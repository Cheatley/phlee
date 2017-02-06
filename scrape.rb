require 'mechanize'

mechanize = Mechanize.new

page = mechanize.get('http://joannamr.pythonanywhere.com/poetry_generator/')

form = page.forms.first

form['A really short poem about nothing.'] = 'passport'

page = form.submit

page.search('#body').each do |b|
  puts b.text.strip
end