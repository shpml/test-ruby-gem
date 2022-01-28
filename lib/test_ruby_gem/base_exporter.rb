module TestRubyGem
    class BaseExporter
        attr_reader :timer_task

        def initialize
            @timer_task = Concurrent::TimerTask.new(execution_interval: 5, timeout_interval: 5) do
            call
            end
        end

        def start
            timer_task.execute
        end

        def call
            raise NotImplementedError
        end
    end
end