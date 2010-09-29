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

public class materialListAction extends Action{
	public ActionForward execute(ActionMapping mapping,
			ActionForm form,
			HttpServletRequest request,
			HttpServletResponse response)
			throws IOException, ServletException {
				String target = new String("failure");
				if ( form != null ) {
					materialListForm materialListForm = (materialListForm)form;
					String materialCount=materialListForm.getMaterialCount();	
					String materialName=materialListForm.getMaterialName();
					String materialPrice=materialListForm.getMaterialPrice();
					String taskId=materialListForm.getTaskId();
					materialList ml=new materialList();
					ml.setMaterialCount(materialCount);
					ml.setMaterialName(materialName);
					ml.setMaterialPrice(materialPrice);
					ml.setId(Integer.parseInt(taskId));
					Configuration cfg=new Configuration().configure();
		            SessionFactory sf =cfg.buildSessionFactory();
		            Session session = sf.openSession();
					Transaction tx = session.beginTransaction();		
					session.save(ml);
					tx.commit();	
					session.close();
					request.setAttribute("taskId", taskId);
					System.out.println("error");
					if(materialListForm!=null)
						target = new String("success");
				}
				return (mapping.findForward(target));
			}
}
