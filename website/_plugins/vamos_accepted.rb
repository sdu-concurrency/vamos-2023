module Jekyll
  module VamosAcceptedFilter
    def vamos_accepted(papers, type)
      return papers.select { |p| p["id"].start_with? type and not p["conditional"] }
    end
  end
end

Liquid::Template.register_filter(Jekyll::VamosAcceptedFilter)
