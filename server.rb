require 'socket'

def start_server(address, port)
  server_socket = TCPServer.new(address, port)
  puts "Server rodando.. #{address} #{port}"

  loop do
    client_socket = server_socket.accept
    data = client_socket.recv(1024)
    puts "#{client_socket.peeraddr[2]} Mensagem: #{data}"
    client_socket.close
  end
end

if __FILE__ == $0
  begin
    HOST = 'localhost'
    PORT = 5000
    start_server(HOST, PORT)
  rescue => e
    puts "Erro ao iniciar o servidor: #{e.message}"
  end
end
