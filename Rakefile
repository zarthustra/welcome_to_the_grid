	require 'bundler'
	require "rspec/core/rake_task"

	Bundler::GemHelper.install_tasks
	RSpec::Core::RakeTask.new(:default) do |t|
  		t.pattern = 'spec/*_spec.rb'
	end
