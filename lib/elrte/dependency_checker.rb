require 'rails/version'

module Elrte
  module DependencyChecker
    class << self
      def rails_3_1?
        Rails::VERSION::MAJOR == 3 && Rails::VERSION::MINOR >= 1
      end
    end
  end
end
