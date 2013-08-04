# encoding: utf-8

namespace :db do

  desc "initialize"
  task :init => [:environment] do
    ActionMailer::Base.delivery_method = :test

    def print_more
      print '.'
      STDOUT.flush
    end

    def scale
      (ENV['NB'] || 1).to_i
    end
  end

  desc "do all populate tasks"
  task :populate => [:init] do
    Rake::Task['db:populate:default'].invoke
  end

  namespace :populate do

    desc 'default: do all populate tasks'
    task :default => [
      :users,
      :messages,
      :visits
    ]

    desc 'create users'
    task :users => :init do
      puts "Creating #{scale * 10} users"
      (scale * 10).times {
        Fabricate :user
      }
      puts "User #{User.first.email}"
    end

    desc 'create visits'
    task :visits => :init do
      puts "Creating #{scale * 10} visits"
      (scale * 10).times {
        Fabricate :visit
      }
    end

    desc 'create messages'
    task :messages => :init do
      puts "Creating #{scale * 10} messages"
      (scale * 10).times {
        Fabricate :message
      }
    end
  end
end