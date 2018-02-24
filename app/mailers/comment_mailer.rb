class CommentMailer < ApplicationMailer


  def new_comment(review)
    @review = review
    @product = @review.product
    mail to: "jesse.hoareevans@gmail.com", subject: "This is a test to find out if i can get a website to send emails. This is Jesse. #{@product.name}"
    
  end
end
