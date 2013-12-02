# require 'active_support/logger'

module Tailf
  class LogSubscriber < ActiveSupport::LogSubscriber

   def logger
      @logger ||= create_logger
    end

    def create_logger
      logger = Logger.new("#{Rails.root}/log/request_summary.log")
      logger.formatter = Formatter.new
      logger
    end

    class Formatter
      def call severity, time, progname, msg
        "#{severity[0]} #{time.utc.strftime('%FT%T.%6NZ')} #{msg}\n"
      end
    end

    INTERNAL_PARAMS = %w(controller action format _method only_path)

    def process_action event
      payload = event.payload
      param_method = payload[:params]['_method']
      method = param_method ? param_method.upcase : payload[:method]
      status = compute_status(payload)
      path = payload[:path]
      params = payload[:params].except(*INTERNAL_PARAMS)

      message = "%-6s #{status} #{path}" % method
      message << " parameters=#{params}" unless params.empty?

      logger.info message
    end

    def compute_status payload
      status = payload[:status]
      if status.nil? && payload[:exception].present?
        exception_class_name = payload[:exception].first
        status = ActionDispatch::ExceptionWrapper.status_code_for_exception(exception_class_name)
      end
      status
    end
  end
end

# Tailf::LogSubscriber.attach_to :action_controller