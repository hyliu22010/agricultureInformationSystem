package user;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;


public class loginAction extends Action {
	String username,password;
	public ActionForward execute(ActionMapping mapping,
			ActionForm form,
			HttpServletRequest request,
			HttpServletResponse response)
			throws IOException, ServletException {
				String target = new String("failure");
				if ( form != null ) {
					loginForm loginForm = (loginForm)form;
					username=loginForm.getUsername();
					password=loginForm.getPassword();
					HttpSession sess=request.getSession();
					sess.setAttribute("username", username);					
					Configuration cfg=new Configuration().configure();
		            SessionFactory sf =cfg.buildSessionFactory();
		            Session session = sf.openSession();
					Transaction tx = session.beginTransaction();				
					userInfoDao user = (userInfoDao) session.createQuery(
						     "from userInfoDao u where u.username='" + username
						       + "' and u.password='" + password + "'").uniqueResult();
					System.out.println(user.getIdentity());
				    session.save(user);
					tx.commit();	
				    String identity;				    
					identity=user.getIdentity();	
					sess.setAttribute("identity", identity);
					session.close();
					if(user!=null)
						target = new String(identity);
				}
				return (mapping.findForward(target));
			}

}
