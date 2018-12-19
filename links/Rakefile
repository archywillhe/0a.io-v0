require "rubygems"
require 'rake'
require 'yaml'
require 'time'

SOURCE = "."
CONFIG = {
  'posts' => File.join(SOURCE, "_posts"),
  'post_ext' => "md",
}
class Post
# desc "Begin a new article in #{CONFIG['posts']}"

  def self.create(object)
    abort("rake aborted: '#{CONFIG['posts']}' directory not found.") unless FileTest.directory?(CONFIG['posts'])
    title = ENV["title"] || "new-post"
    category = ENV["category"] || ""
    category = "\"#{category.gsub(/-/,' ')}\"" if !category.empty?
    slug = title.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
    begin
      date = (ENV['date'] ? Time.parse(ENV['date']) : Time.now).strftime('%Y-%m-%d')
    rescue => e
      puts "Error - date format must be YYYY-MM-DD, please check you typed it correctly!"
      exit -1
    end
    filename = File.join(CONFIG['posts'], "#{date}-#{slug}.#{CONFIG['post_ext']}")
    if File.exist?(filename)
      abort("rake aborted!") if ask("#{filename} already exists. Do you want to overwrite?", ['y', 'n']) == 'n'
    end
    coverImg = ENV["img"] || ""
    puts "Creating new #{object}: #{filename}"
    open(filename, 'w') do |post|
      post.puts "---"
      post.puts "layout: #{object}"
      post.puts "postType: #{object}"
      post.puts "font: "
      post.puts "extraClasses: "
      post.puts "postType: #{object}"
      post.puts "title: \"#{title.gsub(/-/,' ')}\""
      post.puts "metaTitle:"
      post.puts "metaDescription: "
      post.puts "publishedOn: "
      post.puts "updateAt: "
      post.puts "readingTime: "
      post.puts "published: 1"
      post.puts "coverImg: #{coverImg}"
      post.puts "subtitle:"
      post.puts "subtitleBottom:"
      post.puts "extract:"
      post.puts "---"
    end
  end
end

task :article do
  Post.create("article")
end

task :interesting do
  Post.create("interesting")
end

task :log do
  Post.create("dailylog")
end