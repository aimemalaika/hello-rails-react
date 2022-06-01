class StaticController < ApplicationController
  def index
    greatings = [ 'Hello friend', 'Bonjour frere', 'Salut tonton', 'Jambo kaka', 'Good morning']

    @datas = Greating.all

    if @datas.empty?
      @datas = greatings.map { |g| Greating.create(message: g) }
    end
  end
end
