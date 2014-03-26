module ApplicationHelper
  def page_title title=nil
    return app_name if title.nil? or title.empty?
    app_name + ' - ' + title
  end

  def app_name
    'PhotoSite'
  end

  def home_url
    '/'
  end

  def url_suffix
    '.html'
  end

  def create_url url=nil
    create_link_url url
  end
  def create_url *url
    create_link_url url.join('/')
  end
  def create_link_url url
    return home_url if url.nil? or url.empty?
    url = home_url + url unless url.starts_with? home_url
    url += url_suffix unless url.end_with? url_suffix
    url
  end
end
