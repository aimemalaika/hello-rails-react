class StaticController < ApplicationController
  def index
    greatings = ['Hello friend', 'Bonjour frere', 'Salut tonton', 'Jambo kaka', 'Good morning']

    @datas = Greating.all

    @datas = greatings.map { |g| Greating.create(message: g) } if @datas.empty?
  end
end
