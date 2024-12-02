//
//  input.swift
//  day2
//
//  Created by Michiel Horvers on 02/12/2024.
//

import Foundation

let rawInput = """
48 50 51 53 55 56 59 58
12 13 14 16 17 17
10 12 14 17 20 23 26 30
13 14 16 18 19 25
2 3 4 5 8 7 9
19 22 21 23 21
49 51 53 51 53 56 56
16 19 22 21 25
20 22 25 28 25 28 34
38 41 43 43 44 47 50 51
19 22 25 26 26 29 32 29
31 32 32 35 35
43 45 46 46 50
70 71 72 72 78
43 45 49 52 55 57 59 60
19 21 23 27 26
87 88 92 94 95 98 98
12 15 17 19 21 25 27 31
58 59 60 61 63 67 70 76
54 57 60 63 65 66 71 73
78 80 82 83 84 85 90 87
83 84 91 93 94 97 97
55 57 64 65 68 71 73 77
59 62 65 66 71 78
69 67 70 72 73 74 76
45 44 47 50 52 51
42 41 43 44 47 48 48
70 69 70 71 74 75 77 81
60 59 60 61 62 65 66 71
29 28 27 29 32
55 52 55 58 61 60 63 61
57 55 52 53 55 56 56
21 18 20 18 19 22 26
35 34 37 35 37 44
61 59 59 60 62 65 68
43 41 44 44 46 47 50 49
27 26 29 31 31 33 33
39 36 39 39 43
10 9 10 10 13 18
41 40 43 45 47 51 52
16 14 18 20 21 19
44 42 43 44 45 49 49
10 9 11 15 16 19 23
53 51 54 57 61 66
3 1 2 4 10 13
52 50 52 58 56
25 23 26 29 31 32 39 39
9 7 9 14 17 20 24
10 9 10 13 14 16 22 28
64 64 65 66 67
1 1 2 3 5 6 8 6
53 53 56 57 60 61 61
35 35 36 37 40 42 44 48
28 28 31 32 35 41
34 34 35 38 36 39
71 71 72 71 69
52 52 54 51 52 55 58 58
39 39 42 43 42 44 46 50
87 87 88 86 88 91 97
63 63 64 64 66 67 70 73
41 41 44 45 45 42
11 11 11 14 16 16
78 78 81 84 84 86 90
30 30 30 31 34 36 43
61 61 64 66 67 71 73 75
17 17 21 22 23 20
84 84 88 89 89
15 15 19 21 24 28
11 11 14 18 19 26
47 47 53 54 57 59 60 62
93 93 94 99 98
61 61 64 65 70 71 74 74
64 64 67 68 75 78 79 83
59 59 62 69 76
83 87 89 92 93 95 97
72 76 79 82 81
65 69 72 74 76 76
20 24 27 28 30 33 37
2 6 9 12 13 19
27 31 28 31 32
31 35 36 38 39 37 36
23 27 28 30 29 32 32
19 23 25 23 26 29 30 34
43 47 44 47 50 56
9 13 15 17 17 19 21
37 41 43 43 41
79 83 85 87 87 87
17 21 21 23 27
20 24 27 28 30 30 33 40
38 42 46 48 51
41 45 47 51 54 53
48 52 54 56 60 63 63
21 25 29 30 34
73 77 78 82 83 86 93
71 75 81 84 85
79 83 89 90 92 91
25 29 34 37 37
4 8 15 18 19 23
15 19 22 29 30 31 38
69 76 77 80 83
5 10 13 15 18 15
31 36 37 38 38
38 45 48 49 50 51 54 58
15 20 23 26 28 31 38
11 16 14 17 19 21
66 73 75 77 75 76 75
72 77 74 76 76
14 21 23 24 23 26 30
53 58 60 63 60 62 68
59 65 68 71 71 73 76
20 25 27 29 29 31 29
83 89 92 95 95 97 99 99
50 56 58 61 61 63 67
48 54 54 57 58 60 65
75 80 84 86 89 90 93
19 26 28 29 33 32
6 11 12 16 19 19
74 80 83 84 85 89 91 95
3 10 12 16 21
63 70 71 76 77 80
55 62 69 72 73 70
16 21 22 24 27 29 36 36
38 44 51 54 58
9 14 19 20 23 24 30
39 37 35 32 34
52 50 47 46 44 41 39 39
35 34 33 31 30 27 24 20
75 73 70 67 62
20 19 18 16 14 17 14
44 42 43 42 40 39 40
59 57 56 54 55 52 50 50
63 60 59 62 59 57 53
23 21 23 22 16
69 66 63 63 60
66 64 61 59 59 58 61
45 43 43 40 40
46 44 43 43 39
38 37 35 32 32 27
90 89 87 84 80 77 76
60 58 57 54 50 48 49
88 85 83 81 80 76 76
51 49 45 44 40
80 79 77 73 67
80 79 76 70 68 65
50 49 47 41 43
70 67 64 63 57 57
32 30 24 22 20 18 14
81 79 73 71 68 65 59
86 87 86 84 81
89 92 90 87 88
67 70 67 64 61 59 58 58
59 60 58 55 53 51 49 45
51 53 51 48 45 42 41 36
50 53 52 50 47 45 47 46
59 62 61 62 64
63 65 63 62 60 62 62
96 98 99 98 96 93 89
63 66 63 61 64 57
30 32 31 31 30 29
17 18 15 15 14 12 13
1 4 3 3 3
13 15 15 13 10 8 4
62 63 60 58 58 52
80 82 81 77 76
85 88 87 84 81 80 76 79
86 87 85 81 78 78
94 97 96 94 93 90 86 82
58 61 57 55 54 52 46
17 18 15 9 7 5 3
25 26 24 22 16 15 12 15
57 58 52 51 48 47 47
62 64 59 57 53
41 43 36 34 32 31 26
16 16 13 10 7 6 3
39 39 38 37 34 35
32 32 30 28 27 26 25 25
56 56 53 50 47 43
60 60 58 57 54 51 45
29 29 30 29 26 24
79 79 78 80 81
56 56 53 52 53 53
48 48 45 43 46 44 40
80 80 79 80 75
34 34 34 32 31 29 26
11 11 11 9 7 10
62 62 60 60 60
84 84 81 81 78 76 75 71
54 54 54 53 51 45
60 60 59 58 56 55 51 50
85 85 84 80 81
95 95 93 92 88 88
65 65 61 60 58 54
95 95 91 88 81
79 79 72 71 70
46 46 39 38 41
40 40 33 30 30
40 40 34 31 28 24
61 61 56 54 51 44
43 39 36 35 33 31
48 44 41 40 37 35 32 35
53 49 46 44 41 38 38
45 41 40 38 36 34 32 28
42 38 36 33 30 27 24 19
62 58 55 56 54 53
5 1 2 1 2
77 73 70 73 72 70 70
33 29 26 28 24
89 85 82 85 82 76
84 80 79 78 78 75
75 71 71 70 71
76 72 69 67 67 64 64
22 18 17 15 14 11 11 7
31 27 27 24 19
57 53 50 47 43 41
97 93 90 86 83 85
50 46 44 43 41 37 34 34
18 14 10 9 6 2
69 65 61 60 59 57 55 49
73 69 67 65 58 57
22 18 12 11 13
25 21 20 18 17 11 10 10
86 82 80 74 72 69 65
97 93 90 84 77
96 91 90 88 86 85 82
88 83 82 79 78 76 78
22 15 14 13 13
70 65 62 60 57 53
43 36 34 33 32 25
12 7 6 4 2 5 3
20 13 10 8 10 9 7 8
85 80 79 80 77 74 74
18 13 10 11 10 9 5
49 44 45 43 41 34
84 79 76 76 74
60 53 51 51 48 45 44 46
48 42 39 38 37 35 35 35
62 56 56 54 53 52 48
49 42 42 40 37 31
94 88 86 83 82 80 76 73
30 25 21 20 17 18
65 58 57 53 52 49 49
35 29 25 22 21 18 14
37 30 28 27 23 22 21 16
83 77 76 70 68
61 54 53 48 46 47
48 42 40 34 33 31 29 29
87 80 77 70 66
71 66 63 57 56 55 50
80 81 84 86 89 91 88
23 25 26 27 30 32 35 35
82 83 85 87 88 91 95
42 44 47 48 49 52 54 61
90 91 93 94 91 94 96
15 18 15 17 20 21 23 20
86 88 89 91 88 88
1 4 5 8 5 9
57 58 59 56 58 61 63 69
77 79 79 80 81 82 83
87 90 90 93 95 96 95
77 79 80 82 84 85 85 85
43 44 46 47 48 48 49 53
50 52 55 56 57 60 60 67
29 30 32 36 39 41 44
70 73 76 80 81 82 79
5 8 10 11 15 15
5 8 10 14 16 18 22
36 38 40 42 45 48 52 58
84 87 89 94 97 99
29 31 34 35 41 38
43 45 47 52 55 57 57
68 69 71 76 80
79 82 83 85 92 98
31 29 31 34 35 38 41 42
91 88 89 92 95 96 97 94
28 25 28 30 31 34 37 37
48 45 46 49 53
18 15 17 20 27
84 83 85 83 84
9 6 8 9 8 11 10
87 85 86 89 92 91 94 94
10 8 7 10 13 16 20
57 56 58 55 56 57 63
91 89 91 92 94 94 95 96
27 26 28 28 30 31 33 32
88 85 88 90 90 90
72 70 71 71 75
19 18 18 21 27
85 84 87 91 93 96
76 73 74 75 78 79 83 81
78 76 78 82 83 85 85
6 4 8 11 14 18
17 14 18 19 26
54 53 58 60 62
74 73 75 80 78
19 16 23 24 24
81 79 85 88 90 91 95
24 21 24 25 28 34 37 44
86 86 89 92 93
73 73 75 77 79 81 83 82
56 56 58 61 64 65 68 68
24 24 25 27 28 29 31 35
79 79 80 82 85 91
93 93 95 92 94 95 96
9 9 11 10 11 9
79 79 80 77 79 79
1 1 4 7 8 10 9 13
79 79 81 83 85 84 89
69 69 71 73 75 76 76 79
94 94 94 95 96 99 97
28 28 31 31 32 33 33
71 71 72 73 73 77
32 32 35 36 36 41
78 78 79 83 84 87 89 90
11 11 14 18 21 23 25 24
19 19 21 25 28 29 29
78 78 82 85 86 88 90 94
61 61 63 67 68 75
23 23 28 29 31
31 31 38 40 38
84 84 89 90 92 95 96 96
32 32 33 38 42
32 32 33 34 37 42 47
49 53 56 58 61 64 66
54 58 61 62 65 66 65
21 25 27 30 30
42 46 49 50 51 55
58 62 63 65 66 69 72 78
89 93 96 94 96
36 40 37 39 42 44 47 46
81 85 86 85 88 91 91
15 19 20 18 19 20 21 25
75 79 78 80 86
25 29 32 34 37 37 40 43
42 46 49 52 55 58 58 57
5 9 11 13 13 16 17 17
83 87 87 90 91 93 97
19 23 24 27 27 30 36
18 22 23 27 29
8 12 13 14 18 16
19 23 25 29 29
60 64 65 69 72 73 76 80
29 33 34 38 39 44
64 68 69 70 72 78 80
8 12 15 18 25 26 25
39 43 46 47 52 52
41 45 47 54 58
3 7 12 14 15 22
22 27 28 30 32
3 10 13 15 16 15
44 49 51 53 53
1 7 9 10 11 12 13 17
16 21 24 25 30
24 29 30 29 31 33
39 46 49 47 50 51 49
20 25 23 26 26
39 46 47 49 48 50 54
18 24 25 27 26 31
13 18 21 21 23 24 27
32 37 38 38 40 43 40
39 46 48 50 52 52 52
35 40 42 43 43 46 49 53
41 48 48 51 53 60
11 17 20 24 26 28
6 13 15 19 16
80 86 88 92 95 96 98 98
73 79 80 84 86 90
69 74 77 81 82 85 91
16 23 24 27 32 34 36 39
56 62 65 71 74 73
59 66 67 72 72
11 17 20 23 29 30 33 37
40 46 48 51 58 65
57 55 54 51 49 48 46 47
6 5 2 1 1
88 86 84 83 80 79 75
71 70 67 66 60
46 45 43 40 42 39 36
21 19 17 20 17 20
56 55 52 54 53 53
76 75 77 76 73 71 67
55 54 53 56 51
86 84 82 82 80 79
28 25 23 21 21 19 17 18
91 88 85 85 85
83 82 79 78 78 74
43 40 40 38 31
69 68 66 65 64 60 58 57
77 76 74 72 70 69 65 66
71 70 69 65 65
60 57 54 52 48 46 45 41
83 80 78 76 72 66
86 83 76 73 72 71
80 79 77 75 74 68 65 66
53 50 49 47 44 38 37 37
27 24 21 14 12 10 6
51 50 45 43 41 34
45 46 44 41 40 39 36
82 84 83 80 78 77 74 75
45 46 43 42 39 37 37
39 42 41 39 37 34 30
73 76 74 71 70 69 62
13 16 19 18 17 16
18 19 18 17 16 18 15 18
11 13 11 13 12 12
19 22 21 23 19
83 85 84 87 81
75 77 74 74 72 70
22 25 25 22 20 18 15 17
11 14 11 11 11
93 94 92 89 89 88 87 83
16 18 16 16 15 9
25 27 26 22 19 18 15 13
77 78 76 72 71 69 66 67
94 96 95 93 89 89
31 32 31 28 24 22 21 17
36 39 38 35 33 29 23
28 29 26 25 20 17
60 63 61 59 54 52 55
54 57 55 54 53 48 48
32 35 28 26 22
34 36 34 32 29 23 22 17
71 71 68 65 63 61 58
30 30 27 26 24 21 22
12 12 11 9 6 4 3 3
17 17 14 12 10 8 6 2
64 64 62 60 57 55 48
87 87 84 87 86 85
55 55 54 55 53 50 52
54 54 51 48 49 48 46 46
35 35 32 29 26 23 26 22
10 10 9 11 9 2
40 40 37 36 36 33
34 34 33 33 30 33
67 67 65 63 60 58 58 58
15 15 14 14 12 10 6
74 74 72 71 71 65
48 48 45 41 39 36 33
31 31 27 26 27
54 54 50 48 46 46
62 62 59 55 52 48
49 49 45 42 41 36
95 95 89 87 86 84 82 79
52 52 50 48 43 46
37 37 34 33 32 30 23 23
89 89 86 80 77 73
69 69 67 60 55
25 21 19 17 16 15
80 76 75 74 72 71 73
18 14 12 9 6 5 4 4
89 85 82 79 76 73 70 66
78 74 72 71 70 64
50 46 45 43 45 44 42 39
81 77 74 75 73 71 74
78 74 75 72 69 66 66
59 55 54 53 50 47 50 46
49 45 42 39 40 37 36 30
94 90 87 85 83 82 82 80
15 11 8 8 9
24 20 19 16 13 12 12 12
57 53 51 49 48 47 47 43
66 62 61 59 59 57 52
73 69 67 65 61 60
98 94 91 90 86 83 86
73 69 65 63 63
24 20 19 15 11
99 95 93 92 88 87 81
89 85 82 77 76
30 26 20 19 18 19
49 45 44 42 39 34 34
39 35 34 31 26 23 19
60 56 54 49 46 40
53 47 44 43 40 39
23 18 16 13 12 10 9 11
99 92 90 87 85 84 81 81
35 30 29 27 26 23 21 17
20 15 14 13 10 5
23 16 15 14 16 14 12
53 48 46 48 45 43 45
9 4 1 2 2
55 49 51 49 46 42
75 68 65 62 60 62 60 53
71 65 62 59 59 58 55 53
24 17 14 13 13 14
12 6 6 4 4
44 37 35 32 32 29 26 22
30 24 24 23 22 20 15
45 39 37 36 32 29
27 20 19 15 13 10 8 9
83 76 72 70 70
52 45 43 39 37 36 32
58 51 47 45 42 39 33
51 46 43 41 34 33 30
55 49 48 41 43
20 13 11 4 3 1 1
84 77 76 74 67 64 63 59
85 78 76 75 73 68 67 60
75 71 71 68 71
87 87 84 83 80 83 77
17 22 24 26 27 26 28 33
65 61 60 60 57
19 20 17 16 15 15
46 46 44 43 42 39 37 33
83 83 83 85 86 89 90 94
46 52 55 60 67
98 91 90 87 84 84
87 88 84 81 80 79 73
4 6 8 9 6 9 8
59 59 56 53 55 52
31 31 33 30 33
40 38 35 31 29 27
92 90 87 84 77 76 75 78
26 27 27 30 33 36 40
42 38 36 33 34 32
79 73 72 72 69 72
57 57 51 49 47 44 40
47 53 56 58 62 62
27 27 29 34 36 37 38
49 49 51 51 51
49 53 57 59 61 65
90 92 93 90 97
40 36 32 30 26
94 90 88 85 85
39 39 36 34 27 24 23 26
47 45 43 42 45 43 41 37
30 34 37 38 40 43 46 45
70 70 72 75 79 82 86
99 96 95 94 97 94 87
69 72 71 68 61
80 73 76 73 72 69 65
94 94 93 87 87
51 51 52 53 56 62
46 42 40 37 35 31
63 63 61 60 57 56 54 54
45 43 41 37 35 34 31 25
36 36 36 37 40 47
94 88 87 83 82 80 80
62 66 69 73 76
37 40 34 32 30 24
21 14 7 6 4
41 42 45 48 49 52 54 58
19 26 32 33 34 34
37 38 41 42 43 43 46
82 86 83 86 89 92 95 99
43 38 36 35 33 30 28
18 17 13 11 13
92 93 90 92 91 90 85
80 80 78 76 74 77
19 22 24 30 32 39
76 71 69 66 65 64 61 55
14 17 15 12 11 5 5
69 70 71 72 72 69
39 39 40 38 39 39
54 57 60 62 63 66 66
60 56 54 53 50 48 45 47
55 49 51 50 47
88 88 92 95 92
50 52 56 58 59 63
22 22 24 25 29 31 33
7 6 9 11 17 18 21 28
70 68 72 74 75 78
60 63 61 60 57 55 51
20 17 20 21 24 31 34 32
3 9 10 12 16 17 20 21
89 88 90 92 92 94 95 97
99 98 95 93 94
59 64 67 68 67 67
90 83 82 79 74 73 66
34 34 39 42 42
61 61 60 58 55 52 48 43
62 67 73 75 73
74 78 78 80 82 86
36 37 37 36 31
41 41 38 38 38
7 11 12 9 12 13 16 23
99 95 92 90 88 82 79 81
7 8 11 10 13
13 17 19 22 23 27
17 15 13 13 8
56 51 49 49 47 47
35 39 42 45 42 45
59 59 66 67 71
48 50 50 51 51
82 79 82 85 89 96
81 81 77 75 72
25 20 19 19 17
59 59 61 65 67 74
5 6 13 16 19 19
59 62 65 67 70 74 76 76
46 50 51 52 53 57 58 63
6 3 6 8 10 10
82 75 71 70 67 64 62 58
46 46 46 43 40 36
9 13 15 17 24 25 32
48 47 44 42 41 38 37 37
19 25 26 31 33 35
29 26 27 29 31 34
38 38 35 33 30 28 31 27
10 10 16 18 19 20 17
74 74 70 67 66 64 65
34 30 28 28 25 23 20 16
38 38 35 37 40 38
43 42 48 51 53 53
66 67 69 72 74 81
3 7 9 10 11 16
49 48 46 43 41 40 38 31
17 14 16 20 18
72 68 65 63 62 59 62 62
69 65 61 60 63
17 16 18 21 21 23 25 32
28 25 25 23 24
41 41 42 45 46 49 53
98 95 92 90 90 89
68 71 70 73 70 66
29 29 26 25 21 19 18 18
62 62 60 58 58 57
49 49 47 48 51
57 62 63 66 68 70 71
7 5 9 10 13 14 17 17
85 90 93 95 95 92
24 21 20 18 17 18 20
8 14 16 17 21
91 87 86 86 85 79
48 44 42 40 38 37 32
25 30 34 37 42
25 19 13 11 7
55 55 52 51 44 43 42 41
82 81 78 76 75 71
76 80 83 85 87 87 87
3 9 10 13 14 17 20 17
23 26 27 29 31 34 32
32 28 27 24 20 19 19
39 43 44 45 49 50 47
26 25 26 29 36 40
63 63 67 69 72 72
69 76 77 79 82 86 89 87
9 11 12 16 13
62 62 62 61 59 58 56 58
24 26 25 24 24 21 19 19
39 41 38 40 40
77 74 71 70 68 66 61 57
90 85 83 84 81 79 74
92 88 87 84 77 71
37 41 44 45 52 51
55 56 54 53 52 49 45 48
44 47 51 52 55 56 57 59
88 92 97 99 99
9 9 10 13 15 15
13 10 7 9 10 12 12
34 29 28 22 25
51 51 53 56 59 60
55 56 59 61 63 62 62
66 71 73 75 78 81 81 86
19 20 21 24 26 32 35
65 64 58 56 53
27 27 28 33 35 41
80 79 78 80 77
61 57 53 51 48 46
97 93 90 83 80 79 78
37 42 45 47 50 52 53 58
27 31 32 35 36 39 36 36
14 15 13 10 6 2
81 86 89 90 90
80 74 73 70 69 67 66 69
49 46 44 41 37 37
88 85 87 88 89 93
40 34 32 29 30 28 31
37 34 33 32 31 29 28
70 73 75 78 79 81 84 85
43 41 39 36 35 34 33 31
95 93 92 90 89 87 85 84
33 31 28 26 23 22 19 16
2 5 7 9 12 13
55 54 52 50 49 47
41 42 45 48 50 53 54 55
74 76 79 82 85 87 89 90
9 10 12 14 16 18 20 21
95 92 90 87 85 82
82 83 86 89 92 95 98
33 36 38 41 44 45 48 50
50 49 47 44 43
82 80 79 76 74 73 70
4 7 10 11 14
90 88 86 84 82 79
41 42 44 45 47 50 53 56
62 59 56 53 51 50 49 48
61 59 57 54 51 50 49
51 53 56 57 58 59 61
68 67 66 64 62 61 58
8 10 12 15 16 18
7 9 12 15 16
72 71 68 66 63
47 46 43 42 40 39 37 35
45 43 42 41 39 36
80 82 85 86 89 90 93 96
19 16 13 10 7 5 4
78 81 84 86 88 89 91
45 42 40 37 35
34 37 40 43 44 46 48 50
58 60 61 62 65 66
31 30 27 26 24 21 18
29 28 27 26 23
9 11 13 16 18 19 21 24
54 52 51 48 45 44 43
5 7 10 12 14 17 19 20
9 10 11 14 16 18
18 16 14 13 10
46 44 42 40 39 38 36
52 51 48 45 43
95 92 89 86 84 82
72 75 76 77 80 83
86 83 80 77 75
49 50 53 55 58
58 61 64 66 67 70 73 74
34 36 39 41 42 45
47 46 45 42 41
75 77 79 80 82 83 86
75 72 69 68 66 63
22 24 26 28 29
63 60 59 58 56 54 53
62 64 66 67 68
81 83 85 86 89 90 92
67 69 70 71 74 76
74 72 71 70 68 65 63
1 3 4 6 7
48 45 42 39 37 34
37 35 33 32 30 27
67 64 61 60 58 55 53 50
25 24 22 20 19
73 74 76 77 79 80 83
29 26 25 22 19
17 16 15 14 12 10
66 64 63 62 59 57 55 52
56 54 53 51 49
40 39 36 33 30 29 27 24
36 34 33 31 29
92 93 94 95 96 99
94 92 91 89 87
15 13 12 10 9 8 5
43 41 39 36 34 33 32
70 68 65 63 62 60 59
28 25 24 21 19 18
93 92 91 88 85 83
7 6 5 3 1
29 31 33 35 36
67 64 61 58 57 56
92 89 88 87 86
73 74 77 80 83
36 33 30 27 25 22 21
18 21 24 27 28 30 33 34
35 36 38 39 40 43 46
26 27 30 32 33 34
68 69 70 72 73
61 59 57 55 54 52 49
38 39 42 45 47 50 53
1 3 5 8 10 12 13 16
28 26 23 20 19 16
77 78 79 82 84
47 50 53 54 55 58 60
21 19 16 13 11
80 82 83 84 85
92 91 90 87 85 84 83 80
43 46 47 50 53
20 23 24 25 28
18 19 22 25 28 29 31 34
44 47 48 49 50 51 52 54
72 70 69 67 66 64
20 18 17 16 15 13 11 9
45 47 49 52 53 56 58
82 84 86 89 90
79 81 83 84 87 90 91 92
14 17 19 22 23 24 27
18 15 12 10 7 5
72 69 68 65 63
49 47 45 44 43 40 37
17 20 21 23 25 27
65 63 62 59 58
64 61 58 56 54
76 73 71 70 67 64
61 64 65 66 69
19 22 23 24 27 28 29
46 45 43 41 39 37
15 12 9 6 5 2 1
32 30 29 26 23 20
16 19 22 24 27 29 31 34
61 58 55 52 51 50 47 45
57 55 52 49 47 46
98 95 92 90 89
21 18 17 15 14 12
62 65 68 71 73 76
74 72 69 66 63 61
13 12 10 9 6 4 3 1
92 89 86 84 83 80 77
62 63 64 65 67 68 71
73 74 75 77 78 80 82
54 57 58 59 60 62 64 65
76 73 71 68 67 65 62 60
44 46 47 48 51
23 24 27 28 29 32
68 71 72 75 78 81
16 19 22 24 26
9 11 13 16 18 20 23
73 70 68 67 66 64 62
79 81 82 84 85
64 61 60 59 57 54 51 48
11 8 5 4 1
76 73 70 67 65 62 61 60
69 70 73 76 77 80 82 85
67 64 63 61 59 58 57 56
66 65 64 61 58 55 53 51
41 44 47 50 51 54 55
63 60 59 56 55 54 53 51
36 33 31 29 26 25
9 7 6 5 4
73 71 68 65 62
80 77 76 74 71 68 67
29 30 32 35 37 39
18 17 15 12 9 7 5 4
75 73 71 70 69 67 64 61
59 57 54 53 50 47
85 88 89 90 92 93
7 8 10 13 15 17 19 21
79 76 74 73 71 68 67
52 49 48 46 43 40 38 37
96 95 93 90 87 86 83
20 17 16 15 12 11 10 8
61 60 58 57 54 53 52 51
62 61 60 59 56 54
17 16 15 12 11 8 7
35 33 32 29 26 24 22 19
16 18 21 22 25 28
59 58 57 55 54 53 50
51 53 55 56 58 60 62
38 39 42 43 46 48 49
12 15 16 17 19 22
42 44 45 46 48 50
41 40 39 36 33 31
47 49 50 51 53 55
92 89 87 85 82 79 76 74
75 76 78 79 82
30 27 24 22 19
80 81 82 83 84 85 86 89
55 56 57 59 62 63 66 69
73 74 77 80 83 85 87 89
89 87 86 85 83 80 77 75
39 41 42 43 45 46 49 50
52 54 57 58 59 62 65 67
50 52 54 57 58 61 63 64
9 11 14 17 18
60 59 58 55 53 52 50 48
52 54 55 57 58
87 90 92 93 95 98 99
90 88 86 83 81 80 78
91 88 85 84 81 79 78 76
35 33 32 30 28 26 24
41 40 39 36 35 33 30 29
89 91 94 96 99
74 76 79 80 83 84 87
62 59 56 54 51 49
17 15 13 12 10 8 5
83 84 85 86 87 88
16 13 10 7 6 3 2
63 64 66 68 69 71 73 76
82 84 87 90 92 95 98
12 13 15 16 17 19
79 80 81 83 84 85 87 88
20 23 25 28 31 33 34 36
5 7 10 12 14
84 85 87 88 90 92 95
48 51 53 54 57
53 56 58 60 61 64 66
77 76 73 72 69 67
65 62 61 59 58 55
75 74 72 70 67 64
59 58 57 56 55 54
67 65 64 62 60 59 58
72 73 74 75 78 79 81
62 64 67 68 71 72 75
6 9 12 15 16 17
34 36 39 41 43 44
41 42 45 46 48 51
49 50 52 55 57 60 62 63
55 56 59 60 62 64 65
86 89 90 93 96
80 78 75 74 71 70 68 65
83 81 79 76 74 73
69 68 65 62 61 59
80 83 84 87 89 90 92
33 31 29 27 24 22
31 34 36 39 41
92 91 89 88 86 85 83
93 90 89 87 85 83
36 38 41 44 46 47
11 13 14 15 17 19 22 24
4 6 7 9 10 13 15
70 71 74 77 79 81
13 10 7 5 4
43 44 47 48 50 53 55 58
60 61 63 65 67 68 70 72
75 77 79 82 85 88
51 53 55 57 60 63 65
17 20 21 24 26
47 46 45 43 41 39 38
39 42 44 45 48 49 51
60 58 57 54 52 51 50
37 36 34 32 29 26 23
64 62 59 58 55 53 51
53 54 56 59 62 65 67
72 71 69 68 67
48 45 42 41 40 38
52 50 49 46 44 43 42
16 13 12 11 10 9
28 27 24 22 21 19 18
9 12 14 17 20 22 25 26
70 72 74 75 77 78
87 85 83 80 78 76 74 72
50 49 47 45 42 40
73 71 69 67 64 61 60 57
12 14 17 18 20 22
77 74 73 72 69 67
77 74 72 69 67 66 63 60
53 56 59 60 63 65 66
40 42 44 46 49 50 51 53
66 68 70 73 75 77 78 79
34 35 38 41 43 45 48 50
3 5 7 9 11 14
75 77 80 83 84 85 88 89
90 91 93 94 96
52 53 55 57 60
65 63 60 59 58
57 58 60 61 63 64
20 19 18 16 15 13
18 19 20 21 24 27
56 53 50 48 47
19 21 23 25 27 28 29 32
64 65 66 68 71
88 87 85 82 81 78
58 59 62 64 67
91 89 87 86 83 82
84 87 89 90 91 94 97
59 60 61 64 65 66 68 70
70 73 74 76 78 81
46 49 50 52 55
19 16 14 13 10 9 8
79 76 73 70 69 66 65
34 33 32 30 28 26
15 18 20 21 23 26
89 92 93 96 99
95 92 91 90 87
17 16 15 12 10 8
47 48 50 53 55 58
19 21 24 26 29 30 32 33
35 37 40 43 44 47 50 51
1 2 5 6 8 11
59 57 56 54 53 52 50 49
21 24 25 27 30 31
32 31 30 29 27 26
32 29 26 24 23 21
20 17 15 12 11 8 7 4
60 57 56 54 53 52 51 48
72 71 70 68 67 64 62 60
53 51 50 47 44 41 40 38
86 89 91 93 95
8 10 12 13 14 15 18 21
69 70 71 72 73 74 76
34 32 29 26 25 23 21
70 67 64 63 62 59 57
60 59 57 56 53 52 49
83 85 86 88 89
91 88 85 84 81
86 84 83 81 78
49 52 53 54 57
8 9 11 14 16 17 18 19
77 80 82 85 86 88 90 92
57 59 60 63 65 67 68
71 69 66 64 61 59 57
76 74 71 69 66 65
33 35 36 38 39 41 44 47
81 84 86 89 90 93
79 78 77 76 75 72 70 69
20 23 24 27 28 31
61 59 58 57 56 54 51 49
28 30 31 32 35 36 37
55 56 58 61 63 65
63 62 59 56 54
33 32 30 28 27
23 20 19 18 15 13 12 9
68 66 63 61 59 58 56 53
87 90 92 94 95 97
71 74 75 78 80 81
81 79 76 73 71 69 68
57 59 62 64 66 68
91 88 85 82 79 78 76
23 20 17 15 13 10
62 63 66 68 69 71
62 64 66 69 71 73 76 79
30 31 33 36 39 40 41
55 54 52 51 48 45 43
40 43 45 46 47 50
48 46 43 42 40 38
87 84 83 80 77 76
"""
