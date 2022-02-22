
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Associate' 
			and sp.to_date >= '2073-11-30 05:53:21' and sp.from_date <= '2089-11-10 23:31:51'
			and sp.company in (select name from tabCompany where parent_company = '8company')
