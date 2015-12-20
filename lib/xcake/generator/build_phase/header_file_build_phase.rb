module Xcake
  module Generator
    class HeaderFileBuildPhase < BuildPhase
      # This build phase generator detects header files
      # and ignores them.
      #
      def self.can_install_node(node)
        !File.directory?(node.path) &&
          [".h", ".hpp"].include?(File.extname(node.path))
      end
    end
  end
end
