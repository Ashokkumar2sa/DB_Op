
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Designer' 
			and sp.to_date >= '2002-12-20 00:34:46' and sp.from_date <= '2090-02-27 18:02:05'
			and sp.company in (select name from tabCompany where parent_company = '6company')
