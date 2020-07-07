class Ball
  def bounce(height, bounce, window)
    return -1 if bounce >= 1 || height <= 0 || height <= window
    bounces = 0
    while height*bounce > window do
      bounces += 1
      height = height*bounce
    end
    1+2*bounces
  end
end
