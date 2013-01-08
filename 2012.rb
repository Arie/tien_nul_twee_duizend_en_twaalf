require 'date'

matches = [
  { :date => Date.new(2012, 1, 5),    :winners => ['Danny',      'Iain'],       :losers => ['Quinten',      'Alex'] },
  { :date => Date.new(2012, 1, 11),   :winners => ['Danny',      'Menno'],      :losers => ['Andre',        'Lennaerd'] },
  { :date => Date.new(2012, 1, 23),   :winners => ['Hillebrand', 'Rob'],        :losers => ['Vincent',      'Maikel'] },
  { :date => Date.new(2012, 1, 27),   :winners => ['Patrick',    'Rob'],        :losers => ['Arne',         'Barry'] },

  { :date => Date.new(2012, 2, 2) ,   :winners => ['Roel',       'Iain'],       :losers => ['Kees',         'Kevin'] },
  { :date => Date.new(2012, 2, 10),   :winners => ['Kris',       'Ewout'],      :losers => ['Brian',        'Jacobjob'] },
  { :date => Date.new(2012, 2, 14),   :winners => ['Gert',       'Jacbo'],      :losers => ['Tom',          'Abdu'] },
  { :date => Date.new(2012, 2, 14),   :winners => ['Gert',       'Jacbo'],      :losers => ['Tom',          'Abdu'] },
  { :date => Date.new(2012, 2, 16),   :winners => ['Hillebrand', 'Arne'],       :losers => ['Rob',          'Barry'] },
  { :date => Date.new(2012, 2, 17),   :winners => ['Roel',       'Iain'],       :losers => ['Robin',        'Kees'] },
  { :date => Date.new(2012, 2, 20),   :winners => ['Menno',      'Arie'],       :losers => ['Robin',        'Kees'] },
  { :date => Date.new(2012, 2, 22),   :winners => ['Iain',       'Arie'],       :losers => ['Kees',         'Diederick'] },

  { :date => Date.new(2012, 3, 8),    :winners => ['Brian',      'Arne'],       :losers => ['Marco P',      'Martin'] },
  { :date => Date.new(2012, 3, 13),   :winners => ['Quinten',    'Arie'],       :losers => ['Auke',         'Martin'] },
  { :date => Date.new(2012, 3, 15),   :winners => ['Patrick',    'Hillebrand'], :losers => ['Rob',          'Barry'] },
  { :date => Date.new(2012, 3, 15),   :winners => ['Menno',      'Arie'],       :losers => ['Robin',        'Kees'] },
  { :date => Date.new(2012, 3, 16),   :winners => ['Jacobjob',   'Andre'],      :losers => ['Gert',         'Martin'] },
  { :date => Date.new(2012, 3, 19),   :winners => ['Hillebrand', 'Robbert'],    :losers => ['Barry',        'Patrick'] },
  { :date => Date.new(2012, 3, 19),   :winners => ['Hillebrand', 'Robbert'],    :losers => ['Barry',        'Patrick'] },
  { :date => Date.new(2012, 3, 21),   :winners => ['Hillebrand', 'Robbert'],    :losers => ['Barry',        'Patrick'] },
  { :date => Date.new(2012, 3, 28),   :winners => ['Gert',       'Tom'],        :losers => ['Abdu',         'Ronald'] },
  { :date => Date.new(2012, 3, 30),   :winners => ['Kris',       'Arne'],       :losers => ['Brian',        'Gerben'] },

  { :date => Date.new(2012, 4, 12),   :winners => ['Menno',      'Arie'],       :losers => ['Diederick',    'Robin'] },
  { :date => Date.new(2012, 4, 18),   :winners => ['Hillebrand', 'Robbert'],    :losers => ['Barry',        'Patrick'] },
  { :date => Date.new(2012, 4, 23),   :winners => ['Robbert',    'Abdu'],       :losers => ['Patrick',      'Barry'] },
  { :date => Date.new(2012, 4, 26),   :winners => ['Rob',        'Patrick'],    :losers => ['Hillebrand',   'Barry'] },

  { :date => Date.new(2012, 5, 2),    :winners => ['Robbert',    'Hillebrand'], :losers => ['Hillebrand',   'Barry'] },
  { :date => Date.new(2012, 5, 7),    :winners => ['Kris',       'Arne'],       :losers => ['Jan',          'Brian'], :comment => "EERLOOS :-)!" },
  { :date => Date.new(2012, 5, 7),    :winners => ['Kris',       'Arne'],       :losers => ['Jan',          'Brian'], :comment => "Rematch!" },
  { :date => Date.new(2012, 5, 21),   :winners => ['Martin',     'Ewout'],      :losers => ['Barry',        'Quinten'] },
  { :date => Date.new(2012, 5, 21),   :winners => ['Tom',        'Jacob'],      :losers => ['Gert',         'Ruben'] },

  { :date => Date.new(2012, 6, 5),    :winners => ['Danny',      'Menno'],      :losers => ['Roel',         'Robin'] },
  { :date => Date.new(2012, 6, 12),   :winners => ['Tom',        'Gert'],       :losers => ['Abdu',         'Ruben'] },
  { :date => Date.new(2012, 6, 13),   :winners => ['Tom',        'Jacob'],      :losers => ['Abdu',         'Gert'] },

  { :date => Date.new(2012, 7, 3),    :winners => ['Jacob',      'Patrick'],    :losers => ['Arne',         'Barry'] },
  { :date => Date.new(2012, 7, 4),    :winners => ['Patrick',    'Brian'],      :losers => ['Hillebrand',   'Barry'] },
  { :date => Date.new(2012, 7, 4),    :winners => ['Kris',       'Arne'],       :losers => ['Gerben',       'Brian'] },
  { :date => Date.new(2012, 7, 9),    :winners => ['Auke',       'Jacques'],    :losers => ['Robin',        'Martin'] },
  { :date => Date.new(2012, 7, 13),   :winners => ['Arne',       'Robbert'],    :losers => ['Rob S',        'Martin'], :comment => "Primeur voor Rob!" },
  { :date => Date.new(2012, 7, 16),   :winners => ['Robbert',    'Hillebrand'], :losers => ['Andre',        'Wietse'] },
  { :date => Date.new(2012, 7, 25),   :winners => ['Quinten',    'Robbert'],    :losers => ['Andre',        'Barry'] },

  { :date => Date.new(2012, 8, 3),    :winners => ['Patrick',    'Brian'],      :losers => ['Martijn',      'Barry'] },
  { :date => Date.new(2012, 8, 6),    :winners => ['Kris',       'Arne'],       :losers => ['Martin',       'Jan'] },
  { :date => Date.new(2012, 8, 9),    :winners => ['Firas',      'Rob'],        :losers => ['Brian',        'Iris'] },
  { :date => Date.new(2012, 8, 24),   :winners => ['Rob S',      'Jacques'],    :losers => ['Martin',       'Martijn'] },
  { :date => Date.new(2012, 8, 30),   :winners => ['Samantha',   'Andre'],      :losers => ['Robbert',      'Maikel'] },

  { :date => Date.new(2012, 9, 3),    :winners => ['Robbert',    'Arne'],       :losers => ['Maikel',       'Andre'] },
  { :date => Date.new(2012, 9, 19),   :winners => ['Robbert',    'Patrick'],    :losers => ['Barry',        'Hillebrand'] },
  { :date => Date.new(2012, 9, 28),   :winners => ['Kris',       'Arne'],       :losers => ['Ewout',        'Aswin'], :comment => 'Ein-de-lijk!' },

  { :date => Date.new(2012, 10, 1),   :winners => ['Hillebrand', 'Kolja'],      :losers => ['Rob K',        'Iris'] },
  { :date => Date.new(2012, 10, 2),   :winners => ['Robbert',    'Patrick'],    :losers => ['Edwin E',      'Barry'] },
  { :date => Date.new(2012, 10, 5),   :winners => ['Quinten',    'Gert'],       :losers => ['Edwin S',      'Ruben'] },
  { :date => Date.new(2012, 10, 16),  :winners => ['Danny',      'Jacques'],    :losers => ['Martin',       'Tom'] },
  { :date => Date.new(2012, 10, 18),  :winners => ['Kevin',      'Danny'],      :losers => ['Robin',        'Menno'] },
  { :date => Date.new(2012, 10, 25),  :winners => ['Ewout',      'Firas'],      :losers => ['Gert',         'Aswin'] },
  { :date => Date.new(2012, 10, 25),  :winners => ['Firas',      'Arne'],       :losers => ['Andre',        'Hillebrand'] },
  { :date => Date.new(2012, 10, 29),  :winners => ['Patrick',    'Hillebrand'], :losers => ['Edwin',        'Aswin'] },
  { :date => Date.new(2012, 10, 30),  :winners => ['Robbert',    'Patrick'],    :losers => ['Cakeboss',     'Iris'] },
  { :date => Date.new(2012, 10, 30),  :winners => ['Robbert',    'Patrick'],    :losers => ['Cakeboss',     'Iris'] },

  { :date => Date.new(2012, 11, 7),   :winners => ['Robbert',    'Patrick'],    :losers => ['Wietse',       'Barry'] },
  { :date => Date.new(2012, 11, 23),  :winners => ['Patrick',    'Barry'],      :losers => ['Brian',        'Tom'] },

  { :date => Date.new(2012, 12, 12),  :winners => ['Patrick',    'Hillebrand'], :losers => ['Rob',          'Iris'] },
  { :date => Date.new(2012, 12, 28),  :winners => ['Kris',       'Roel'],       :losers => ['Rob',          'Kees'] }
]


puts "Aantal 10-0 matches: #{matches.count}"
