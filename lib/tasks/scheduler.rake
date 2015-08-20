desc 'Fetches and alerts the latest currency from OrbitRemit API'
task :get_latest_exchange_rates => :environment do
  ExchangeRate.get_latest_rates
end

desc 'Sends an email alert'
task :email_latest_exchange_rates => :environment do
  User.all.each do |user|
    user.email_alert('ph')
  end
end