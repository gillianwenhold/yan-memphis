# frozen_string_literal: true

namespace :polls do
  desc "Poll Creation"

  task :create_poll => [ :environment ] do
    Poll.create(title: "In the midst of the COVID-19 crisis, what resources do you need right now?")
  end

  task :create_options => [ :environment ] do
    poll = Poll.find_by(title: "In the midst of the COVID-19 crisis, what resources do you need right now?")
    opts = [
      "Food/Water",
      "Childcare",
      "Employment/Money",
      "Educational Resources",
      "Internet/Technology",
      "Emotional Support",
      "Entertainment/Engaging Options",
      "Resources for Undocumented People",
      "Want to make a difference/activism in Memphis",
    ]
    opts.each { |option| Option.create(name: option, poll: poll) }
  end
end