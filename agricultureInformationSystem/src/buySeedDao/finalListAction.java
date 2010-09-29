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

public class finalListAction extends Action{
	public ActionForward execute(ActionMapping mapping,
			ActionForm form,
			HttpServletRequest request,
			HttpServletResponse response)
			throws IOException, ServletException {
				String target = new String("failure");
				if ( form != null ) {
					finalListForm finalListForm = (finalListForm)form;
					String materialCount=finalListForm.getMaterialCount();
					String materialName=finalListForm.getMaterialName();
					String materialPrice=finalListForm.getMaterialPrice();
					String taskId=finalListForm.getTaskId();
					String seedName=finalListForm.getSeedName();
					String seedCount=finalListForm.getSeedCount();
					finalList fl=new finalList();
					fl.setMaterialCount(materialCount);
					fl.setMaterialName(materialName);
					fl.setMaterialPrice(materialPrice);
					fl.setId(Integer.parseInt(taskId));
					fl.setSeedCount(seedCount);
					fl.setSeedName(seedName);
					Configuration cfg=new Configuration().configure();
		            SessionFactory sf =cfg.buildSessionFactory();
		            Session session = sf.openSession();
					Transaction tx = session.beginTransaction();		
					session.save(fl);
					tx.commit();	
					session.close();
					request.setAttribute("taskId", taskId);
					System.out.println("error");
					if(finalListForm!=null)
						target = new String("success");
				}
				return (mapping.findForward(target));
			}
}
