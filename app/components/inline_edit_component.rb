class InlineEditComponent < ViewComponentReflex::Component
  def initialize(model:, attribute:)
    @model = model
    @attribute = attribute
    @hover = false
  end

  def show
    @hover = true
  end

  def hide
    @hover = false
  end
end
