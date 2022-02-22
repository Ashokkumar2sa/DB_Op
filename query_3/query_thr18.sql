
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Associate'
			and sp.to_date >= '2043-05-05 17:12:07' and sp.from_date <= '2087-03-02 23:41:00' and sp.company = '8company'
