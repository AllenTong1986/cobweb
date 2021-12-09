# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
# Learn more: http://github.com/javan/whenever


# cron job to scrape saturday lotto data from website.
# The job gets executed at Sydney time 11:05pm every saturday night
every :saturday, at: '12:05pm', roles: [:app] do
  rake "lotto:scrape_saturday_lotto"
end