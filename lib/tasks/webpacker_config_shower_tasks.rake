namespace :webpacker do
  namespace :config do
    desc "Output webpack.config.js to STDOUT"
    task :show do
      WebpackerConfigShower::Runner.run(ARGV)
    end
  end
end
