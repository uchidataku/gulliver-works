# frozen_string_literal: true

# PublicController
class PublicController < ActionController::API
  include ExceptionHandler

  def render(*args)
    options = args.extract_options!
    options[:adapter] = :json if options[:json].is_a?(Enumerable)
    args << options
    super(*args)
  end
end
