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

  task :add_links => [ :environment] do
    poll = Poll.find_by(title: "In the midst of the COVID-19 crisis, what resources do you need right now?")
    Option.find_by(name: "Food/Water")&.update(link: "/food_water", link_es: "/food_water/es", es_active: true)
    Option.find_by(name: "Childcare")&.update(link: "/childcare", link_es: "/childcare/es", es_active: false)
    Option.find_by(name: "Employment/Money")&.update(link: "/employment_money", link_es: "/employment_money/es", es_active: false)
    Option.find_by(name: "Educational Resources")&.update(link: "/education", link_es: "/education/es", es_active: true)
    Option.find_by(name: "Internet/Technology")&.update(link: "/internet_tech", link_es: "/internet_tech/es", es_active: true)
    Option.find_by(name: "Emotional Support")&.update(link: "/depressed_lonely_anxious", link_es: "/depressed_lonely_anxious/es", es_active: true)
    Option.find_by(name: "Entertainment/Engaging Options")&.update(link: "/entertainment_self", link_es: "/entertainment_self/es", es_active: false)
    Option.find_by(name: "Resources for Undocumented People")&.update(link: "/undocumented_resources", link_es: "/undocumented_resources/es", es_active: true)
    Option.find_by(name: "Want to make a difference/activism in Memphis")&.update(link: "/activism", link_es: "/activism/es", es_active: false)
    Option.create(poll: poll, name: "Entertainment/Engaging Options (with others)", link: "/entertainment_others", link_es: "/entertainment_others/es", es_active: false)
    Option.create(poll: poll, name: "Reliable information about COVID-19", link: "/legit_info", link_es: "/legit_info/es", es_active: true)
    Option.create(poll: poll, name: "Resources for LGBTQ+ People", link: "/lgbt", link_es: "/lgbt/es", es_active: true)
    Option.create(poll: poll, name: "Support for sexual violence & unsafe home environments", link: "/unsafe_home", link_es: "/unsafe_home/es", es_active: true)
  end

  task :update_entertainment => [ :environment ] do
    Option.find_by(name: "Entertainment/Engaging Options")&.update(name: "Entertainment/Engaging Options (self)", link: "/entertainment_self", link_es: "/entertainment_self/es", es_active: false)
  end
end