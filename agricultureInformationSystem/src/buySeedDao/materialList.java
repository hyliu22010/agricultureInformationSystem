package buySeedDao;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class materialList {
	private String materialName;
	private String materialCount;
	private String materialPrice;
	private int id;
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
	public String getMaterialPrice() { 
		return materialPrice; 
	}
	public void setMaterialPrice(String materialPrice) { 
		this.materialPrice = materialPrice; 
	}
	public materialList getLastMaterialList(){
		materialList ml=new materialList();
		Configuration cfg=new Configuration().configure();
        SessionFactory sf =cfg.buildSessionFactory();
        Session session = sf.openSession();
		Transaction tx = session.beginTransaction();	
		Query q = session.createQuery("from materialList as p") ;
		tx.commit();
		List l = q.list() ;
		Iterator iter = l.iterator() ;
		if(iter.hasNext()){
		   ml = (materialList)iter.next() ;
		}
		System.out.print(ml.getMaterialName());
		return ml;
	}
	public static void main(String args[]){
		materialList ml=new materialList();
		ml.getLastMaterialList();
	}
}
