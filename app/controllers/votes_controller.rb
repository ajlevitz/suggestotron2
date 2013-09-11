class VotesController < ApplicationController
  def create
    topic = Topic.find(params[:topic_id])
    vote = topic.votes.build
    vote.save!

    redirect_to :back
    
	    # redirect_to(topic_path(params[:topic_id]))
    	# redirect_to(topics_path)
    
  end	

end
