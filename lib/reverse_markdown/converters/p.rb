module ReverseMarkdown
  module Converters
    class P < Base
      def convert(node, state = {})
        "" << treat_children(node, state).strip << ""
      end
    end

    register :p, P.new
  end
end
