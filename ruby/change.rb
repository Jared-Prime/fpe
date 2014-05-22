module Change
  def count_change(money, coins)
    coins.reject do |coin|
      coin if money % coin != 0
    end
  end
end
