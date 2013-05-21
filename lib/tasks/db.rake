require 'benchmark'

namespace :db do
  desc "Move categories from articles into own tables"
  task :move_categories => :environment do

    time = Benchmark.measure do
      Article.all.each do |article|
        Category.create(name: article.category, article: article)
      end
    end

    puts time
  end

  desc "Move tags from articles into own tables"
  task :move_tags => :environment do

    time = Benchmark.measure do
      Article.all.each do |article|
        article.tags.split(', ').each do |tag|
          Tag.create(name: tag, article_id: article.id)
        end
      end
    end

    puts time
  end
end

