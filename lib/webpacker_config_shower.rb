require 'webpacker'
require 'webpacker/runner'
require 'open3'

module WebpackerConfigShower
  class Runner < ::Webpacker::Runner
    def self.run(argv)
      ENV["NODE_ENV"] ||= Rails.env
      super
    end

    def run
      cmd = [
        "node",
        "-e",
        *[
          "const conf = require('#{@webpack_config}')",
          "const { format } = require('util')",
          "console.log(format('%j', conf))",
        ].join(';')
      ]

      Dir.chdir(@app_path) do
        _, stdout, _ = *Open3.popen3(*cmd)
        puts JSON.pretty_generate(JSON.parse(stdout.read))
      end
    end
  end
end

require "webpacker_config_shower/railtie"
