package buySeedDao;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class finalList {
	private String materialName;
	private String materialCount;
	private String materialPrice;
	private int id;
	private String seedName;
	private String seedCount;
	public int getId(){
		return id;
	}
	public void setId(int id){
		this.id=id;
	}
	public String getMaterialName() { 
		return materialName; 
	}
	public void setMaterialName(String materialName) { 
		this.materialName = materialName; 
	}
	public String getMaterialCount() { 
		return materialCount; 
	}
	public void setMaterialCount(String materialCount) { 
		this.materialCount = materialCount; 
	}
	public String getSeedName() { 
		return seedName; 
	}
	public void setSeedName(String seedName) { 
		this.seedName = seedName; 
	}
	public String getSeedCount() { 
		return seedCount; 
	}
	public void setSeedCount(String seedCount) { 
		this.seedCount = seedCount; 
	}
	public String getMaterialPrice() { 
		return materialPrice; 
	}
	public void setMaterialPrice(String materialPrice) { 
		this.materialPrice = materialPrice; 
	}
	public finalList getLastFinalList(){
		finalList fl=new finalList();
		Configuration cfg=new Configuration().configure();
        SessionFactory sf =cfg.buildSessionFactory();
        Session session = sf.openSession();
		Transaction tx = session.beginTransaction();	
		Query q = session.createQuery("from finalList as p") ;
		tx.commit();
		List l = q.list() ;
		Iterator iter = l.iterator() ;
		if(iter.hasNext()){
		   fl = (finalList)iter.next() ;
		}
		System.out.print(fl.getMaterialName());
		return fl;
	}
}
