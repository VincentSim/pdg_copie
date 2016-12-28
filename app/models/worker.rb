class Worker < ApplicationRecord
  has_many :shifts

  validates :first_name, presence:true
  validates :status, presence:true

  STATUS = ["medic", "interne", "interim"]

  def shifts_count
    self.shifts.count
  end

  def gold_shifts_count
    sum = 0
    self.shifts.each do |shift|
      if shift.start_date.sunday? || shift.start_date.saturday?
        sum += 1
      end
    end
    return sum
  end

  def base_price
    if status == "medic"
      270
    elsif status == "interne"
      126
    else
      480
    end
  end

  def price
    return base_price * (shifts_count + gold_shifts_count)
  end

end
