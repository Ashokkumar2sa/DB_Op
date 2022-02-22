
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Business Development Manager' 
			and sp.to_date >= '2042-09-01 16:42:59' and sp.from_date <= '2077-12-11 09:47:39'
			and sp.company in (select name from tabCompany where parent_company = '8company')
