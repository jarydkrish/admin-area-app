# README

Commands I ran:

```bash
# Set up a new rails app
rails new admin-area-app --database=postgresql
```

```bash
# Move into our new directory
cd admin-area-app
```

```bash
# Setup our database and run any pending migrations
rails db:setup
rails db:migrate
```

```bash
# Commit it all to Git!
git add .
git commit -m "Initial commit"
```

```bash
# Add activeadmin (for our admin area) and devise (for authentication)
bundle add devise activeadmin
```

```bash
# Add devise to our project
rails generate devise:install
# Add devise model for authentication
rails generate devise User
# Migrate the database to add the new User model
rails db:migrate
```

```bash
# Initialize ActiveAdmin, but use our "User" model
rails generate active_admin:install --skip-users
# Migrate the database
rails db:migrate
```
