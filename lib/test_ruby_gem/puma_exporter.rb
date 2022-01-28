module TestRubyGem
    class PumaExporter < BaseExporter
        def call
            puts "ping pong"
            stats = Puma.stats
            pp stats
        end
    end
end