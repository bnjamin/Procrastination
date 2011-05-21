require "rubygems"
require "sinatra"

motivations = [ "We are what we repeatedly do; excellence, then, is not an act but a habit. - Aristotle",
                "The journey of a thousand miles must begin with a single step. - Lao Tzu",
                "Get back to work!",
                "You would get so much work done if you didn't browse around the web",
                "Stay calm and get back to work", 
                "You are awesome, especially if you would get some work done."
]

get "/*" do
  motivation = motivations[rand(motivations.size)]
  "<html>" + "<head><title>" + motivation + "</title></head>" + "<body>" + "<div style='width:1000px; padding: 40px; margin: auto; margin-top: 300px; background: #ffff77;'>" + "<h1 style='font-size:40px; text-align: center;'>" + motivation + "</h1>" + "</div>" + "</body>" + "</html>"
end
