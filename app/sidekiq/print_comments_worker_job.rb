class PrintCommentsWorkerJob
  include Sidekiq::Job

  def perform
    @articles = Article.includes(:comments)
    @articles.each do |article|
      article.comments.each do |comment|
        puts "Printing comment '#{comment.body
        }' for article '#{comment.commenter}'"
      end
    end
  end
end
