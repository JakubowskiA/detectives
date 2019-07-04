#Detectives
d1 = Detective.create(name: "Nancy Drew", team: "Bess, George, and Ned", home: "River Heights")
d2 = Detective.create(name: "Sherlock Holmes", team: "John Watson", home: "221B Baker Street")
d3 = Detective.create(name: "P.I. Tiful", team: "He works alone", home: "Wherever he happens to be")

#Cases
c1 = Case.create(title: "The Secret of the Old Clock", year: 1930, solved: true, detective_id: d1.id)
c2 = Case.create(title: "A Study in Pink", year: 2010, solved: true, detective_id: d2.id)
c3 = Case.create(title: "Heistcream", year: 2018, solved: false, detective_id: d3.id)
c4 = Case.create(title: "Theftovers", year: 2019, solved: false, detective_id: d3.id)
c5 = Case.create(title: "The Hidden Staircase", year: 1930, solved: true, detective_id: d1.id)
c6 = Case.create(title: "The Hounds of Baskervilles", year: 1902, solved: true, detective_id: d2.id)
c7 = Case.create(title: "The Beast of Baker Street", year: 2019, solved: false, detective_id: d2.id)
