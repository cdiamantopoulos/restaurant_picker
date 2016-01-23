General Overview:

Fake Twitter. This is an idea that was taken from the Michael Hartl tutorial but has completely original code. Some of the HTML/CSS was taken from the tutorial but the implementation of models and controllers are all my own.
So far the functionality includes creating a user, signing in, creating and deleting microposts.
I added a Session model to store the concept of a session in the DB. 
There are feature files and implementation written within the features/ folder.

TODO items:

Switch to Postgres
Implement rspec
Maybe Add Mailers
Implement relationships to follow other users


Notes:

One thing I don't like too much is the current_user method in the Application Controller. I would like a better way of doing this but I have not gotten to it.

Email/Username is case sensitive right now.


To Run:

Suggest doing a bundle install --path ./gems and kicking off server from a bundle exec.

I would have included the gems but the file was too large to send over email when the gems were included.
