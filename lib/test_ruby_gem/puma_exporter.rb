module TestRubyGem
    class PumaExporter < BaseExporter
        def call
            puts "ping pong"
            stats = JSON.parse(Puma.stats, symbolize_names: true)
            pp stats
        end
    end
end