require 'erb'

def get_items
  ['bread', 'milk', 'eggs', 'spam']
end

def get_template
  %{
        <DOCTYPE html  "-//W3C//DTD  1.0 //EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

    <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
    <head>
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
            <title>Shopping List for <%= @date.strftime('%A, %d %B %Y') %></title>
        </head>
        <body>
                 <h1>Shopping List for <%= @date.strftime('%A, %d %B %Y') %></h1>
                <p>You need to buy:</p>
                <ul>
                  <% for @item in @items %>
                    <li><%= h(@item) %></li>
                  <% end %>
                </ul>
        </body>
        </html>
  }
end

class ShoppingList
  include ERB::Util
  attr_accessor :items, :template, :date

  def initialize(items, template, date=Time.now)
    @date = date
    @items = items
    @template = template
  end

  def render
    ERB.new(@template).result(binding)
  end
  
  def get_binding
    binding
  end

  def save(file)
    File.open(file, "w+") do |f|
      f.write(render)
    end
  end

end

list = ShoppingList.new(get_items, get_template)
list.save(File.join(ENV['HOME'], 'list.html'))