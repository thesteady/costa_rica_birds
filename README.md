Birds of Costa Rica
===================

Learn birds of Costa Rica.

## Development

### Setup:
1. make sure you have imagemagick installed (via homebrew)
2. setup the application.yml with any needed ENV vars (S3 config)
3. `bundle install`
4. `rake db:create db:migrate db:seed`

### Running

`rails s`
`sass --watch stylesheets/sass:stylesheets`


### Deploying To Heroku

`git push heroku master`

To Do:
------
x get AWS set up.
x get paperlip working with aws (config/environments/production vs. dev)
- clear out the tmp photos
- add the photos
- switch out webrick for puma
- password protect.
- rspec that shit.


Product Owner Melissa says:
---------------------------
- no reloading
- bar chart by monthly quads of how likely to see/where
- habitats
- allow users to set their own priorities
- allow users to have a learned/not learned check box
- flashcards with MC
- pneumonics and weird shit to call out whats important about bird
- allow user to change their date range


Laura says:
-----------
- xeno canto embed
- video embed


AWS Setup:
-----------
- test adding photo via seed task
- add attribution data before I go too far.
- can I do a direct upload from dev, use my dev db to seed prod with the right links?
- whats the right way to batch these?


