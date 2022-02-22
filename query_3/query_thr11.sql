
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Administrative Officer'
			and sp.to_date >= '2027-11-06 11:23:54' and sp.from_date <= '2057-05-27 10:16:55' and sp.company = '6company'
