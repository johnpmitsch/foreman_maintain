module ForemanMaintain
  module Cli
    class ServiceCommand < Base
      subcommand 'start', 'Start applicable services' do
        exclude_option
        only_option
        def execute
          puts "hi"
        end
      end

      subcommand 'stop', 'Stop applicable services' do
        exclude_option
        only_option
        def execute
          puts "hi"
        end
      end

      subcommand 'restart', 'Restart applicable services' do
        exclude_option
        only_option
        def execute
          puts "hi"
        end
      end

      subcommand 'status', "Get statuses of applicable services" do
        exclude_option
        only_option
        def execute
          puts "hi"
        end
      end

      subcommand 'list', 'List applicable services' do
        def execute
          puts "hi"
        end
      end

      subcommand 'enable', 'Enable services' do
        exclude_option
        only_option
        def execute
          puts "hi"
        end
      end

      subcommand 'disable', 'Disable services' do
        exclude_option
        only_option
        def execute
          puts "hi"
        end
      end
    end
  end
end
