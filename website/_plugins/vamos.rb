module Jekyll
  module VamosFilter
    def vamos_accepted(papers, type)
      return papers.select { |p| p["id"].start_with? type and not p["conditional"] }
    end

    def vamos_program_title(paper)
      id = paper["id"]
      title = paper["title"]

      if id.start_with? "v21t" then
        return title + " (VaMoS 2021 Snapshot)"
      elsif id.start_with? "v22t" then
        return title + " (VaMoS 2022 Snapshot)"
      else
        return title
      end
    end
  end
end

Liquid::Template.register_filter(Jekyll::VamosFilter)
