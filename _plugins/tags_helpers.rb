module Jekyll
  module TagsHelpers
    def sort_tags_by_posts_count(tags)
      tags.sort_by{ |tag, posts| -posts.count }
    end
  end
end

Liquid::Template.register_filter(Jekyll::TagsHelpers)
