
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Accountant' 
			and sp.to_date >= '2015-08-12 05:48:24' and sp.from_date <= '2026-06-19 08:45:38'
			and sp.company in (select name from tabCompany where parent_company = '7company')
