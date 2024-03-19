class PrintArticlesWorkerJob
  include Sidekiq::Job

  def perform
    @articles = Article.all
    @articles.each do |article|
      puts "Printing article: #{article.title}"
    end
  end
end
