package buySeedDao;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
public class seedListAction extends Action{
	public ActionForward execute(ActionMapping mapping,
			ActionForm form,
			HttpServletRequest request,
			HttpServletResponse response)
			throws IOException, ServletException {
				String target = new String("failure");
				if ( form != null ) {
					seedListForm seedListForm = (seedListForm)form;
					String seedCount=seedListForm.getSeedCount();	
					String seedName=seedListForm.getSeedName();
					String taskId=seedListForm.getTaskId();
					seedList sl=new seedList();
					sl.setSeedCount(seedCount);
					sl.setSeedName(seedName);
					sl.setId(Integer.parseInt(taskId));
					Configuration cfg=new Configuration().configure();
		            SessionFactory sf =cfg.buildSessionFactory();
		            Session session = sf.openSession();
					Transaction tx = session.beginTransaction();		
					session.save(sl);
					tx.commit();	
					session.close();
					request.setAttribute("taskId", taskId);
					System.out.println("error");
					if(seedListForm!=null)
						target = new String("success");
				}
				return (mapping.findForward(target));
			}

}
