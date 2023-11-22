package in.ineuron.model;
import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.annotations.NamedQuery;


@Entity
@NamedQuery(name = "GET_POLICIES_COUNT", query = "select count(*) from in.ineuron.model.InsurancePolicy")
@NamedQuery(name = "GET_POLICIES", query = "from in.ineuron.model.InsurancePolicy")
public class InsurancePolicy implements Serializable{

	private static final long serialVersionUID = 1L;
	
	static {
		System.out.println("Insurance Policy .class file generated");
	}
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer pid;
	
	private String pname; 
	private String ptype;

	private Integer tenure;
	
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPtype() {
		return ptype;
	}
	public void setPtype(String ptype) {
		this.ptype = ptype;
	}
	public Integer getTenure() {
		return tenure;
	}
	public void setTenure(Integer tenure) {
		this.tenure = tenure;
	}
	
	@Override
	public String toString() {
		return "InsurancePolicy [pid=" + pid + ", pname=" + pname + ", ptype=" + ptype + ", tenure=" + tenure + "]";
	}

}
