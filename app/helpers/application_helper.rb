module ApplicationHelper



  def page_title(titulo)
    "#{'<div class="row page-title-wrapper">
        <div class="span12">
          <h2>' + titulo + '</h2>
        </div></div>'}".html_safe
  end



  def holder_tag(size, text='', theme=nil, html_options={})
      size = "#{size}x#{size}" unless size =~ /\A\d+%?x\d+\z/
      text = text.to_s.empty? ? size : text
      options = {:src => '', :data => {:src => "holder.js/#{size}/text:#{text}/#{theme}"}}
      options = options.merge(html_options)

      tag :img, options
    end
end
