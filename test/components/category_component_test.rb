# frozen_string_literal: true

require "test_helper"

class CategoryComponentTest < ViewComponent::TestCase
  test "render a category component with a nil category" do
    assert_equal(
    %(<a class=\"category bg-gray-300 text-gray-600 px-4 py-2 rounded-2xl whitespace-nowrap drop-shadow-sm hover:bg-gray-300 \" href=\"/\">Todas</a>),
      render_inline(CategoryComponent.new).to_html
    )
  end

  test "render a category compoment whit a category" do
    @category = categories(:accion)
    assert_equal(
    %(<a class=\"category bg-white text-gray-600 px-4 py-2 rounded-2xl whitespace-nowrap drop-shadow-sm hover:bg-gray-300 \" href=\"/\?category_id=#{@category.id}\">#{@category.name}</a>),
      render_inline(CategoryComponent.new(category: @category)).to_html
    )
  end
end
