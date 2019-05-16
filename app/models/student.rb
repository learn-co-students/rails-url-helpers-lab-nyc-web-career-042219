class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def activate
    status = !self.active
    self.update(active: status)
  end
end
