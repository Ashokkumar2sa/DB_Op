
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Researcher' 
			and sp.to_date >= '2086-04-08 07:32:47' and sp.from_date <= '2096-03-30 22:18:13'
			and sp.company in (select name from tabCompany where parent_company = '5company')
