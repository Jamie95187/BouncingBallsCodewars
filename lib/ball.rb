class Ball
  def bounce(height, bounce, window)
    return -1 if bounce >= 1 || height <= 0 || height <= window
    return 1 if height*bounce <= window
    return 3 if height*bounce*bounce <= window
    5
  end
end
