# encoding: utf-8

unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end

lib_dir_path = File.dirname(File.expand_path(__FILE__))

Motion::Project::App.setup do |app|
  require "motion-gradle"

  app.files.unshift(Dir.glob(File.join(lib_dir_path, "project/**/*.rb")))

  app.gradle do
    dependency 'com.android.volley:volley:1.0.0'
  end
    # app.vendor_project jar: File.join(File.dirname(__FILE__), '../vendor/volley-1.0.10.jar')
end
