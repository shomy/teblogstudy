require 'redcarpet'

module ApplicationHelper
  def profile_img(user)
    return image_tag(user.avatar, alt: user.name) if user.avatar?

    unless user.provider.blank?
      img_url = user.image_url
    else
      img_url = 'no_image.png'
    end
    image_tag(img_url, alt: user.name)
  end

  def markdown(text)
    unless @markdown
      renderer = Redcarpet::Render::HTML.new(hard_wrap: true,autolink: true)
      @markdown = Redcarpet::Markdown.new(renderer, autolink: true,fenced_code_blocks: true)
    end

    @markdown.render(text).html_safe
  end


end



