class InlineEditComponent < ViewComponentReflex::Component
  def initialize(editing: false)
    @editing = editing
  end

  def arm
    @editing = true
  end

  def disarm
    @editing = false
  end
end
