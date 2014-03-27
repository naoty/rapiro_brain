require "wiringpi"

class Brain
  def initialize
    @serial_port = WiringPi::Serial.new("/dev/ttyAMA0", 57600)
  end

  def move
    @serial_port.puts("#M1")
  end

  def stop
    @serial_port.puts("#M0")
  end

  def blink
    @serial_port.puts("#M6")
    sleep 1
    @serial_port.puts("#M7")
    sleep 1
    @serial_port.puts("#M8")
  end
end
