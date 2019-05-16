class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def activate
    num = !self.active
    self.update(active: num)
  end

end
