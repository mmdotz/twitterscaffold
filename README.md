#Twitterscaffold
Welcome to the Twitter clone we created via scaffold. Access the app by navigating to `https://twitterscaffold.herokuapp.com/`

##Description
This app tracks users and their tweets. It authenticates users before allow tweets to be created or deleted.

##Instructions
Navigate to `https://twitterscaffold.herokuapp.com/` to read current tweets by users.

If you already have an account, simply login with your username and password at `https://twitterscaffold.herokuapp.com/login`. If you would like to create a new account, send a `GET` request to `https://twitterscaffold.herokuapp.com/new`.

To see all tweets:
send a `GET` request to `https://twitterscaffold.herokuapp.com/tweets`

To see all users authorized to create tweets:
send a `GET` request to `https://twitterscaffold.herokuapp.com/users`.

To see a specific user's tweets, send a `GET` request to http://localhost:3000/users/:id`.

To create a new tweet,  send a `GET` request to `http://localhost:3000/tweets/new`.


###Ruby and Rails information
This app uses Ruby 2.2.1 and Rails 4.2.4
