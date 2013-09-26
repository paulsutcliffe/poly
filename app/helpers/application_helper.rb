# coding: utf-8
module ApplicationHelper





  # PARAGRAPH
  def paragraph(text)
    "#{sanitize(simple_format(text), :tags => %w(p i br b))}".html_safe
  end

  def paragraph_truncate(text, length)
    "#{sanitize(simple_format(truncate(text, :length => length)), :tags => %w(p i br b))}".html_safe
  end
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




  def page_encabezado(subtitulo, imagen)

   # - if imagen == "#{holder_tag '270x185/industrial'}"
   #   tag_image = '<img src="' + imagen + '" />'
   # - else
   #   tag_image = imagen


    "#{'<div class="row page-encabezado">
          <div class="span12">
            <div class="media">
              <div class="pull-left">
                <img src="' + imagen + '" />
              </div>
              <div class="media-body">
                <div class="well">
                  <h4 class="media-heading">' + subtitulo +'</h4>'}".html_safe


  end

  def page_encabezado_end
    "#{'</div></div></div></div></div>'}".html_safe
  end




  # ADMIN
  def admin_links(size_link, edit_text, edit_link, delete_text, delete_link)
    if current_admin
      "#{'<div class="btn-group">
      <a class="btn btn-primary ' + size_link +'" href="' + edit_link + '"><i class="icon-pencil icon-white"></i>' + edit_text + '</a>
      <a class="btn btn-primary dropdown-toggle ' + size_link +'" data-toggle="dropdown" href="#"><span class="caret"></span></a>
      <ul class="dropdown-menu">
      <li><a href="' + edit_link + '"><i class="icon-pencil"></i> ' + edit_text +'</a></li>
      <li class="link-destroy"><a href="' + delete_link + '" rel="nofollow" data-method="delete" data-confirm="¿Estás seguro?"
><i class="icon-trash"></i> ' + delete_text + '</a></li>
      </ul>
      </div>'}".html_safe
    end


  end

  def admin_links_extra(size_link, edit_text, edit_link, delete_text, delete_link, create_text, create_link)
    if current_admin
      "#{'<div class="btn-group">
      <a class="btn btn-primary ' + size_link +'" href="' + edit_link + '"><i class="icon-pencil icon-white"></i>' + edit_text + '</a>
      <a class="btn btn-primary dropdown-toggle ' + size_link +'" data-toggle="dropdown" href="#"><span class="caret"></span></a>
      <ul class="dropdown-menu">
      <li><a href="' + edit_link + '"><i class="icon-pencil"></i> ' + edit_text +'</a></li>
      <li><a href="' + delete_link + '" rel="nofollow" data-method="delete" data-confirm="¿Estás seguro?"><i class="icon-trash"></i> ' + delete_text + '</a></li>
      <li class="divider"></li>
      <li><a href="' + create_link + '"><i class="i"></i> ' + create_text + '</a></li>
      </ul>
      </div>'}".html_safe
    end
  end




end
