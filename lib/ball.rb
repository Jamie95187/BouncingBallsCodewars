class Ball
  def bounce(height, bounce, window)
    return -1 if bounce >= 1 || height <= 0 || height <= window
    1
  end
end
