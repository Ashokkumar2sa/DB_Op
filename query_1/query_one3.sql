
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Designer' 
			and sp.to_date >= '2028-01-08 01:33:29' and sp.from_date <= '2047-09-09 08:07:53'
			and sp.company in (select name from tabCompany where parent_company = '6company')
