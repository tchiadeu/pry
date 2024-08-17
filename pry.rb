# frozen_string_literal: true

if defined?(Rails)
  short_env_name = {
    'development' => { name: 'dev', color: :green },
    'production' => { name: 'prod', color: :red },
    'staging' => { name: 'stage', color: :green },
    'test' => { name: 'test', color: :green }
  }
  app_name = Rails.application.class.module_parent_name.underscore.dasherize
  env_options = short_env_name[Rails.env]
  env = Pry::Helpers::Text.send(env_options[:color], env_options[:name])
  description = 'Prompt has to match de rails app name'
else
  app_name = Dir.pwd.split('/').last.to_s
  env = Pry::Helpers::Text.green('main')
  description = 'Prompt has to match the current folder name'
end

app = Pry::Helpers::Text.cyan(app_name)

Pry::Prompt.add(:current_app) do |_context, nesting, pry_instance, sep|
  format(
    '[%<in_count>s] %<app>s(%<env>s)%<nesting>s%<separator>s ',
    in_count: pry_instance.input_ring.count,
    app: app,
    env: env,
    nesting: (nesting.positive? ? ":#{nesting}" : ''),
    separator: sep
  )
end

prompt = Pry::Prompt[:current_app]
procs = [
  proc { |*args| prompt.wait_proc.call(*args).to_s },
  proc { |*args| prompt.incomplete_proc.call(*args).to_s }
]

Pry.config.prompt = Pry::Prompt.new(
  'custom_prompt', description, procs
)
