class Artist < ActiveRecord::Base
  has_many :game
  has_many :player, through: :game
  has_many :question



  def questions
    Question.all.select do |q|
        q.artist_id == self.id
    end
  end



end
