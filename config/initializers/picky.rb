PICKY_PORT = case ENV['RAILS_ENV']
       when 'development'
         '9292'
       when 'production'
         '19293'
       when 'staging'
         '19294'
       else
         '19295'
       end
puts "Picky port is #{PICKY_PORT}"

BookSearch = Picky::Client.new :host => 'localhost', :port => PICKY_PORT, :path => '/books'
BorrowerSearch = Picky::Client.new :host => 'localhost', :port => PICKY_PORT, :path => '/borrowers'
