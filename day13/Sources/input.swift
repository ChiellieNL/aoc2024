//
//  input.swift
//  day13
//
//  Created by Michiel Horvers on 13/12/2024.
//

import Foundation

let testInput = """
Button A: X+94, Y+34
Button B: X+22, Y+67
Prize: X=8400, Y=5400

Button A: X+26, Y+66
Button B: X+67, Y+21
Prize: X=12748, Y=12176

Button A: X+17, Y+86
Button B: X+84, Y+37
Prize: X=7870, Y=6450

Button A: X+69, Y+23
Button B: X+27, Y+71
Prize: X=18641, Y=10279
"""

let rawInput = """
Button A: X+25, Y+60
Button B: X+54, Y+25
Prize: X=12630, Y=3335

Button A: X+22, Y+58
Button B: X+65, Y+17
Prize: X=9383, Y=13439

Button A: X+45, Y+15
Button B: X+20, Y+28
Prize: X=3265, Y=2411

Button A: X+35, Y+20
Button B: X+16, Y+62
Prize: X=2109, Y=4588

Button A: X+11, Y+43
Button B: X+92, Y+24
Prize: X=4735, Y=2399

Button A: X+28, Y+13
Button B: X+40, Y+68
Prize: X=13844, Y=19221

Button A: X+39, Y+17
Button B: X+14, Y+53
Prize: X=9993, Y=16820

Button A: X+91, Y+34
Button B: X+40, Y+70
Prize: X=6636, Y=7104

Button A: X+66, Y+48
Button B: X+15, Y+34
Prize: X=10427, Y=8750

Button A: X+11, Y+36
Button B: X+35, Y+14
Prize: X=2936, Y=18538

Button A: X+15, Y+59
Button B: X+95, Y+34
Prize: X=1655, Y=4132

Button A: X+62, Y+27
Button B: X+45, Y+67
Prize: X=2865, Y=3286

Button A: X+12, Y+50
Button B: X+62, Y+32
Prize: X=3130, Y=12588

Button A: X+28, Y+52
Button B: X+96, Y+16
Prize: X=1816, Y=1912

Button A: X+49, Y+16
Button B: X+13, Y+63
Prize: X=6490, Y=17789

Button A: X+12, Y+57
Button B: X+52, Y+35
Prize: X=5528, Y=6754

Button A: X+17, Y+60
Button B: X+26, Y+12
Prize: X=15135, Y=4424

Button A: X+28, Y+50
Button B: X+35, Y+19
Prize: X=12009, Y=19375

Button A: X+64, Y+30
Button B: X+54, Y+91
Prize: X=5498, Y=7241

Button A: X+18, Y+23
Button B: X+77, Y+29
Prize: X=4821, Y=2205

Button A: X+20, Y+89
Button B: X+62, Y+29
Prize: X=6640, Y=7327

Button A: X+76, Y+21
Button B: X+46, Y+98
Prize: X=9512, Y=8428

Button A: X+11, Y+29
Button B: X+69, Y+40
Prize: X=1735, Y=19097

Button A: X+12, Y+37
Button B: X+71, Y+43
Prize: X=3681, Y=4489

Button A: X+50, Y+11
Button B: X+15, Y+81
Prize: X=2280, Y=3765

Button A: X+25, Y+62
Button B: X+68, Y+24
Prize: X=2359, Y=11138

Button A: X+95, Y+65
Button B: X+26, Y+80
Prize: X=5247, Y=6825

Button A: X+81, Y+44
Button B: X+14, Y+44
Prize: X=12683, Y=15236

Button A: X+30, Y+11
Button B: X+20, Y+66
Prize: X=11810, Y=19141

Button A: X+21, Y+68
Button B: X+70, Y+17
Prize: X=8971, Y=12705

Button A: X+17, Y+89
Button B: X+59, Y+47
Prize: X=4329, Y=10617

Button A: X+15, Y+64
Button B: X+77, Y+29
Prize: X=17076, Y=8957

Button A: X+66, Y+36
Button B: X+14, Y+79
Prize: X=6532, Y=9272

Button A: X+23, Y+94
Button B: X+36, Y+23
Prize: X=1177, Y=2576

Button A: X+42, Y+41
Button B: X+64, Y+12
Prize: X=5928, Y=3364

Button A: X+56, Y+35
Button B: X+21, Y+48
Prize: X=17812, Y=19069

Button A: X+96, Y+25
Button B: X+65, Y+70
Prize: X=13503, Y=6860

Button A: X+13, Y+90
Button B: X+72, Y+36
Prize: X=5045, Y=3942

Button A: X+61, Y+57
Button B: X+20, Y+95
Prize: X=1377, Y=2584

Button A: X+42, Y+61
Button B: X+94, Y+31
Prize: X=2048, Y=864

Button A: X+18, Y+74
Button B: X+80, Y+19
Prize: X=10444, Y=17633

Button A: X+36, Y+12
Button B: X+39, Y+91
Prize: X=2412, Y=1740

Button A: X+11, Y+28
Button B: X+69, Y+45
Prize: X=3765, Y=733

Button A: X+30, Y+69
Button B: X+42, Y+14
Prize: X=10730, Y=18770

Button A: X+40, Y+36
Button B: X+27, Y+98
Prize: X=4048, Y=5412

Button A: X+87, Y+31
Button B: X+61, Y+75
Prize: X=8220, Y=6764

Button A: X+47, Y+85
Button B: X+85, Y+17
Prize: X=8657, Y=2941

Button A: X+18, Y+76
Button B: X+96, Y+28
Prize: X=4158, Y=2840

Button A: X+83, Y+29
Button B: X+18, Y+73
Prize: X=1799, Y=3297

Button A: X+29, Y+30
Button B: X+94, Y+24
Prize: X=9875, Y=3990

Button A: X+28, Y+49
Button B: X+98, Y+40
Prize: X=2688, Y=1811

Button A: X+55, Y+18
Button B: X+31, Y+63
Prize: X=16692, Y=2231

Button A: X+56, Y+12
Button B: X+25, Y+52
Prize: X=9340, Y=10016

Button A: X+93, Y+67
Button B: X+16, Y+83
Prize: X=5025, Y=4049

Button A: X+18, Y+30
Button B: X+58, Y+31
Prize: X=9800, Y=12695

Button A: X+40, Y+63
Button B: X+88, Y+17
Prize: X=7456, Y=1772

Button A: X+39, Y+17
Button B: X+33, Y+68
Prize: X=10790, Y=4647

Button A: X+47, Y+23
Button B: X+39, Y+69
Prize: X=10930, Y=14866

Button A: X+26, Y+29
Button B: X+11, Y+92
Prize: X=1948, Y=7435

Button A: X+62, Y+61
Button B: X+15, Y+72
Prize: X=4982, Y=9481

Button A: X+17, Y+79
Button B: X+34, Y+12
Prize: X=3145, Y=4103

Button A: X+50, Y+24
Button B: X+34, Y+62
Prize: X=14860, Y=16616

Button A: X+72, Y+26
Button B: X+36, Y+80
Prize: X=6876, Y=4426

Button A: X+30, Y+93
Button B: X+82, Y+40
Prize: X=3080, Y=5264

Button A: X+64, Y+28
Button B: X+17, Y+63
Prize: X=357, Y=1999

Button A: X+40, Y+85
Button B: X+65, Y+33
Prize: X=3810, Y=3681

Button A: X+48, Y+72
Button B: X+79, Y+29
Prize: X=6943, Y=6029

Button A: X+32, Y+11
Button B: X+63, Y+83
Prize: X=12607, Y=8221

Button A: X+45, Y+23
Button B: X+18, Y+54
Prize: X=14462, Y=12634

Button A: X+33, Y+81
Button B: X+86, Y+54
Prize: X=9998, Y=9774

Button A: X+74, Y+33
Button B: X+22, Y+59
Prize: X=11718, Y=15931

Button A: X+25, Y+84
Button B: X+91, Y+31
Prize: X=2297, Y=3047

Button A: X+46, Y+97
Button B: X+84, Y+52
Prize: X=5356, Y=7290

Button A: X+72, Y+90
Button B: X+58, Y+14
Prize: X=7556, Y=5818

Button A: X+38, Y+13
Button B: X+19, Y+70
Prize: X=5573, Y=4457

Button A: X+54, Y+62
Button B: X+53, Y+14
Prize: X=4778, Y=1644

Button A: X+77, Y+97
Button B: X+58, Y+12
Prize: X=7705, Y=8485

Button A: X+12, Y+46
Button B: X+46, Y+17
Prize: X=7916, Y=10974

Button A: X+26, Y+51
Button B: X+30, Y+16
Prize: X=9740, Y=10350

Button A: X+52, Y+32
Button B: X+22, Y+59
Prize: X=1504, Y=2744

Button A: X+99, Y+17
Button B: X+20, Y+86
Prize: X=3962, Y=1506

Button A: X+73, Y+15
Button B: X+62, Y+82
Prize: X=11730, Y=8990

Button A: X+23, Y+16
Button B: X+23, Y+78
Prize: X=2852, Y=7502

Button A: X+86, Y+43
Button B: X+21, Y+46
Prize: X=5613, Y=5753

Button A: X+39, Y+11
Button B: X+19, Y+36
Prize: X=855, Y=17340

Button A: X+18, Y+58
Button B: X+84, Y+37
Prize: X=2076, Y=2016

Button A: X+94, Y+31
Button B: X+32, Y+36
Prize: X=9102, Y=3587

Button A: X+37, Y+51
Button B: X+93, Y+33
Prize: X=3135, Y=2703

Button A: X+41, Y+82
Button B: X+87, Y+45
Prize: X=7877, Y=5047

Button A: X+52, Y+24
Button B: X+11, Y+50
Prize: X=11307, Y=14130

Button A: X+11, Y+94
Button B: X+28, Y+17
Prize: X=3396, Y=8349

Button A: X+26, Y+63
Button B: X+53, Y+16
Prize: X=8371, Y=5670

Button A: X+69, Y+72
Button B: X+90, Y+21
Prize: X=9726, Y=7524

Button A: X+11, Y+37
Button B: X+66, Y+31
Prize: X=4643, Y=10037

Button A: X+50, Y+12
Button B: X+24, Y+30
Prize: X=3752, Y=2064

Button A: X+20, Y+24
Button B: X+57, Y+20
Prize: X=2241, Y=2060

Button A: X+23, Y+42
Button B: X+23, Y+12
Prize: X=3320, Y=17000

Button A: X+89, Y+36
Button B: X+11, Y+31
Prize: X=7688, Y=5340

Button A: X+15, Y+30
Button B: X+56, Y+31
Prize: X=18103, Y=18018

Button A: X+23, Y+77
Button B: X+77, Y+30
Prize: X=2694, Y=6969

Button A: X+31, Y+68
Button B: X+41, Y+18
Prize: X=7851, Y=15798

Button A: X+65, Y+15
Button B: X+15, Y+55
Prize: X=1230, Y=12690

Button A: X+22, Y+53
Button B: X+45, Y+20
Prize: X=1902, Y=5203

Button A: X+71, Y+11
Button B: X+33, Y+31
Prize: X=5132, Y=2426

Button A: X+74, Y+33
Button B: X+15, Y+53
Prize: X=13957, Y=8149

Button A: X+43, Y+84
Button B: X+44, Y+18
Prize: X=4070, Y=6048

Button A: X+19, Y+44
Button B: X+57, Y+31
Prize: X=5877, Y=14851

Button A: X+30, Y+18
Button B: X+16, Y+32
Prize: X=3966, Y=16594

Button A: X+68, Y+91
Button B: X+78, Y+31
Prize: X=5998, Y=6926

Button A: X+18, Y+94
Button B: X+31, Y+24
Prize: X=2971, Y=7104

Button A: X+43, Y+78
Button B: X+97, Y+56
Prize: X=11278, Y=9542

Button A: X+24, Y+85
Button B: X+57, Y+45
Prize: X=5544, Y=4575

Button A: X+92, Y+20
Button B: X+46, Y+72
Prize: X=5796, Y=3740

Button A: X+13, Y+54
Button B: X+69, Y+21
Prize: X=2910, Y=2285

Button A: X+11, Y+37
Button B: X+74, Y+43
Prize: X=4980, Y=220

Button A: X+19, Y+69
Button B: X+61, Y+30
Prize: X=6046, Y=3570

Button A: X+70, Y+43
Button B: X+35, Y+75
Prize: X=5460, Y=5601

Button A: X+89, Y+56
Button B: X+14, Y+32
Prize: X=8727, Y=7416

Button A: X+73, Y+36
Button B: X+21, Y+50
Prize: X=9183, Y=2576

Button A: X+52, Y+12
Button B: X+13, Y+44
Prize: X=9454, Y=2756

Button A: X+38, Y+69
Button B: X+39, Y+13
Prize: X=4269, Y=5858

Button A: X+48, Y+25
Button B: X+27, Y+49
Prize: X=7202, Y=12297

Button A: X+73, Y+18
Button B: X+12, Y+37
Prize: X=3699, Y=509

Button A: X+20, Y+38
Button B: X+43, Y+27
Prize: X=4679, Y=4949

Button A: X+94, Y+28
Button B: X+31, Y+81
Prize: X=2986, Y=5626

Button A: X+21, Y+71
Button B: X+83, Y+20
Prize: X=3612, Y=6739

Button A: X+20, Y+62
Button B: X+67, Y+52
Prize: X=1705, Y=2950

Button A: X+12, Y+72
Button B: X+85, Y+13
Prize: X=5088, Y=6672

Button A: X+90, Y+25
Button B: X+18, Y+37
Prize: X=7830, Y=2655

Button A: X+69, Y+54
Button B: X+14, Y+85
Prize: X=499, Y=1205

Button A: X+43, Y+22
Button B: X+35, Y+66
Prize: X=10993, Y=2718

Button A: X+23, Y+66
Button B: X+69, Y+21
Prize: X=16407, Y=3350

Button A: X+11, Y+21
Button B: X+44, Y+16
Prize: X=6821, Y=3311

Button A: X+11, Y+32
Button B: X+38, Y+24
Prize: X=11047, Y=904

Button A: X+47, Y+16
Button B: X+33, Y+54
Prize: X=342, Y=13186

Button A: X+46, Y+21
Button B: X+24, Y+52
Prize: X=4692, Y=3086

Button A: X+70, Y+59
Button B: X+15, Y+94
Prize: X=2790, Y=8372

Button A: X+38, Y+81
Button B: X+92, Y+64
Prize: X=8026, Y=5747

Button A: X+16, Y+37
Button B: X+51, Y+23
Prize: X=9540, Y=10884

Button A: X+37, Y+16
Button B: X+13, Y+68
Prize: X=2574, Y=4232

Button A: X+24, Y+16
Button B: X+24, Y+93
Prize: X=3192, Y=7672

Button A: X+54, Y+16
Button B: X+41, Y+82
Prize: X=9270, Y=12460

Button A: X+53, Y+34
Button B: X+12, Y+43
Prize: X=3739, Y=9730

Button A: X+17, Y+54
Button B: X+26, Y+18
Prize: X=2489, Y=4806

Button A: X+30, Y+64
Button B: X+40, Y+15
Prize: X=18850, Y=7951

Button A: X+90, Y+13
Button B: X+12, Y+25
Prize: X=4872, Y=1425

Button A: X+57, Y+33
Button B: X+16, Y+28
Prize: X=6437, Y=3041

Button A: X+46, Y+91
Button B: X+91, Y+58
Prize: X=3486, Y=5676

Button A: X+47, Y+23
Button B: X+18, Y+90
Prize: X=2088, Y=2808

Button A: X+23, Y+44
Button B: X+43, Y+26
Prize: X=7211, Y=14136

Button A: X+99, Y+82
Button B: X+12, Y+48
Prize: X=3084, Y=6056

Button A: X+11, Y+38
Button B: X+61, Y+55
Prize: X=4729, Y=4657

Button A: X+22, Y+58
Button B: X+57, Y+29
Prize: X=14170, Y=12270

Button A: X+17, Y+78
Button B: X+54, Y+49
Prize: X=6158, Y=9968

Button A: X+23, Y+43
Button B: X+90, Y+21
Prize: X=5515, Y=4862

Button A: X+53, Y+16
Button B: X+25, Y+47
Prize: X=5070, Y=17398

Button A: X+99, Y+16
Button B: X+98, Y+80
Prize: X=7106, Y=2560

Button A: X+39, Y+24
Button B: X+20, Y+79
Prize: X=2436, Y=3900

Button A: X+71, Y+38
Button B: X+11, Y+45
Prize: X=15207, Y=14963

Button A: X+81, Y+35
Button B: X+25, Y+77
Prize: X=8558, Y=6412

Button A: X+22, Y+54
Button B: X+40, Y+17
Prize: X=11506, Y=19457

Button A: X+27, Y+16
Button B: X+18, Y+79
Prize: X=2691, Y=3918

Button A: X+19, Y+66
Button B: X+76, Y+24
Prize: X=12432, Y=5408

Button A: X+89, Y+21
Button B: X+17, Y+73
Prize: X=9468, Y=8512

Button A: X+16, Y+67
Button B: X+70, Y+44
Prize: X=6652, Y=7427

Button A: X+31, Y+32
Button B: X+77, Y+16
Prize: X=6005, Y=3088

Button A: X+16, Y+85
Button B: X+67, Y+25
Prize: X=5160, Y=3585

Button A: X+41, Y+23
Button B: X+23, Y+48
Prize: X=917, Y=17955

Button A: X+51, Y+22
Button B: X+32, Y+52
Prize: X=12342, Y=17344

Button A: X+11, Y+29
Button B: X+38, Y+23
Prize: X=10088, Y=14603

Button A: X+19, Y+77
Button B: X+75, Y+17
Prize: X=8394, Y=5726

Button A: X+91, Y+64
Button B: X+19, Y+42
Prize: X=6134, Y=6290

Button A: X+53, Y+34
Button B: X+11, Y+89
Prize: X=4010, Y=7571

Button A: X+26, Y+73
Button B: X+68, Y+19
Prize: X=5856, Y=4923

Button A: X+74, Y+26
Button B: X+15, Y+58
Prize: X=13658, Y=16774

Button A: X+14, Y+47
Button B: X+39, Y+20
Prize: X=2123, Y=16829

Button A: X+30, Y+12
Button B: X+18, Y+24
Prize: X=3510, Y=2832

Button A: X+52, Y+21
Button B: X+11, Y+40
Prize: X=12541, Y=1965

Button A: X+15, Y+78
Button B: X+66, Y+12
Prize: X=8150, Y=8564

Button A: X+84, Y+22
Button B: X+68, Y+75
Prize: X=10152, Y=5404

Button A: X+51, Y+12
Button B: X+14, Y+63
Prize: X=5480, Y=18545

Button A: X+14, Y+52
Button B: X+72, Y+31
Prize: X=19760, Y=10420

Button A: X+23, Y+52
Button B: X+66, Y+35
Prize: X=3397, Y=14541

Button A: X+45, Y+22
Button B: X+25, Y+48
Prize: X=14615, Y=14224

Button A: X+11, Y+68
Button B: X+74, Y+16
Prize: X=3029, Y=14220

Button A: X+98, Y+88
Button B: X+15, Y+99
Prize: X=9310, Y=16742

Button A: X+19, Y+46
Button B: X+34, Y+14
Prize: X=4091, Y=3988

Button A: X+41, Y+18
Button B: X+23, Y+39
Prize: X=17983, Y=6299

Button A: X+55, Y+79
Button B: X+72, Y+25
Prize: X=5399, Y=2893

Button A: X+11, Y+42
Button B: X+83, Y+51
Prize: X=11918, Y=16496

Button A: X+33, Y+96
Button B: X+60, Y+20
Prize: X=4893, Y=6816

Button A: X+38, Y+94
Button B: X+34, Y+25
Prize: X=3594, Y=4162

Button A: X+16, Y+68
Button B: X+76, Y+15
Prize: X=2704, Y=7636

Button A: X+48, Y+13
Button B: X+17, Y+60
Prize: X=16302, Y=3570

Button A: X+53, Y+18
Button B: X+14, Y+16
Prize: X=3644, Y=1440

Button A: X+57, Y+22
Button B: X+12, Y+62
Prize: X=4331, Y=14136

Button A: X+46, Y+76
Button B: X+59, Y+18
Prize: X=5142, Y=6588

Button A: X+79, Y+57
Button B: X+25, Y+86
Prize: X=2641, Y=8226

Button A: X+17, Y+71
Button B: X+76, Y+26
Prize: X=4252, Y=11112

Button A: X+36, Y+78
Button B: X+90, Y+23
Prize: X=9000, Y=2988

Button A: X+95, Y+18
Button B: X+62, Y+76
Prize: X=9884, Y=7784

Button A: X+26, Y+44
Button B: X+82, Y+32
Prize: X=10146, Y=6600

Button A: X+16, Y+53
Button B: X+77, Y+39
Prize: X=12903, Y=8238

Button A: X+15, Y+53
Button B: X+73, Y+34
Prize: X=14752, Y=11574

Button A: X+54, Y+78
Button B: X+39, Y+12
Prize: X=4748, Y=5192

Button A: X+19, Y+41
Button B: X+63, Y+38
Prize: X=4894, Y=11275

Button A: X+68, Y+43
Button B: X+17, Y+42
Prize: X=18213, Y=9813

Button A: X+49, Y+62
Button B: X+87, Y+33
Prize: X=11347, Y=7343

Button A: X+79, Y+99
Button B: X+90, Y+32
Prize: X=11821, Y=9805

Button A: X+55, Y+29
Button B: X+38, Y+89
Prize: X=5635, Y=7109

Button A: X+26, Y+14
Button B: X+16, Y+35
Prize: X=9848, Y=5471

Button A: X+34, Y+83
Button B: X+93, Y+19
Prize: X=3288, Y=3866

Button A: X+99, Y+16
Button B: X+11, Y+48
Prize: X=8272, Y=2816

Button A: X+16, Y+69
Button B: X+43, Y+44
Prize: X=3628, Y=8291

Button A: X+34, Y+76
Button B: X+50, Y+15
Prize: X=12702, Y=2468

Button A: X+84, Y+14
Button B: X+67, Y+86
Prize: X=3404, Y=2962

Button A: X+34, Y+11
Button B: X+41, Y+62
Prize: X=12734, Y=18227

Button A: X+49, Y+93
Button B: X+57, Y+30
Prize: X=5343, Y=7248

Button A: X+20, Y+42
Button B: X+70, Y+48
Prize: X=6430, Y=6474

Button A: X+16, Y+51
Button B: X+38, Y+19
Prize: X=14770, Y=18761

Button A: X+68, Y+28
Button B: X+25, Y+73
Prize: X=2532, Y=3300

Button A: X+74, Y+90
Button B: X+11, Y+98
Prize: X=5925, Y=12368

Button A: X+19, Y+35
Button B: X+59, Y+23
Prize: X=2982, Y=3094

Button A: X+35, Y+16
Button B: X+43, Y+71
Prize: X=13714, Y=17418

Button A: X+87, Y+72
Button B: X+19, Y+82
Prize: X=8394, Y=10128

Button A: X+13, Y+31
Button B: X+77, Y+51
Prize: X=1976, Y=10708

Button A: X+51, Y+89
Button B: X+60, Y+18
Prize: X=4482, Y=7388

Button A: X+55, Y+13
Button B: X+28, Y+67
Prize: X=18992, Y=19163

Button A: X+42, Y+91
Button B: X+80, Y+21
Prize: X=3144, Y=1785

Button A: X+13, Y+88
Button B: X+32, Y+30
Prize: X=1846, Y=7644

Button A: X+28, Y+65
Button B: X+29, Y+14
Prize: X=18563, Y=11996

Button A: X+39, Y+93
Button B: X+55, Y+14
Prize: X=7836, Y=8142

Button A: X+42, Y+12
Button B: X+11, Y+43
Prize: X=12021, Y=12799

Button A: X+47, Y+25
Button B: X+26, Y+45
Prize: X=6137, Y=3945

Button A: X+72, Y+13
Button B: X+14, Y+48
Prize: X=15022, Y=7727

Button A: X+11, Y+34
Button B: X+57, Y+35
Prize: X=3001, Y=1017

Button A: X+29, Y+62
Button B: X+58, Y+17
Prize: X=13749, Y=5691

Button A: X+16, Y+40
Button B: X+81, Y+55
Prize: X=13327, Y=3705

Button A: X+21, Y+44
Button B: X+75, Y+51
Prize: X=13037, Y=12786

Button A: X+63, Y+91
Button B: X+62, Y+27
Prize: X=7164, Y=9222

Button A: X+13, Y+35
Button B: X+51, Y+30
Prize: X=5615, Y=4490

Button A: X+60, Y+17
Button B: X+34, Y+90
Prize: X=6192, Y=3201

Button A: X+13, Y+61
Button B: X+58, Y+54
Prize: X=4817, Y=8641

Button A: X+13, Y+64
Button B: X+73, Y+12
Prize: X=6377, Y=5688

Button A: X+12, Y+47
Button B: X+84, Y+81
Prize: X=2364, Y=5043

Button A: X+96, Y+57
Button B: X+33, Y+79
Prize: X=11067, Y=11977

Button A: X+70, Y+48
Button B: X+18, Y+39
Prize: X=1006, Y=1143

Button A: X+84, Y+74
Button B: X+73, Y+14
Prize: X=13367, Y=7600

Button A: X+50, Y+31
Button B: X+20, Y+49
Prize: X=1690, Y=11661

Button A: X+44, Y+14
Button B: X+36, Y+65
Prize: X=9500, Y=19448

Button A: X+15, Y+74
Button B: X+71, Y+13
Prize: X=8229, Y=6634

Button A: X+87, Y+30
Button B: X+15, Y+34
Prize: X=7206, Y=4128

Button A: X+56, Y+23
Button B: X+14, Y+60
Prize: X=2688, Y=5227

Button A: X+43, Y+16
Button B: X+21, Y+65
Prize: X=16016, Y=17861

Button A: X+11, Y+59
Button B: X+52, Y+20
Prize: X=13204, Y=7828

Button A: X+24, Y+62
Button B: X+63, Y+29
Prize: X=13853, Y=249

Button A: X+81, Y+13
Button B: X+16, Y+82
Prize: X=18669, Y=12763

Button A: X+49, Y+87
Button B: X+69, Y+40
Prize: X=7424, Y=10046

Button A: X+44, Y+64
Button B: X+34, Y+12
Prize: X=5436, Y=14760

Button A: X+12, Y+56
Button B: X+77, Y+17
Prize: X=12675, Y=4591

Button A: X+38, Y+11
Button B: X+13, Y+43
Prize: X=8036, Y=14855

Button A: X+41, Y+86
Button B: X+94, Y+46
Prize: X=6887, Y=5678

Button A: X+59, Y+29
Button B: X+24, Y+52
Prize: X=2134, Y=7654

Button A: X+21, Y+44
Button B: X+35, Y+20
Prize: X=11638, Y=1832

Button A: X+23, Y+46
Button B: X+53, Y+24
Prize: X=6227, Y=6058

Button A: X+25, Y+66
Button B: X+80, Y+33
Prize: X=8530, Y=5412

Button A: X+35, Y+20
Button B: X+19, Y+53
Prize: X=11097, Y=18089

Button A: X+68, Y+47
Button B: X+14, Y+30
Prize: X=3166, Y=3428

Button A: X+42, Y+87
Button B: X+92, Y+37
Prize: X=5122, Y=6617

Button A: X+52, Y+33
Button B: X+15, Y+42
Prize: X=6984, Y=9788

Button A: X+31, Y+55
Button B: X+35, Y+12
Prize: X=1159, Y=10758

Button A: X+67, Y+30
Button B: X+11, Y+58
Prize: X=4113, Y=6710

Button A: X+97, Y+29
Button B: X+59, Y+86
Prize: X=4696, Y=4822

Button A: X+66, Y+16
Button B: X+28, Y+80
Prize: X=12164, Y=14000

Button A: X+31, Y+52
Button B: X+96, Y+11
Prize: X=6652, Y=956

Button A: X+98, Y+26
Button B: X+12, Y+22
Prize: X=7106, Y=3654

Button A: X+41, Y+23
Button B: X+17, Y+43
Prize: X=14372, Y=14388

Button A: X+31, Y+14
Button B: X+21, Y+38
Prize: X=3375, Y=2950

Button A: X+56, Y+25
Button B: X+24, Y+47
Prize: X=880, Y=10948

Button A: X+67, Y+41
Button B: X+22, Y+83
Prize: X=1259, Y=3691

Button A: X+21, Y+35
Button B: X+55, Y+29
Prize: X=4475, Y=18325

Button A: X+52, Y+75
Button B: X+34, Y+14
Prize: X=1376, Y=2473

Button A: X+12, Y+39
Button B: X+60, Y+34
Prize: X=18104, Y=2654

Button A: X+22, Y+63
Button B: X+73, Y+37
Prize: X=7058, Y=6792

Button A: X+79, Y+23
Button B: X+14, Y+62
Prize: X=12971, Y=16947

Button A: X+49, Y+26
Button B: X+37, Y+77
Prize: X=4576, Y=6788

Button A: X+53, Y+89
Button B: X+84, Y+14
Prize: X=5124, Y=7588

Button A: X+33, Y+63
Button B: X+80, Y+46
Prize: X=8882, Y=6604

Button A: X+51, Y+29
Button B: X+15, Y+82
Prize: X=5355, Y=5543

Button A: X+51, Y+24
Button B: X+17, Y+38
Prize: X=15816, Y=14454

Button A: X+41, Y+15
Button B: X+15, Y+54
Prize: X=2668, Y=5567

Button A: X+83, Y+26
Button B: X+31, Y+88
Prize: X=2156, Y=1928

Button A: X+13, Y+21
Button B: X+31, Y+14
Prize: X=9287, Y=3196

Button A: X+89, Y+40
Button B: X+17, Y+34
Prize: X=2683, Y=3710

Button A: X+59, Y+29
Button B: X+25, Y+61
Prize: X=13527, Y=19329

Button A: X+27, Y+98
Button B: X+19, Y+15
Prize: X=1964, Y=3621

Button A: X+99, Y+55
Button B: X+13, Y+41
Prize: X=3155, Y=5063

Button A: X+78, Y+39
Button B: X+47, Y+98
Prize: X=3095, Y=3857

Button A: X+89, Y+39
Button B: X+38, Y+96
Prize: X=5024, Y=8232

Button A: X+61, Y+73
Button B: X+15, Y+88
Prize: X=2887, Y=6397

Button A: X+69, Y+37
Button B: X+32, Y+63
Prize: X=734, Y=852

Button A: X+17, Y+67
Button B: X+61, Y+16
Prize: X=5057, Y=9497

Button A: X+85, Y+31
Button B: X+23, Y+78
Prize: X=3557, Y=3316

Button A: X+37, Y+72
Button B: X+52, Y+21
Prize: X=13193, Y=9965

Button A: X+18, Y+42
Button B: X+55, Y+25
Prize: X=15579, Y=3441

Button A: X+60, Y+27
Button B: X+24, Y+44
Prize: X=18056, Y=9838

Button A: X+60, Y+21
Button B: X+14, Y+90
Prize: X=4604, Y=5526

Button A: X+68, Y+16
Button B: X+61, Y+76
Prize: X=5576, Y=5504

Button A: X+17, Y+42
Button B: X+28, Y+11
Prize: X=1036, Y=5117

Button A: X+58, Y+67
Button B: X+14, Y+84
Prize: X=5530, Y=11543

Button A: X+67, Y+18
Button B: X+21, Y+55
Prize: X=7922, Y=8848

Button A: X+72, Y+25
Button B: X+11, Y+59
Prize: X=8964, Y=13923

Button A: X+77, Y+57
Button B: X+40, Y+94
Prize: X=4268, Y=4576

Button A: X+19, Y+64
Button B: X+67, Y+15
Prize: X=16119, Y=6644

Button A: X+22, Y+93
Button B: X+64, Y+61
Prize: X=6244, Y=12146

Button A: X+62, Y+14
Button B: X+24, Y+63
Prize: X=13282, Y=18799

Button A: X+25, Y+71
Button B: X+80, Y+17
Prize: X=3845, Y=4824

Button A: X+40, Y+79
Button B: X+99, Y+27
Prize: X=11796, Y=9141

Button A: X+55, Y+17
Button B: X+31, Y+64
Prize: X=18593, Y=18712

Button A: X+38, Y+88
Button B: X+67, Y+31
Prize: X=4273, Y=3315
"""