
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'HR Manager' 
			and sp.to_date >= '2000-02-28 18:19:21' and sp.from_date <= '2042-07-30 01:26:53'
			and sp.company in (select name from tabCompany where parent_company = '4company')
