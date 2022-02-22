
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Accountant' 
			and sp.to_date >= '2026-07-31 01:59:43' and sp.from_date <= '2044-03-27 06:31:27'
			and sp.company in (select name from tabCompany where parent_company = '8company')
