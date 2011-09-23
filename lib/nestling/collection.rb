module Nestling
  class Collection < Array
    attr_reader :results, :start, :session_id, :type

    alias :total :results

    def initialize(options = {}, *args)
      options = Nestling::Hash.new(options).symbolize_keys!
      @results    = options[:results] || options[:total]
      @start      = options[:start]
      @session_id = options[:session_id]
      @type       = options[:type]
      super *args
    end
  end
end

