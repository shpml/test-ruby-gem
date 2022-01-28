module TestRubyGem
    class PumaExporter < BaseExporter
        def call
            stats = Puma.stats
            pp stats
        end
    end
end