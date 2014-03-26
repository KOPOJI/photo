# Load the Rails application.
require File.expand_path('../application', __FILE__)

Time::DATE_FORMATS[:ru_datetime_with_sec] = '%d.%m.%Y в %k:%M:%S'
Time::DATE_FORMATS[:ru_datetime] = '%d.%m.%Y в %k:%M'

# Initialize the Rails application.
Photo::Application.initialize!
