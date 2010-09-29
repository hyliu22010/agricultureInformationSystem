package buySeedDao;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class seedList {
	private String seedName;
	private String seedCount;
	private int id;
	public int getId(){
		return id;
	}
	public void setId(int id){
		this.id=id;
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
	public seedList getLastSeedList(){
		seedList sl=new seedList();
		Configuration cfg=new Configuration().configure();
        SessionFactory sf =cfg.buildSessionFactory();
        Session session = sf.openSession();
		Transaction tx = session.beginTransaction();	
		Query q = session.createQuery("from seedList as p") ;
		tx.commit();
		List l = q.list() ;
		Iterator iter = l.iterator() ;
		if(iter.hasNext()){
		   sl = (seedList)iter.next() ;
		}
		return sl;
	}
}
