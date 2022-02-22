
  select sum(spd.vacancies) as vacancies,
			sum(spd.total_estimated_cost) as total_estimated_cost
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Researcher' 
			and sp.to_date >= '2027-04-08 10:39:48' and sp.from_date <= '2058-12-03 01:22:41'
			and sp.company in (select name from tabCompany where parent_company = '8company')
