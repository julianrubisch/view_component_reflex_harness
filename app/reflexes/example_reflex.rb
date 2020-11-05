# frozen_string_literal: true

class ExampleReflex < ApplicationReflex
  delegate :uuid, to: :connection

  def test_page
    @post = Post.first
    @attribute = :title
  end

  def test_selector
    morph '#post-container', ApplicationController.render(InlineEditComponent.new(model: Post.first, attribute: :title))
  end
end
