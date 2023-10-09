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

### Setting up the Blog
```bash
# Install action text rich text editor
rails action_text:install
# Create the post model
rails generate model Post title:string description:text content:rich_text
# Add a route to navigate to posts and single post (you will need to edit routes/controller/views)
rails generate controller PostsController index show
# Manage the posts in active admin
rails g active_admin:resource Post
```

Profit!
