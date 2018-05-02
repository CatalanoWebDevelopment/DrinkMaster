# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

configure :development do
  ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
)
end

configure :production do
  db = URI.parse(ENV['DATABASE_URL'] || 'postgres://kllqthczayqine:63319d12a3fb53d73449b7db39a987da632e28ab193045798fca74c761873b5a@ec2-54-204-46-236.compute-1.amazonaws.com:5432/dc12290ckgf41r')

  ActiveRecord::Base.establish_connection(
    :adapter  => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
    :host     => db.host,
    :username => db.user,
    :password => db.password,
    :database => db.path[1..-1],
    :encoding => 'utf8'
  )
end
