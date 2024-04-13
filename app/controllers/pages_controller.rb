class PagesController < ApplicationController
  def about
  end

  def contact
    @members = ["eric", "tom", "sam"]
    search = params[:member]
    if search
        @members = @members.select do |member|
          member == search
        end
    end
  end
end
