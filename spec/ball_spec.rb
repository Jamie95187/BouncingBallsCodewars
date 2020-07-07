require 'ball'

describe 'ball' do

   ball = Ball.new

  describe 'bounce' do

    it('should return -1') do
      expect(ball.bounce(0, 0.5, 1)).to eq -1
      expect(ball.bounce(1, 0.66, 2)).to eq -1
      expect(ball.bounce(3, 1, 1)).to eq -1
    end

    it('should return 1') do
      expect(ball.bounce(3, 0.5, 1.6)).to eq 1
    end

    it('should return 3') do
      expect(ball.bounce(3, 0.5, 1.4)).to eq 3
    end

    it('should return 3') do
      expect(ball.bounce(3, 0.5, 0.7)).to eq 5
    end

  end

end
