
module TestRubyGem
    class BaseExporter
        attr_reader :timer_task, :execution_interval, :timeout_interval

        def initialize(execution_interval: 5, timeout_interval: 5)
            puts "* * * * * BaseExporter initialize"
            @timer_task = ::Concurrent::TimerTask.new(execution_interval: execution_interval, timeout_interval: timeout_interval) do
                call
            end
        end

        def start
            puts "BaseExporter start"
            @timer_task.execute
        end

        def call
            raise NotImplementedError
        end
    end
end