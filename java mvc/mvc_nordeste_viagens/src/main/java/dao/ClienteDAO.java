package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import database.ConexaoDataBase;
import model.ClienteModel;



public class ClienteDAO {
	
    public void createClient(ClienteModel client) {
    	
    	String sql = "INSERT INTO usuario (cpf, nome, dataNasc, endereco, email, telefone, createDate ) VALUES (?, ?, ?, ? ,? ,? ,?)";

    	Connection connection = ConexaoDataBase.createConnection();
    	
    	try (PreparedStatement stmt = connection.prepareStatement(sql)){
    		
    		
        	
    		Date bornDate = Date.valueOf(client.getBornDate());
    		LocalDate createdDate = LocalDate.now();
    		Date sqlCreatedDate = Date.valueOf(createdDate);
    		
        	stmt.setLong(1, client.getCpf());
        	stmt.setString(2, client.getNome());
        	stmt.setDate(3, bornDate);
        	stmt.setString(4, client.getAdress());
        	stmt.setString(5, client.getEmail());
            stmt.setLong(6, client.getTel());
            stmt.setDate(7, sqlCreatedDate);
            
            stmt.executeUpdate();
            stmt.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public ClienteModel findById(long id){
    	
    	String sql = "SELECT * FROM usuario WHERE id = ?";
    	ClienteModel client = null;
    	
    	try {
    		Connection connection = ConexaoDataBase.createConnection();
    		PreparedStatement stmt = connection.prepareStatement(sql);
    		
        	
        	stmt.setLong(1, id);
            ResultSet result = stmt.executeQuery();
            if (result.next()) {
            	
            	
            	ClienteModel targetClient = new ClienteModel();
            	targetClient.setId(result.getLong(1));
            	targetClient.setCpf(result.getLong(2));
            	targetClient.setNome(result.getString(3));
            	targetClient.setBornDate(result.getDate(4).toLocalDate());
            	targetClient.setAdress(result.getString(5));
            	targetClient.setEmail(result.getString(6));
            	targetClient.setTel(result.getLong(7));
            	targetClient.setCreatedTime(result.getDate(8).toLocalDate());
            	return targetClient;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
		return client;
    	
    }
    
    public void deleteById (long id){
    	
    	
    	String sql = "DELETE FROM usuario WHERE id = ?";
    	
    	try {
    		
    		Connection connection = ConexaoDataBase.createConnection();
    		PreparedStatement stmt = connection.prepareStatement(sql);
    		stmt.setLong(1, id);
            int rowsAffected = stmt.executeUpdate();
            
            if (rowsAffected > 0) {
            	System.out.println("Cliente " + id + " deletado com sucesso");
            } else {
            	System.out.println("Nenhum dado deletado");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
  //LISTAR
  	public List<ClienteModel> findAll() {
      	
      	
      	List<ClienteModel> clients = new ArrayList<>();
      	String sql = "SELECT * FROM usuario";
      	
      	try {
      	
      		Connection connection = ConexaoDataBase.createConnection();
      		PreparedStatement stmt = connection.prepareStatement(sql);
      		ResultSet result = stmt.executeQuery();

            while (result.next()) {

            	ClienteModel client = new ClienteModel();
            	client = new ClienteModel();
            	client.setId(result.getLong(1));
            	client.setCpf(result.getLong(2));
            	client.setNome(result.getString(3));
            	client.setBornDate(result.getDate(4).toLocalDate());
            	client.setAdress(result.getString(5));
            	client.setEmail(result.getString(6));
            	client.setTel(result.getLong(7));
            	client.setCreatedTime(result.getDate(8).toLocalDate());
            	clients.add(client);
              }
          } catch (SQLException e) {
              e.printStackTrace();
          }
      	return clients;
      }
    
    public void updateClient (ClienteModel client){
    	
   
    	String sql = "UPDATE usuario "
    			+ "SET cpf = ?,  nome = ?, dataNasc = ?, endereco = ?, email = ?, telefone = ? "
    			+ "WHERE id = ?";
    	
    	try{
    		
    		Connection connection = ConexaoDataBase.createConnection();
    		PreparedStatement stmt = connection.prepareStatement(sql);
        	
    		Date bornDate = Date.valueOf(client.getBornDate());
        	stmt.setLong(1, client.getCpf());
        	stmt.setString(2, client.getNome());
        	stmt.setDate(3, bornDate);
        	stmt.setString(4, client.getAdress());
        	stmt.setString(5, client.getEmail());
            stmt.setLong(6, client.getTel());
            stmt.setLong(7, client.getId());
            stmt.executeUpdate();
         
            
        } catch (SQLException e) {

            e.printStackTrace();
        }
    }
}


