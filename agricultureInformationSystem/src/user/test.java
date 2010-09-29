package user;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class test {
	public static void main(String argv[]){
		String username="user";
		String password="user";
		userInfoDao us=new userInfoDao();
		Configuration cfg=new Configuration().configure();
        SessionFactory sf =cfg.buildSessionFactory();
        Session session = sf.openSession();
		Transaction tx = session.beginTransaction();				
		/*userInfoDao user = (userInfoDao) session.createQuery(
			     "from userInfoDao u where u.username='" + username
			       + "' and u.password='" + password + "'").uniqueResult();
			     System.out.println(user.getIdentity());
		*/
	    Query q=session.createQuery("from userInfoDao u ");
		tx.commit();	
		List list = q.list();
		Iterator it = list.iterator();
		while(it.hasNext()){
			us = (userInfoDao) it.next();
			String identity;				    
			identity=us.getIdentity();	
			System.out.println(us.getIdentity()+"\n"+us.getUsername());
		}
	}
}
