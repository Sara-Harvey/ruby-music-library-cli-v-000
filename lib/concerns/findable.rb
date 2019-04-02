module Concerns
  module Findable
    
  def find_by_name(name)
    self.all.detect {|a| a.name == name}
  end
  end

def find_or_create_by_name(name)
  if find_by_name(name) == nil
    self.create(name)
  else name
end
end
end