package sowPlanDao;

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

import buySeedDao.finalList;
import buySeedDao.finalListForm;



public class makePlanAction extends Action {
	public ActionForward execute(ActionMapping mapping,
			ActionForm form,
			HttpServletRequest request,
			HttpServletResponse response)
			throws IOException, ServletException {
				String target = new String("failure");
				if ( form != null ) {
					makePlanForm makePlanForm = (makePlanForm)form;
					String taskId=makePlanForm.gettaskId();
					makePlanForm.setisComplete(false);
					makePlanForm.setisSubmit(false);
					Configuration cfg=new Configuration().configure();
		            SessionFactory sf =cfg.buildSessionFactory();
		            Session session = sf.openSession();
					Transaction tx = session.beginTransaction();		
					session.save(makePlanForm);
					tx.commit();	
					session.close();
					System.out.print(request.getParameter("taskId")+"\n"+request.getAttribute("taskId"));
					request.setAttribute("taskId",taskId);
					System.out.println("error");
					if(makePlanForm!=null)
						target = new String("success");
				}
				return (mapping.findForward(target));
			}
	public makePlanForm getSowPlan(){
		makePlanForm makePlan=new makePlanForm();
		Configuration cfg=new Configuration().configure();
        SessionFactory sf =cfg.buildSessionFactory();
        Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		
		return makePlan;
	}
}
