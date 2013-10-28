desc "run server in development mode"
task :default => %w{config.ru} do #  modular_application1.rb
  sh "rackup -Ilib -s thin -p 4567"
end

desc "run server in production mode"
task :production => %w{config.ru} do #  modular_application1.rb
  sh "bundle exec rackup -E production -Ilib -s thin -p 4567"
end

desc "help"
task :help do
  puts %q{
  Once you have your repository set up on GitHub, go to the "Admin" section,
  navigate to "service Hooks", and add a Post-Receive URL pointing to the 
  "/update" endpoint of your blog.

  Then:
     1.- Run "rake production"
     2.- Modify one of the articles in articles/
     3.- git ci -m 'modified article' -a
     4.- git push origin master
     5.- Visit localhost:4567/ and then the modified article in the web browser
  }
end

task :html do
  sh "kramdown README.md > README.html"
end
