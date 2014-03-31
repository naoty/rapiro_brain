require "wiringpi"

class Brain
  def initialize
    @serial_port = WiringPi::Serial.new("/dev/ttyAMA0", 57600)
  end

  def move
    @serial_port.serialPuts("#M1")
  end

  def stop
    @serial_port.serialPuts("#M0")
  end

  def wriggle
    @serial_port.serialPuts("#M6")
    sleep 1
    @serial_port.serialPuts("#M7")
    sleep 1
    @serial_port.serialPuts("#M8")
  end

  def die
    @serial_port.serialClose
  end
end
