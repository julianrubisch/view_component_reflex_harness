class InlineEditComponent < ViewComponentReflex::Component
  def initialize(resource:, attribute:)
    @resource = resource
    @attribute = attribute
    @hover = false
  end

  def value
    "#{@resource[@attribute]} #{@resource.id}"
  end

  def show
    @hover = true
  end

  def hide
    @hover = false
  end
end
