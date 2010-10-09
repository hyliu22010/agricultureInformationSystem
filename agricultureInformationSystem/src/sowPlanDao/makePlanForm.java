package sowPlanDao;

import java.util.Iterator;
import java.util.List;

import org.apache.struts.action.ActionForm;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class makePlanForm extends ActionForm{
	private String taskId;
	private String planId;
	private String baseName;
	private String soilName;
	private String soilArea;
	private String varietyName;
	private String seedOrigin;
	private String seedTime;
	private String farmerName;
	private String recordTime;
	private String project;
	private String sgz;
	private String ytbg;
	private String jzcy;
	private String bzsj;
	private String dtbg;
	private String ytcy;
	private String fnsf;
	private String bcfz;
	private String reap;
	private boolean isSubmit; 
	private boolean isComplete;
	private String suggest;
	public String gettaskId(){
		return taskId;
	}
	public void settaskId(String taskId){
		this.taskId=taskId;
	}
	public String getplanId(){
		return planId;
	}
	public void setplanId(String planId){
		this.planId=planId;
	}
	public String getbaseName(){
		return baseName;
	}
	public void setbaseName(String baseName){
		this.baseName=baseName;
	}
	public String getsoilName(){
		return soilName;
	}
	public void setsoilName(String soilName){
		this.soilName=soilName;
	}
	public String getsoilArea(){
		return soilArea;
	}
	public void setsoilArea(String soilArea){
		this.soilArea=soilArea;
	}
	public String getvarietyName(){
		return varietyName;
	}
	public void setvarietyName(String varietyName){
		this.varietyName=varietyName;
	}
	public String getseedOrigin(){
		return seedOrigin;
	}
	public void setseedOrigin(String seedOrigin){
		this.seedOrigin=seedOrigin;
	}
	public String getseedTime(){
		return seedTime;
	}
	public void setseedTime(String seedTime){
		this.seedTime=seedTime;
	}
	public String getfarmerName(){
		return farmerName;
	}
	public void setfarmerName(String farmerName){
		this.farmerName=farmerName;
	}
	public String getrecordTime(){
		return recordTime;
	}
	public void setrecordTime(String recordTime){
		this.recordTime=recordTime;
	}
	public String getproject(){
		return project;
	}
	public void setproject(String project){
		this.project=project;
	}
	public String getsgz(){
		return sgz;
	}
	public void setsgz(String sgz){
		this.sgz=sgz;
	}
	public String getytbg(){
		return ytbg;
	}
	public void setytbg(String ytbg){
		this.ytbg=ytbg;
	}
	public String getjzcy(){
		return jzcy;
	}
	public void setjzcy(String jzcy){
		this.jzcy=jzcy;
	}
	public String getbzsj(){
		return bzsj;
	}
	public void setbzsj(String bzsj){
		this.bzsj=bzsj;
	}
	public String getdtbg(){
		return dtbg;
	}
	public void setdtbg(String dtbg){
		this.dtbg=dtbg;
	}
	public String getytcy(){
		return ytcy;
	}
	public void setytcy(String ytcy){
		this.ytcy=ytcy;
	}
	public String getfnsf(){
		return fnsf;
	}
	public void setfnsf(String fnsf){
		this.fnsf=fnsf;
	}
	public String getbcfz(){
		return bcfz;
	}
	public void setbcfz(String bcfz){
		this.bcfz=bcfz;
	}
	public String getreap(){
		return reap;
	}
	public void setreap(String reap){
		this.reap=reap;
	}
	public boolean getisSubmit(){
		return isSubmit;
	}
	public void setisSubmit(boolean isSubmit){
		this.isSubmit=isSubmit;
	}
	public boolean getisComplete(){
		return isComplete;
	}
	public void setisComplete(boolean isComplete){
		this.isComplete=isComplete;
	}
	public String getsuggest(){
		return suggest;
	}
	public void setsuggest(String suggest){
		this.suggest=suggest;
	}
	public makePlanForm[] getSowPlan(){
		int count=0;
		makePlanForm makePlan[]=new makePlanForm[1000];
		Configuration cfg=new Configuration().configure();
        SessionFactory sf =cfg.buildSessionFactory();
        Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		Query q = session.createQuery("from makePlanForm c ") ;
		tx.commit();
		List l = q.list() ;
		Iterator iter = l.iterator() ;
		while(iter.hasNext()){
			makePlan[count] = new makePlanForm();
			makePlan[count] =(makePlanForm)iter.next() ;
			count++;
			}
		return makePlan;
	}
	public void updateSowPlan(String planId){
		makePlanForm makePlan = new makePlanForm();
		Configuration cfg=new Configuration().configure();
        SessionFactory sf =cfg.buildSessionFactory();
        Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		Query q = session.createQuery("from makePlanForm c where c.planId='" + planId+ "'") ;
		tx.commit();
		List l = q.list() ;
		Iterator iter = l.iterator() ;
		makePlan=(makePlanForm)iter.next() ;
		makePlan.setisSubmit(true);
		Configuration cfg1=new Configuration().configure();
        SessionFactory sf1 =cfg.buildSessionFactory();
        Session session1 = sf.openSession();
		Transaction tx1 = session.beginTransaction();
		session1.update(makePlan);
		tx1.commit();	
	}
	public makePlanForm getAuditPlan(){
		makePlanForm makePlan = new makePlanForm();
		Configuration cfg=new Configuration().configure();
        SessionFactory sf =cfg.buildSessionFactory();
        Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		Query q = session.createQuery("from makePlanForm c where c.isSubmit=true and c.isComplete=false") ;
		tx.commit();
		List l = q.list() ;
		Iterator iter = l.iterator() ;
		makePlan=(makePlanForm)iter.next() ;
		return makePlan;
	}
	public void update(makePlanForm mp){
		Configuration cfg=new Configuration().configure();
        SessionFactory sf =cfg.buildSessionFactory();
        Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		session.update(mp);
		tx.commit();
	}
	public static void main(String[] args){
		makePlanForm makePlan = new makePlanForm();
		makePlan=makePlan.getAuditPlan();
	}
}
