# frozen_string_literal: true

class CategoryComponent < ViewComponent::Base
  attr_reader :category

  def initialize(category: nil)
    @category = category
  end

  def title
    category ? category.name : t('.all')
  end

  def link
   category ? movies_path(category_id: category) : movies_path
  end

  def classes
    "category #{background} text-gray-600 px-4 py-2 rounded-2xl whitespace-nowrap drop-shadow-sm hover:bg-gray-300 "
  end

  def active?
    return true if category.nil? && params[:category_id].nil?
    category&.id == params[:category_id].to_i
  end

  def background
    active? ? 'bg-gray-300' : 'bg-white'
  end

end
