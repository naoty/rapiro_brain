require "wiringpi"

class Brain
  def initialize
    @serial_port = WiringPi::Serial.new("/dev/ttyAMA0", 57600)
  end

  def move(command)
    @serial_port.serialPuts("##{command}")
  end

  def forward
    @serial_port.serialPuts("#M1")
  end

  def stop
    @serial_port.serialPuts("#M0")
  end

  def die
    @serial_port.serialClose
  end
end
