class ApplicationController < ActionController::Base
  @@event_store = Rails.configuration.event_store
end
