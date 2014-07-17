#renders a button
class ShapeButton
  def initialize rectangle
    @label = "Button"
    @rectangle = rectangle
  end
  def render(graphics)
    @rectangle.render(graphics)
  end
  def clicked? javaEvent
    @rectangle.clicked?(javaEvent)
  end
end