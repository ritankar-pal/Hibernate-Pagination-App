package in.ineuron.service;
import java.util.ArrayList;
import java.util.List;
import in.ineuron.dao.InsurancePolicyDao;
import in.ineuron.dao.InsurancePolicyDaoImpl;
import in.ineuron.dto.InsurancePolicyDTO;
import in.ineuron.model.InsurancePolicy;


public class InsurancePolicyServiceImpl implements InsurancePolicyService {
	
	InsurancePolicyDao dao;
	
	public InsurancePolicyServiceImpl() {
		dao = new InsurancePolicyDaoImpl();
	}

	@Override
	public long fetchPagesCount(int pageSize) {
		Long totalRecords = dao.getTotalRecordsCount();
		Long pagesCount = totalRecords / pageSize;
		
		if(totalRecords % pageSize != 0) {
			pagesCount++;
		}
	
		return pagesCount;
	}

	@Override
	public List<InsurancePolicyDTO> fetchPageData(int pageSize, int pageNo) {
		
		int startPosition = 0;
		
		List<InsurancePolicyDTO> list = new ArrayList<>();
		
		//fetching the data from DAO::
		List<InsurancePolicy> entity = dao.getPageData(pageSize, startPosition);
		
		entity.forEach(elem ->{
			InsurancePolicyDTO dto = new InsurancePolicyDTO();
			dto.setPid(elem.getPid());
			dto.setPname(elem.getPname());
			dto.setPtype(elem.getPtype());
			dto.setTenure(elem.getTenure());
			
			list.add(dto);
		});
	
		return list; //returning to the controller
	}

}
