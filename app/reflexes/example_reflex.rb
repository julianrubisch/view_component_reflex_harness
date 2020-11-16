# frozen_string_literal: true

class ExampleReflex < ApplicationReflex
  delegate :uuid, to: :connection

  def create
    Post.create(title: "test")
  end

  def destroy
    Post.last.destroy
  end

  def test_selector
    morph '#post-container', ApplicationController.render(InlineEditComponent.new(resource: Post.find(element.dataset.id), attribute: :title))
  end

  def over
    @over = true
    @out = false
  end

  def out
    @over = false
    @out = true
  end
end
