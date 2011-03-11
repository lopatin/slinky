module Slinky
  module SassCompiler
    Server.register_compiler self,
      :inputs => ["sass", "scss"],
      :outputs => ["css"]
    
    def SassCompiler::command from, to
      %Q?sass "#{from}:#{to}"?
    end
  end
end