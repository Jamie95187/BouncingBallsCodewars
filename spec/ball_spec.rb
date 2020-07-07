require 'ball'

describe 'ball' do

   ball = Ball.new

  describe 'bounce' do

    it('should return -1') do
      expect(ball.bounce(3, 1, 1)).to eq -1
    end

    it('should return 1') do
      expect(ball.bounce(3, 0.5, 1.6)).to eq 1
    end

  end

end
