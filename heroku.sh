git add .;
git commit -am "push to heroku"
rake assets:precompile;
git push heroku master;
heroku run rake db:schema:load;
heroku run rake db:populate;