require 'date'

require "aging/version"

module Aging
  refine Date do
    def count_year
      # alias self
      from_date = self
      klass = self.class
      to_date = klass.today
      # TODO: error
      raise if to_date < from_date

      birthday_in_this_year = klass.new(
        to_date.year,
        from_date.month,
        from_date.day
      )

      if to_date < birthday_in_this_year
        # before
        to_date.year - from_date.year - 1
      else
        # after
        to_date.year - from_date.year
      end
    end
  end
end
