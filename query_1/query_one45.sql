
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Associate' 
			and sp.to_date >= '2082-12-21 17:45:22' and sp.from_date <= '2097-10-27 04:01:53'
			and sp.company in (select name from tabCompany where parent_company = '7company')
