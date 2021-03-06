module Rake
  class Application
    alias_method :orig_display_error_message, :display_error_message
    def display_error_message(ex)
      Ratchetio.report_exception(ex)
      orig_display_error_message(ex)
    end
  end
end
