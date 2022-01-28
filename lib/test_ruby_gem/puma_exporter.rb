module TestRubyGem
    class PumaExporter < BaseExporter
        def call
            sleep(1) until puma?
            stats = JSON.parse(Puma.stats, symbolize_names: true)
            pp stats
        end

        def puma?
            !!defined?(::Puma)
        end
    end
end