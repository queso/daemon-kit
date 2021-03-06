# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{daemon-kit}
  s.version = "0.1.7.10"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Kenneth Kalmer"]
  s.date = %q{2009-08-12}
  s.default_executable = %q{daemon_kit}
  s.description = %q{Daemon Kit aims to simplify creating Ruby daemons by providing a sound application skeleton (through a generator), task specific generators (jabber bot, etc) and robust environment management code.

Using simple built-in generators it is easy to created evented and non-evented daemons that perform a multitude of different tasks.

Supported generators:

* XMPP bot (non-evented)
* AMQP consumer (evented)
* Nanite agent
* Cron-style daemon
* ruote remote participants}
  s.email = ["kenneth.kalmer@gmail.com"]
  s.executables = ["daemon_kit"]
  s.extra_rdoc_files = ["Configuration.txt", "Deployment.txt", "History.txt", "Logging.txt", "Manifest.txt", "PostInstall.txt", "RuoteParticipants.txt", "TODO.txt"]
  s.files = ["Configuration.txt", "Deployment.txt", "History.txt", "Logging.txt", "Manifest.txt", "PostInstall.txt", "README.rdoc", "Rakefile", "RuoteParticipants.txt", "TODO.txt", "app_generators/daemon_kit/USAGE", "app_generators/daemon_kit/daemon_kit_generator.rb", "app_generators/daemon_kit/templates/README", "app_generators/daemon_kit/templates/Rakefile", "app_generators/daemon_kit/templates/bin/daemon.erb", "app_generators/daemon_kit/templates/config/arguments.rb", "app_generators/daemon_kit/templates/config/boot.rb", "app_generators/daemon_kit/templates/config/environment.rb", "app_generators/daemon_kit/templates/config/environments/development.rb", "app_generators/daemon_kit/templates/config/environments/production.rb", "app_generators/daemon_kit/templates/config/environments/test.rb", "app_generators/daemon_kit/templates/config/post-daemonize/readme", "app_generators/daemon_kit/templates/config/pre-daemonize/readme", "app_generators/daemon_kit/templates/lib/daemon.rb", "app_generators/daemon_kit/templates/libexec/daemon.erb", "app_generators/daemon_kit/templates/script/console", "app_generators/daemon_kit/templates/script/destroy", "app_generators/daemon_kit/templates/script/generate", "bin/daemon_kit", "daemon_generators/amqp/USAGE", "daemon_generators/amqp/amqp_generator.rb", "daemon_generators/amqp/templates/config/amqp.yml", "daemon_generators/amqp/templates/config/initializers/amqp.rb", "daemon_generators/amqp/templates/libexec/daemon.rb", "daemon_generators/cron/USAGE", "daemon_generators/cron/cron_generator.rb", "daemon_generators/cron/templates/config/initializers/cron.rb", "daemon_generators/cron/templates/libexec/daemon.rb", "daemon_generators/cucumber/USAGE", "daemon_generators/cucumber/cucumber_generator.rb", "daemon_generators/cucumber/templates/cucumber", "daemon_generators/cucumber/templates/cucumber.rake", "daemon_generators/cucumber/templates/cucumber_environment.rb", "daemon_generators/cucumber/templates/env.rb", "daemon_generators/deploy_capistrano/deploy_capistrano_generator.rb", "daemon_generators/deploy_capistrano/templates/Capfile", "daemon_generators/deploy_capistrano/templates/USAGE", "daemon_generators/deploy_capistrano/templates/config/deploy.rb", "daemon_generators/deploy_capistrano/templates/config/deploy/production.rb", "daemon_generators/deploy_capistrano/templates/config/deploy/staging.rb", "daemon_generators/deploy_capistrano/templates/config/environments/staging.rb", "daemon_generators/jabber/USAGE", "daemon_generators/jabber/jabber_generator.rb", "daemon_generators/jabber/templates/config/initializers/jabber.rb", "daemon_generators/jabber/templates/config/jabber.yml", "daemon_generators/jabber/templates/libexec/daemon.rb", "daemon_generators/nanite_agent/USAGE", "daemon_generators/nanite_agent/nanite_agent_generator.rb", "daemon_generators/nanite_agent/templates/config/initializers/nanite_agent.rb", "daemon_generators/nanite_agent/templates/config/nanite.yml", "daemon_generators/nanite_agent/templates/lib/actors/sample.rb", "daemon_generators/nanite_agent/templates/libexec/daemon.rb", "daemon_generators/rspec/USAGE", "daemon_generators/rspec/rspec_generator.rb", "daemon_generators/rspec/templates/spec.rb", "daemon_generators/rspec/templates/spec/spec.opts", "daemon_generators/rspec/templates/spec/spec_helper.rb", "daemon_generators/rspec/templates/tasks/rspec.rake", "daemon_generators/ruote/USAGE", "daemon_generators/ruote/ruote_generator.rb", "daemon_generators/ruote/templates/config/amqp.yml", "daemon_generators/ruote/templates/config/initializers/ruote.rb", "daemon_generators/ruote/templates/config/ruote.yml", "daemon_generators/ruote/templates/lib/daemon.rb", "daemon_generators/ruote/templates/lib/sample.rb", "daemon_generators/ruote/templates/libexec/daemon.rb", "lib/daemon_kit.rb", "lib/daemon_kit/abstract_logger.rb", "lib/daemon_kit/amqp.rb", "lib/daemon_kit/application.rb", "lib/daemon_kit/arguments.rb", "lib/daemon_kit/commands/console.rb", "lib/daemon_kit/config.rb", "lib/daemon_kit/console_daemon.rb", "lib/daemon_kit/core_ext.rb", "lib/daemon_kit/core_ext/configurable.rb", "lib/daemon_kit/core_ext/string.rb", "lib/daemon_kit/cron.rb", "lib/daemon_kit/cucumber/world.rb", "lib/daemon_kit/deployment/capistrano.rb", "lib/daemon_kit/em.rb", "lib/daemon_kit/error_handlers/base.rb", "lib/daemon_kit/error_handlers/hoptoad.rb", "lib/daemon_kit/error_handlers/mail.rb", "lib/daemon_kit/exceptions.rb", "lib/daemon_kit/initializer.rb", "lib/daemon_kit/jabber.rb", "lib/daemon_kit/nanite.rb", "lib/daemon_kit/nanite/agent.rb", "lib/daemon_kit/pid_file.rb", "lib/daemon_kit/ruote_participants.rb", "lib/daemon_kit/ruote_pseudo_participant.rb", "lib/daemon_kit/ruote_workitem.rb", "lib/daemon_kit/safety.rb", "lib/daemon_kit/tasks.rb", "lib/daemon_kit/tasks/environment.rake", "lib/daemon_kit/tasks/framework.rake", "lib/daemon_kit/tasks/god.rake", "lib/daemon_kit/tasks/log.rake", "lib/daemon_kit/tasks/monit.rake", "script/console", "script/destroy", "script/generate", "script/txt2html", "spec/abstract_logger_spec.rb", "spec/argument_spec.rb", "spec/config_spec.rb", "spec/configurable_spec.rb", "spec/daemon_kit_spec.rb", "spec/error_handlers_spec.rb", "spec/fixtures/env.yml", "spec/fixtures/noenv.yml", "spec/initializer_spec.rb", "spec/spec.opts", "spec/spec_helper.rb", "tasks/rspec.rake", "templates/god/god.erb", "templates/monit/monit.erb", "test/test_amqp_generator.rb", "test/test_cron_generator.rb", "test/test_daemon-kit_generator.rb", "test/test_daemon_kit_config.rb", "test/test_deploy_capistrano_generator.rb", "test/test_generator_helper.rb", "test/test_helper.rb", "test/test_jabber_generator.rb", "test/test_nanite_agent_generator.rb", "test/test_ruote_generator.rb", "vendor/tmail-1.2.3/tmail.rb", "vendor/tmail-1.2.3/tmail/address.rb", "vendor/tmail-1.2.3/tmail/attachments.rb", "vendor/tmail-1.2.3/tmail/base64.rb", "vendor/tmail-1.2.3/tmail/compat.rb", "vendor/tmail-1.2.3/tmail/config.rb", "vendor/tmail-1.2.3/tmail/core_extensions.rb", "vendor/tmail-1.2.3/tmail/encode.rb", "vendor/tmail-1.2.3/tmail/header.rb", "vendor/tmail-1.2.3/tmail/index.rb", "vendor/tmail-1.2.3/tmail/interface.rb", "vendor/tmail-1.2.3/tmail/loader.rb", "vendor/tmail-1.2.3/tmail/mail.rb", "vendor/tmail-1.2.3/tmail/mailbox.rb", "vendor/tmail-1.2.3/tmail/main.rb", "vendor/tmail-1.2.3/tmail/mbox.rb", "vendor/tmail-1.2.3/tmail/net.rb", "vendor/tmail-1.2.3/tmail/obsolete.rb", "vendor/tmail-1.2.3/tmail/parser.rb", "vendor/tmail-1.2.3/tmail/port.rb", "vendor/tmail-1.2.3/tmail/quoting.rb", "vendor/tmail-1.2.3/tmail/require_arch.rb", "vendor/tmail-1.2.3/tmail/scanner.rb", "vendor/tmail-1.2.3/tmail/scanner_r.rb", "vendor/tmail-1.2.3/tmail/stringio.rb", "vendor/tmail-1.2.3/tmail/utils.rb", "vendor/tmail-1.2.3/tmail/version.rb", "vendor/tmail.rb"]
  s.homepage = %q{http://kit.rubyforge.org/daemon-kit/rdoc/}
  s.post_install_message = %q{
For more information on daemon-kit, see http://kit.rubyforge.org/daemon-kit

To get started quickly run 'daemon_kit' without any arguments


}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{kit}
  s.rubygems_version = %q{1.3.4}
  s.summary = %q{Daemon Kit aims to simplify creating Ruby daemons by providing a sound application skeleton (through a generator), task specific generators (jabber bot, etc) and robust environment management code.}
  s.test_files = ["test/test_generator_helper.rb", "test/test_amqp_generator.rb", "test/test_cron_generator.rb", "test/test_daemon-kit_generator.rb", "test/test_daemon_kit_config.rb", "test/test_deploy_capistrano_generator.rb", "test/test_helper.rb", "test/test_jabber_generator.rb", "test/test_nanite_agent_generator.rb", "test/test_ruote_generator.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rubigen>, [">= 1.5.2"])
      s.add_runtime_dependency(%q<eventmachine>, [">= 0.12.8"])
      s.add_development_dependency(%q<newgem>, [">= 1.5.1"])
      s.add_development_dependency(%q<hoe>, [">= 2.3.2"])
    else
      s.add_dependency(%q<rubigen>, [">= 1.5.2"])
      s.add_dependency(%q<eventmachine>, [">= 0.12.8"])
      s.add_dependency(%q<newgem>, [">= 1.5.1"])
      s.add_dependency(%q<hoe>, [">= 2.3.2"])
    end
  else
    s.add_dependency(%q<rubigen>, [">= 1.5.2"])
    s.add_dependency(%q<eventmachine>, [">= 0.12.8"])
    s.add_dependency(%q<newgem>, [">= 1.5.1"])
    s.add_dependency(%q<hoe>, [">= 2.3.2"])
  end
end
