require 'socket'

def start_client(address, port)
  client_socket = TCPSocket.new(address, port)
  print 'Digite uma mensagem: '
  message = gets.chomp

  client_socket.write(message)
  client_socket.close
end

if __FILE__ == $0
  DESTINATION = 'localhost'
  PORT = 5000
  start_client(DESTINATION, PORT)
end
