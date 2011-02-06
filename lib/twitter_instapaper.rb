require 'optparse'
require 'yaml'

module TwitterInstapaper
  CONFIG_FILENAME = File.expand_path("~/.twitter-instapaper")

  module Config
    
    class << self

      def save!(config=nil)
        config_to_save = config.nil? ? @config : config

        File.open(CONFIG_FILENAME, "w+") do |f|
          f.chmod(0600)
          f.write(YAML.dump(config_to_save))
        end
      end
    
      def load!
        raise "missing configuration file. run 'twit_inst --configure'." unless File.exists?(CONFIG_FILENAME)
        @config = YAML.load_file(CONFIG_FILENAME)
      end
    
      def twitter_username
        @config["twitter_username"]
      end
    
      def instapaper_username
        @config["instapaper_username"]
      end
    
      def instapaper_password
        @config["instapaper_password"]
      end
      
      def last_seen_fav_ids
        @last_seen_fav_ids ||= @config["last_seen_fav_ids"] || Set.new
      end
      
      def update_last_seen_fav_ids!(seen_fav_ids)
        @config["last_seen_fav_ids"] = seen_fav_ids.to_a.join(",")
        save!
      end
    end
  
  end

  def self.parse_cmd_line_options!
    options = {}
    OptionParser.new do |opts|
      opts.banner = "Usage: twit_inst [options]"

      opts.on("-c", "--configure", "Configure Twitter and Instapaper account details") do |c|
        options[:configure] = true
      end
      
      opts.on("-v", "--verbose", "Provide more detailed output at runtime") do |c|
        options[:verbose] = true
      end
    end.parse!

    options
  end

end
