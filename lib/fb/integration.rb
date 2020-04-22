require 'active_support/core_ext'

module Fb
  module Integration
    autoload :CLI, 'fb/integration/cli'
    autoload :CleanupRepository, 'fb/integration/cleanup_repository'
    autoload :Command, 'fb/integration/command'
    autoload :DockerCompose, 'fb/integration/docker_compose'
    autoload :Options, 'fb/integration/options'
    autoload :Repository, 'fb/integration/repository'
    autoload :SetupRepository, 'fb/integration/setup_repository'
    autoload :SpecificPostInstall, 'fb/integration/specific_post_install'

    mattr_accessor :repositories
    @@repositories = []

    def self.configure
      yield self
    end

    def self.repositories=(repos)
      @@repositories = repos.map do |repo|
        Fb::Integration::Repository.new(**repo)
      end
    end

    def self.find_repository(name)
      repositories.find do |repository|
        repository.name == name || repository.destination == name
      end
    end
  end
end
