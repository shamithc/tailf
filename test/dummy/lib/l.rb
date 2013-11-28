module RequestSummaryLogging
  class LogSubscriber < ActiveSupport::LogSubscriber
    def process_action event
      # pp event.payload
      # pp 'aaaaaaaaaaaaaaaaaaaa'
      # ddff
    end
  end
end

RequestSummaryLogging::LogSubscriber.attach_to :action_controller
