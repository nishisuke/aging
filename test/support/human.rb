# frozen_string_literal: true

require 'aging'

class Human
  using Aging

  attr_reader :birthday

  def initialize(birthday)
    @birthday = birthday
  end

  def age
    birthday.count_year
  end
end
