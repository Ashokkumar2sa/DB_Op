
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Secretary'
			and sp.to_date >= '2069-12-03 06:33:40' and sp.from_date <= '2084-02-18 02:26:59' and sp.company = '7company'
