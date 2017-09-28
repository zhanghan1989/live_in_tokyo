require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module LiveInTokyo
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    
    #config.i18n.default_locale = 'zh-CN'
    config.i18n.default_locale = :ja
    #config.i18n.default_locale = :en

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true

    config.generators do |g|
      g.test_framework :rspec,
        # 为各模型生成测试固件（使用 Factory Girl 创建的预构件，而不是默认的固件）
        fixtures: true,
        # 不生成“视图测试”。测试界面元素我使用的是功能测试
        view_specs: false,
        # 生成控制器时不生成对应的帮助方法测试文件。如果你觉得有必要，可以把这个选项设为 true，对帮助方法进行测试
        helper_specs: false,
        # 不生成针对 config/routes.rb 的测试文件.大型程序，路由很复杂，最好还是测试一下路由
        routing_specs: false,
        controller_specs: true,
        request_specs: false
      # 告知 Rails 使用预构件代替固件，把预构件存放在 spec/factories 文件夹中
      g.fixture_replacement :factory_girl, dir: "spec/factories"
  end
end
end
