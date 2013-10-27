desc "run server in development mode"
task :default => %w{config.ru} do #  modular_application1.rb
  sh "rackup -Ilib -s thin -p 4567"
end

desc "run server in production mode"
task :production => %w{config.ru} do #  modular_application1.rb
  sh "rackup -E production -Ilib -s thin -p 4567"
end

desc "help"
task :help do
  puts %q{
     1.- Modify one of the articles in articles/
     2.- git ci -m 'modified article' -a
     3.- git push origin master
     4.- Visit localhost:4567/ and then the modified article in the web browser
  }
end
