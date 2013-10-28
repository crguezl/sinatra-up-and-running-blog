Sinatra Up And Running. Chapter 5. Your Own Blog Engine 
======================

* Modifications of the one in
https://github.com/markzero/Sinatra-Up-And-Running-Practice  by
markzero (Marko Jakic)

* Once you have your repository set up on GitHub, go to the "Admin" section,
  navigate to "service Hooks", and add a Post-Receive URL pointing to the 
  "/update" endpoint of your blog.

  Then:
     1.- Modify one of the articles in articles/
     2.- git ci -m 'modified article' -a
     3.- git push origin master
     4.- Visit localhost:4567/ and then the modified article in the web browser


* TODO: Click "reload" to produce the "reload" (git pull origin master and subsequent update)


* Mac OSX Maverick. I had problems when installing gems making use of native Xcode.

                  gem install redcarpet

  It gave a message like:

        You have not agreed to the Xcode license agreements, please run

              xcodebuild -license (for user-level acceptance) 

                   or 

              sudo xcodebuild-license (for system-wide acceptance) 

        from within a Terminal window to review and agree to the Xcode 
        license agreements.


  The problem was fixed following the indication above.
