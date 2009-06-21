require 'sinatra'
require 'progress_color'
require 'enumerator'

get "/" do
  <<-HTML
    <a href="/text">Text</a><br/>
    <a href="/bars">Progress-bars</a>
  HTML
end

get "/text" do
  (0..100).map do |pct|
    %(<span style="color: ##{ProgressColor.at(pct/100.0)}">#{pct}</span>)
  end.join("<br/>")
end

get "/bars" do
  0.enum_for(:step, 100, 10).map do |pct|
    %(<div style="height: 16px; border: 1px solid #888; margin: 1px 0">
        <div style="background: ##{ProgressColor.at(pct/100.0)}; width: #{[pct, 1].max}%; height: 100%">
        </div>
      </div>)
  end.join("\n")
end
