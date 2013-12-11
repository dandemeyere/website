class Emailer < ActionMailer::Base
  def contact(message)
    mail({ subject: "New website message from: #{message[:name]}",
           to: YAML::load(File.open('config/settings.yml'))["settings"]["email"],
           from: message[:email],
           body: message[:message] })
  end
end
