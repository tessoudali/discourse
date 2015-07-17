class PermalinkSerializer < ApplicationSerializer
  attributes :id, :url, :topic_id, :topic_title, :topic_url, :post_id, :post_url, :category_id, :category_name, :category_url, :external_url

  def topic_title
    object.try(:topic).try(:title)
  end

  def topic_url
    object.try(:topic).try(:url)
  end

  def post_url
    object.try(:post).try(:url)
  end

  def category_name
    object.try(:category).try(:name)
  end

  def category_url
    object.try(:category).try(:url)
  end
end
