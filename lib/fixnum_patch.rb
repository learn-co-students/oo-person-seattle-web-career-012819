class Fixnum
  def clamp(lower,upper)
    [[upper, self].min, lower].max
  end
end
