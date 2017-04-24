## MakersBnB!

![Imgur](http://i.imgur.com/jciL2bD.png)
=================

Allows user to both list and book holiday destinations:

- A user can:
  - Sign up.
  - List multiple spaces.
  - Update spaces they have listed.
  - Be able to offer a range of dates where their space is available.
  - Request to book any space they choose (not listed by them) for one night.
  - Accept or reject requests for their space to be reserved.
- Spaces cannot be booked twice for the same night.
- Users cannot book their own space.

-------

### To use MakersBnB

##### Via Heroku:
Navigate to `https://makersbandb.herokuapp.com/`

##### To set it up locally:
```
$ git clone git@github.com:jackbittiner/Makersbnb.git
$ bundle
$ bundle update
```

In Postgresql, run the following command:

```
$ create database makersbnb_development
```

Run the following commands:
```
$ rake auto_migrate
$ rspec
$ rackup
```

Navigate to 'localhost9292/'. The login page should display as follows:

![Imgur](http://i.imgur.com/jc6Yw0M.png)

Once signed in, MakersBnB can be used to list and request spaces!
