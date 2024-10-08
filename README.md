# Setup Pry

A quick setup to customize the prompt using pry & rails.  
After installation, the prompt will match the current directory name or the rails app name (with an hint for the current env).  
Examples :
- running `pry` inside `~/code/current_project` : `[1] current_project(main) >`
- running `rails console` inside `~/code/current_project` : `[1] current_project(dev) >`

> [!NOTE]
> For production env, the environment name appears in red 🟥 (the red configured in your terminal)

## Installation gem pry

If already installed, skip this step
```sh
gem install pry
```
Access to the doc [here](https://github.com/pry/pry)

## Installation config pry

```sh
curl -s https://raw.githubusercontent.com/tchiadeu/pry/master/pry.rb -o ~/.pryrc
```
