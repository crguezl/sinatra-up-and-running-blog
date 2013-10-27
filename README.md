Sinatra Up And Running. Chapter 5. Your Own Blog Engine 
======================

* Modifications of the one in
https://github.com/markzero/Sinatra-Up-And-Running-Practice  by
markzero (Marko Jakic)

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
