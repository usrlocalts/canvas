require 'spec_helper'
require 'java'
import java.awt.Color

describe Line do

  context "draw a line" do

    it "Canvas calls the paint function" do
      frame = double("frame")
      allow(frame).to receive(:setDefaultCloseOperation)
      allow(frame).to receive(:add)
      allow(frame).to receive(:validate)
      allow(frame).to receive(:setSize)
      allow(frame).to receive(:setVisible)
      allow(frame).to receive(:addMouseListener)
      allow(javax.swing.JFrame).to receive(:new).and_return(frame)
      expect(frame).to receive(:repaint)
      Canvas.new.add(Line.new(10,10,100,100,Color.red))
    end

  end

end