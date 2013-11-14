module ApplicationHelper
def markdown(content)
  @markdown ||= Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, space_after_headers: true, fenced_code_blocks: true)
  @markdown.render(content)
end

def include_javascript (file)
    s = " <script type=\"text/javascript\">" + render(:file => file) + "</script>"
    content_for(:head, raw(s))
end

end
