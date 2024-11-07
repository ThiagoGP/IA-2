0.6::str('dry').
0.3::str('wet').
0.1::str('snow_covered').
0.2::flw('true').
0.8::flw('false').
random_variable(flw, ['true', 'false']).
random_variable(r, ['true', 'false']).
random_variable(v, ['true', 'false']).
0.95::b('true').
0.05::b('false').
0.98::k('true').
0.02::k('false').
0.99::li('true') :- v('true'), b('true'), k('true').
0.01::li('true') :- v('true'), b('true'), k('false').
0.01::li('true') :- v('true'), b('false'), k('true').
0.001::li('true') :- v('true'), b('false'), k('false').
0.3::li('true') :- v('false'), b('true'), k('true').
random_variable(b, ['true', 'false']).
random_variable(k, ['true', 'false']).
random_variable(li, ['true', 'false']).
0.005::li('true') :- v('false'), b('true'), k('false').
0.005::li('true') :- v('false'), b('false'), k('true').
0.0::li('true') :- v('false'), b('false'), k('false').
0.1::r('true') :- str('dry'), flw('true').
0.05::r('true') :- str('dry'), flw('false').
0.3::r('true') :- str('wet'), flw('true').
0.1::r('true') :- str('wet'), flw('false').
0.5::r('true') :- str('snow_covered'), flw('true').
0.2::r('true') :- str('snow_covered'), flw('false').
random_variable(str, ['dry', 'wet', 'snow_covered']).
0.9::v('true') :- r('true').
0.2::v('true') :- r('false').
query(v('true')).
evidence(str('snow_covered')).