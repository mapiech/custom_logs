module CustomLogs
  class Socket

    @@socket = nil

    class << self
      def get
        @@socket ||= ::Logger.new(STDOUT)
      end

      def write(message)
        get.unknown("[CUSTOM-LOGS]#{message}")
      end
    end

  end
end