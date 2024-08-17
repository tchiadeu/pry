# Setup Pry

A quick setup to customize the prompt using pry & rails.
After installation, the prompt will match the current directory name or the rails app name (with an hint for the current env).
Examples :
> running 'pry' inside ~/code/current_project: `[1] current_project(main) >`
> running 'rails console' inside ~/code/current_project: `[1] current_project(dev) >`

## Installation gem pry

```
gem install pry
```
Access to the doc [here](https://github.com/pry/pry)

## Installation config pry

```
curl -s https://raw.githubusercontent.com/tchiadeu/pry/master/pry.rb -o ~/.pryrc
```
