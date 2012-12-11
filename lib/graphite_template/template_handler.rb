require 'graphite_graph'

module GraphiteTemplate
  class TemplateHandler
    def self.call(template)
      "'#{GraphiteTemplate::Config.graphite_url}?' + GraphiteGraph.new('#{template.inspect}', {}, assigns.merge(local_assigns)).url"
    end

  end
end
