# LeagueSide Exercise
This is my attempt at the LeagueSide exercise.

## Usage
### Note
This uses Ruby, Rails, and SQLite.<br />
For instructions on installing Ruby [click here](http://www.ruby-lang.org/en/downloads/).<br />
For instructions on installing Rails [click here](https://guides.rubyonrails.org/v5.0/getting_started.html#installing-rails).<br />
For instructions on installing SQLite [click here](https://www.sqlite.org/index.html)

### Setup
Clone the repo and go into the leagueside folder<br />
Run the following to start up the app:<br />
```
bundle install
rails db:create
rails webpacker:compile
rails s
```
You can visit `http://localhost:3000/leagues/new` to create a new league<br />
To search visit `http://localhost:3000.leagues/search?radius=[radius]&coordinates=[coordinates]&budget=[budget].json`<br />
This returns a json of the leagues within the radius that are under the budget<br />
- Radius is the number in miles from the coordinates that you want to search
- Coordinates is a latitude/longitude pair that is comma separated (ex. 38.456,-72.924)
- Budget is a number that represents the total budget to spend<br />
Example: `http://localhost:3000/leagues/search?radius=15&coordinates=35.7803977,-78.6390989&budget=10000.json`
