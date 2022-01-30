
module TestRubyGem
    class BaseExporter
        attr_reader :timer_task

        def initialize
            puts "BaseExporter initialize"
            @timer_task = ::Concurrent::TimerTask.new(execution_interval: 5, timeout_interval: 5) do
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