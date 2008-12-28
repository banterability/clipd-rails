### USERS (global):
- new table of users
- cookies
- join users table with clips table
- pages for: login, create account, reset password*
- direct remote adds to additional page that checks logged-in user

### in app/views/clips/\_footer.html.erb:
- double-check formatting

### in public/stylesheets/style.css:
- change footer link colors
- fix footer image link behavior on hover
- research weird padding behavior on multi-line clips
- remove unused styles (esp. re: header)

### in clip\_bot.rb:
- set up recurring process
- find a proper location in folder structure

### in config/deploy.rb:
- clean up cap recipe

## in public/
- rewrite error pages (404, 422, 500)