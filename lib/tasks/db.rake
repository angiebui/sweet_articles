require 'benchmark'

namespace :db do
  desc "Move categories from articles into own tables"
  task :move_categories => :environment do

    time = Benchmark.measure do
      Article.all.each do |article|
        Category.create(name: article.category)
      end
    end

    puts time
  end

  desc "Move tags from articles into own tables"
  task :move_tags => :environment do

    time = Benchmark.measure do
      Article.all.each do |article|
        article.tags.split(', ').each do |tag|
          Tag.create(name: tag)
        end
      end
    end

    puts time
  end

  desc "Populate category_id in articles table"
  task :populate_category_id => :environment do

    time = Benchmark.measure do
      Article.all.each do |article|
        article.category_id = Category.find_by_name(article.category).id
        article.save!
      end
    end

    puts time
  end
end

