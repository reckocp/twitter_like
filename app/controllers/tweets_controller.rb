class TweetsController < ApplicationController
  def index
    @tweets = Tweet.paginate(:page => params[:page], :per_page => 25)
    render template: "/tweets/index.html.erb"
  end

  def show
   tweet = find_tweet_by_id

   if tweet
     @tweet = tweet
     render template: 'tweets/show.html.erb'
   else
     render_not_found
   end
 end

private
 def find_tweet_by_id
  Tweet.find(params["id"].to_i)
end

def render_not_found

  render template: "tweets/not_found.html.erb"

end
end
