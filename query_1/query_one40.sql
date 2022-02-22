
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Software Developer' 
			and sp.to_date >= '2012-09-27 12:03:25' and sp.from_date <= '2046-10-01 06:05:13'
			and sp.company in (select name from tabCompany where parent_company = '4company')
