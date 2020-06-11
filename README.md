# vehiculum-codestyle

![vehiculum-codestyle](https://github.com/vehiculum-berlin/vehiculum-codestyle/workflows/vehiculum-codestyle/badge.svg?branch=master)

Shared Ruby style guide used by Vehiculum Tech team

## Installation
Add this line to your application's Gemfile:

```
group :test, :development do
  gem 'vehiculum-codestyle'
end
```

You do not need to include RuboCop directly in your application's dependencies. Vehiculum::Codestyle will include a specific version of rubocop and rubocop-rspec that is shared across all projects.

Usage
Create a .rubocop.yml with the following directives:

```
inherit_gem:
  vehiculum-codestyle:
    - default.yml
```

Now, run:

```
$ bundle exec rubocop
```

You can also automatically generate a .rubocop_todo.yml file to temporarily ignore failing cops until the offenses are removed from your code base. Run:

```
$ bundle exec rubocop --auto-gen-config
```

And add this to .rubocop.yml below the previous block:

```
inherit_from: .rubocop_todo.yml
```
