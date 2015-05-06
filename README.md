Birds of Costa Rica
===================

Learn birds of Costa Rica.

This is an app designed for self-study purposes so that I can learn the birds of Costa Rica. This app is not intended for commercial use or distribution.

## Development

### Setup:
1. make sure you have imagemagick installed (via homebrew)
2. setup the application.yml with any needed ENV vars (S3 config)
3. `bundle install`
4. `rake db:create db:migrate db:seed`

### Running

`rails s`

### Deploying To Heroku

`git push heroku master`

### REQUIRED ENV Vars
`S3_BUCKET_NAME`
`AWS_ACCESS_KEY_ID`
`AWS_SECRET_ACCESS_KEY`
`USERNAME`
`PASSWORD`

To Do:
------
- switch out webrick for puma
- pick color scheme, get it in css.
- whiteboard what i want pages to look like
- update it
- add some more text to the locations?
- xeno canto


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


Notes for next time:
--------------------
go ahead and save larger images, since that's what I want to see anyway. (500px?)

