package user;

public class userInfoDao {
	private String username;
	private String password;
	private String identity;
	private int id;
	public int getId(){
		return id;
	}
	public void setId(int id){
		this.id=id;
	}
	public String getUsername() { 
		return username; 
	}
	public void setUsername(String username) { 
		this.username = username; 
	}
	public String getIdentity() { 
		return identity; 
	}
	public void setIdentity(String identity) { 
		this.identity = identity; 
	}
	public String getPassword() { 
		return password; 
	}
	public void setPassword(String password) { 
		this.password = password; 
	}
}
