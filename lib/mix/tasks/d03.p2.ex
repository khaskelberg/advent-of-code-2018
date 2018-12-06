defmodule Mix.Tasks.D03.P2 do
  use Mix.Task

  import AdventOfCode2018.Day03

  @shortdoc "Day 03 Part 2"
  def run(_) do
    input = """
    #1 @ 126,902: 29x28
    #2 @ 84,482: 15x11
    #3 @ 603,530: 17x10
    #4 @ 316,302: 16x12
    #5 @ 739,983: 28x10
    #6 @ 753,122: 20x29
    #7 @ 530,554: 12x26
    #8 @ 455,60: 25x10
    #9 @ 915,465: 13x22
    #10 @ 981,813: 15x14
    #11 @ 299,473: 24x22
    #12 @ 647,679: 25x12
    #13 @ 898,700: 14x27
    #14 @ 622,745: 25x29
    #15 @ 312,156: 10x20
    #16 @ 480,316: 13x22
    #17 @ 735,160: 14x14
    #18 @ 82,713: 11x17
    #19 @ 691,670: 19x17
    #20 @ 14,968: 19x20
    #21 @ 3,271: 27x21
    #22 @ 341,788: 23x15
    #23 @ 564,771: 27x16
    #24 @ 676,166: 25x12
    #25 @ 530,172: 10x22
    #26 @ 730,277: 28x10
    #27 @ 437,739: 16x17
    #28 @ 261,722: 13x11
    #29 @ 935,122: 13x23
    #30 @ 676,16: 15x15
    #31 @ 915,319: 23x20
    #32 @ 737,810: 16x25
    #33 @ 767,147: 16x15
    #34 @ 778,895: 21x23
    #35 @ 17,739: 18x15
    #36 @ 662,424: 14x27
    #37 @ 336,934: 27x27
    #38 @ 541,934: 27x26
    #39 @ 621,3: 16x25
    #40 @ 714,196: 25x12
    #41 @ 6,628: 10x28
    #42 @ 192,379: 16x22
    #43 @ 89,747: 10x20
    #44 @ 419,789: 22x24
    #45 @ 241,910: 25x18
    #46 @ 743,873: 28x10
    #47 @ 581,836: 23x27
    #48 @ 574,119: 27x13
    #49 @ 432,573: 10x19
    #50 @ 886,620: 23x21
    #51 @ 446,167: 15x14
    #52 @ 326,634: 29x13
    #53 @ 29,457: 11x24
    #54 @ 410,189: 13x24
    #55 @ 811,933: 28x28
    #56 @ 287,650: 15x11
    #57 @ 240,519: 26x16
    #58 @ 598,695: 22x26
    #59 @ 836,344: 13x4
    #60 @ 261,140: 22x14
    #61 @ 739,88: 12x15
    #62 @ 295,891: 17x25
    #63 @ 246,861: 17x11
    #64 @ 719,844: 11x28
    #65 @ 669,597: 15x20
    #66 @ 718,364: 17x25
    #67 @ 388,535: 21x11
    #68 @ 475,504: 10x25
    #69 @ 359,621: 13x11
    #70 @ 153,446: 29x14
    #71 @ 166,540: 13x24
    #72 @ 135,369: 22x12
    #73 @ 302,878: 18x23
    #74 @ 829,215: 18x26
    #75 @ 81,483: 14x11
    #76 @ 950,458: 22x23
    #77 @ 576,757: 20x28
    #78 @ 558,235: 22x26
    #79 @ 290,761: 26x12
    #80 @ 315,610: 16x13
    #81 @ 652,917: 18x26
    #82 @ 916,117: 27x10
    #83 @ 16,85: 25x18
    #84 @ 397,636: 23x27
    #85 @ 771,627: 28x28
    #86 @ 824,897: 27x12
    #87 @ 852,605: 29x16
    #88 @ 197,838: 21x11
    #89 @ 876,397: 10x15
    #90 @ 9,916: 28x21
    #91 @ 591,978: 29x20
    #92 @ 744,611: 27x10
    #93 @ 459,62: 16x29
    #94 @ 87,622: 14x16
    #95 @ 161,738: 20x22
    #96 @ 506,264: 29x20
    #97 @ 633,742: 17x25
    #98 @ 413,226: 21x11
    #99 @ 840,441: 20x21
    #100 @ 37,7: 25x19
    #101 @ 21,711: 29x14
    #102 @ 438,190: 27x21
    #103 @ 633,113: 14x22
    #104 @ 277,26: 26x17
    #105 @ 135,462: 18x17
    #106 @ 46,783: 26x27
    #107 @ 353,702: 19x26
    #108 @ 711,975: 12x5
    #109 @ 555,4: 12x22
    #110 @ 384,841: 11x26
    #111 @ 433,35: 23x21
    #112 @ 680,260: 5x7
    #113 @ 330,256: 12x11
    #114 @ 705,394: 17x22
    #115 @ 898,116: 13x12
    #116 @ 376,813: 12x24
    #117 @ 349,826: 28x23
    #118 @ 684,67: 22x27
    #119 @ 973,758: 24x12
    #120 @ 183,924: 19x15
    #121 @ 186,196: 24x15
    #122 @ 697,188: 27x15
    #123 @ 868,343: 25x15
    #124 @ 172,340: 14x13
    #125 @ 899,203: 12x4
    #126 @ 403,194: 16x29
    #127 @ 607,285: 16x10
    #128 @ 296,924: 10x14
    #129 @ 735,72: 25x21
    #130 @ 120,678: 27x23
    #131 @ 747,771: 26x23
    #132 @ 657,537: 23x26
    #133 @ 402,632: 29x12
    #134 @ 862,571: 26x22
    #135 @ 881,873: 26x10
    #136 @ 354,820: 29x18
    #137 @ 173,742: 15x20
    #138 @ 417,32: 14x15
    #139 @ 688,681: 22x15
    #140 @ 800,269: 19x25
    #141 @ 880,821: 10x23
    #142 @ 477,579: 22x27
    #143 @ 846,583: 28x26
    #144 @ 391,236: 28x23
    #145 @ 672,950: 16x11
    #146 @ 560,796: 25x20
    #147 @ 38,781: 20x19
    #148 @ 664,694: 14x10
    #149 @ 67,337: 20x11
    #150 @ 101,924: 16x29
    #151 @ 19,532: 13x12
    #152 @ 846,757: 23x21
    #153 @ 321,832: 15x14
    #154 @ 76,905: 12x3
    #155 @ 174,628: 26x22
    #156 @ 239,298: 10x21
    #157 @ 698,71: 24x28
    #158 @ 444,163: 16x26
    #159 @ 661,699: 20x29
    #160 @ 703,126: 11x15
    #161 @ 626,58: 27x27
    #162 @ 85,74: 14x10
    #163 @ 834,430: 21x16
    #164 @ 815,119: 19x24
    #165 @ 471,242: 27x17
    #166 @ 98,696: 14x29
    #167 @ 98,573: 24x20
    #168 @ 97,211: 15x24
    #169 @ 519,805: 15x13
    #170 @ 718,630: 17x7
    #171 @ 559,661: 22x16
    #172 @ 662,480: 13x24
    #173 @ 105,536: 14x13
    #174 @ 618,746: 15x29
    #175 @ 951,232: 12x28
    #176 @ 659,602: 27x15
    #177 @ 612,761: 15x19
    #178 @ 953,469: 24x15
    #179 @ 285,518: 15x12
    #180 @ 677,258: 18x12
    #181 @ 562,417: 14x25
    #182 @ 712,522: 23x26
    #183 @ 506,775: 13x20
    #184 @ 264,516: 24x24
    #185 @ 97,113: 19x21
    #186 @ 390,588: 10x25
    #187 @ 427,361: 23x15
    #188 @ 217,509: 26x21
    #189 @ 239,662: 18x14
    #190 @ 121,368: 18x26
    #191 @ 940,852: 10x14
    #192 @ 867,882: 20x15
    #193 @ 413,266: 27x21
    #194 @ 838,469: 24x29
    #195 @ 837,76: 14x24
    #196 @ 528,418: 29x21
    #197 @ 295,341: 18x14
    #198 @ 345,609: 19x21
    #199 @ 522,265: 28x12
    #200 @ 190,416: 21x10
    #201 @ 408,347: 13x11
    #202 @ 856,162: 27x19
    #203 @ 797,439: 26x17
    #204 @ 265,143: 27x19
    #205 @ 761,102: 11x21
    #206 @ 933,693: 11x11
    #207 @ 251,801: 21x14
    #208 @ 364,695: 26x10
    #209 @ 33,781: 28x13
    #210 @ 696,697: 29x19
    #211 @ 501,555: 10x11
    #212 @ 73,452: 24x18
    #213 @ 91,291: 25x18
    #214 @ 396,499: 24x10
    #215 @ 86,85: 22x15
    #216 @ 418,475: 16x25
    #217 @ 603,901: 11x23
    #218 @ 15,955: 20x17
    #219 @ 107,355: 28x28
    #220 @ 258,550: 28x15
    #221 @ 265,399: 27x17
    #222 @ 496,757: 15x28
    #223 @ 423,491: 21x24
    #224 @ 228,829: 15x25
    #225 @ 188,519: 28x24
    #226 @ 566,622: 18x17
    #227 @ 929,856: 25x14
    #228 @ 596,303: 18x20
    #229 @ 633,110: 26x26
    #230 @ 419,544: 24x29
    #231 @ 380,389: 19x11
    #232 @ 157,364: 18x21
    #233 @ 866,294: 20x21
    #234 @ 899,710: 22x23
    #235 @ 455,493: 23x26
    #236 @ 802,123: 20x26
    #237 @ 781,384: 11x15
    #238 @ 649,763: 15x13
    #239 @ 889,878: 20x15
    #240 @ 820,508: 23x12
    #241 @ 95,561: 14x13
    #242 @ 580,418: 20x18
    #243 @ 12,341: 27x11
    #244 @ 734,191: 28x11
    #245 @ 473,499: 13x10
    #246 @ 386,879: 26x10
    #247 @ 711,691: 10x29
    #248 @ 916,443: 18x10
    #249 @ 360,378: 22x18
    #250 @ 29,518: 25x18
    #251 @ 426,914: 24x19
    #252 @ 746,287: 26x16
    #253 @ 792,219: 15x23
    #254 @ 780,977: 18x18
    #255 @ 530,79: 12x25
    #256 @ 597,698: 16x24
    #257 @ 933,305: 23x23
    #258 @ 596,695: 11x18
    #259 @ 235,834: 27x17
    #260 @ 302,273: 14x15
    #261 @ 412,451: 25x10
    #262 @ 870,205: 14x15
    #263 @ 291,384: 18x27
    #264 @ 35,309: 27x21
    #265 @ 357,506: 28x14
    #266 @ 968,439: 14x29
    #267 @ 184,185: 28x17
    #268 @ 387,931: 16x12
    #269 @ 631,660: 26x22
    #270 @ 469,555: 16x24
    #271 @ 361,497: 14x14
    #272 @ 403,355: 11x12
    #273 @ 159,371: 11x23
    #274 @ 393,483: 24x19
    #275 @ 535,347: 14x24
    #276 @ 44,135: 21x16
    #277 @ 380,634: 22x14
    #278 @ 876,287: 13x28
    #279 @ 265,870: 13x23
    #280 @ 583,138: 24x27
    #281 @ 364,99: 20x29
    #282 @ 507,415: 24x21
    #283 @ 693,861: 29x17
    #284 @ 318,938: 28x19
    #285 @ 704,584: 19x12
    #286 @ 369,922: 12x17
    #287 @ 512,548: 25x21
    #288 @ 723,788: 29x20
    #289 @ 434,605: 15x29
    #290 @ 302,293: 22x27
    #291 @ 901,17: 13x18
    #292 @ 217,880: 25x21
    #293 @ 795,623: 10x28
    #294 @ 433,102: 10x22
    #295 @ 490,799: 16x27
    #296 @ 897,34: 29x29
    #297 @ 359,644: 20x26
    #298 @ 252,549: 23x22
    #299 @ 102,370: 26x13
    #300 @ 184,545: 20x24
    #301 @ 704,481: 13x18
    #302 @ 881,705: 19x15
    #303 @ 184,342: 27x14
    #304 @ 853,725: 14x28
    #305 @ 220,390: 12x20
    #306 @ 417,52: 21x14
    #307 @ 743,618: 26x16
    #308 @ 320,254: 29x19
    #309 @ 791,971: 11x25
    #310 @ 104,57: 11x21
    #311 @ 600,748: 14x27
    #312 @ 11,278: 26x17
    #313 @ 360,798: 14x28
    #314 @ 212,106: 29x21
    #315 @ 812,24: 14x14
    #316 @ 550,1: 29x11
    #317 @ 702,548: 19x20
    #318 @ 190,911: 6x7
    #319 @ 85,64: 24x15
    #320 @ 915,479: 13x26
    #321 @ 550,868: 26x29
    #322 @ 832,855: 21x10
    #323 @ 443,887: 23x20
    #324 @ 978,169: 15x12
    #325 @ 957,745: 21x29
    #326 @ 218,149: 19x17
    #327 @ 452,857: 22x18
    #328 @ 470,19: 29x20
    #329 @ 425,134: 16x19
    #330 @ 622,753: 25x22
    #331 @ 466,155: 29x15
    #332 @ 288,0: 20x11
    #333 @ 133,919: 8x3
    #334 @ 202,459: 26x25
    #335 @ 613,805: 28x22
    #336 @ 784,123: 11x17
    #337 @ 527,413: 26x28
    #338 @ 955,509: 12x21
    #339 @ 255,138: 13x25
    #340 @ 387,247: 29x25
    #341 @ 41,701: 27x15
    #342 @ 108,891: 26x24
    #343 @ 515,466: 24x20
    #344 @ 106,108: 11x22
    #345 @ 36,691: 14x26
    #346 @ 303,463: 19x16
    #347 @ 890,882: 14x17
    #348 @ 37,23: 25x25
    #349 @ 535,665: 25x11
    #350 @ 737,935: 15x17
    #351 @ 318,792: 18x11
    #352 @ 885,331: 17x13
    #353 @ 384,224: 11x19
    #354 @ 433,557: 22x20
    #355 @ 586,463: 14x11
    #356 @ 595,958: 11x15
    #357 @ 697,39: 20x17
    #358 @ 402,612: 23x27
    #359 @ 881,695: 26x18
    #360 @ 92,75: 11x11
    #361 @ 741,739: 17x27
    #362 @ 205,388: 15x23
    #363 @ 292,260: 21x12
    #364 @ 35,426: 10x21
    #365 @ 314,459: 12x27
    #366 @ 834,678: 17x29
    #367 @ 956,102: 12x19
    #368 @ 750,410: 22x11
    #369 @ 531,161: 19x15
    #370 @ 643,654: 11x12
    #371 @ 309,248: 23x26
    #372 @ 898,335: 19x19
    #373 @ 379,180: 7x7
    #374 @ 680,720: 13x26
    #375 @ 744,660: 13x14
    #376 @ 445,135: 11x25
    #377 @ 67,622: 23x17
    #378 @ 664,830: 29x22
    #379 @ 283,933: 16x15
    #380 @ 46,835: 29x27
    #381 @ 876,311: 26x25
    #382 @ 925,703: 18x22
    #383 @ 573,664: 23x27
    #384 @ 529,120: 28x10
    #385 @ 892,201: 24x10
    #386 @ 202,394: 16x15
    #387 @ 716,854: 23x13
    #388 @ 333,462: 15x21
    #389 @ 520,448: 15x19
    #390 @ 924,613: 18x21
    #391 @ 548,344: 22x17
    #392 @ 520,383: 17x17
    #393 @ 955,932: 15x22
    #394 @ 377,268: 11x25
    #395 @ 119,45: 5x7
    #396 @ 425,547: 14x24
    #397 @ 785,673: 15x20
    #398 @ 475,489: 18x24
    #399 @ 765,981: 17x10
    #400 @ 942,414: 10x16
    #401 @ 373,641: 23x16
    #402 @ 950,862: 12x10
    #403 @ 580,193: 10x24
    #404 @ 556,827: 18x20
    #405 @ 515,271: 12x24
    #406 @ 939,69: 15x11
    #407 @ 578,101: 12x11
    #408 @ 633,157: 28x16
    #409 @ 652,173: 15x25
    #410 @ 275,191: 28x13
    #411 @ 383,481: 19x19
    #412 @ 158,47: 12x22
    #413 @ 800,158: 29x13
    #414 @ 783,762: 27x13
    #415 @ 707,98: 23x27
    #416 @ 433,132: 29x20
    #417 @ 973,460: 16x23
    #418 @ 681,56: 16x15
    #419 @ 13,653: 29x15
    #420 @ 183,399: 19x28
    #421 @ 507,359: 16x11
    #422 @ 804,649: 18x29
    #423 @ 7,508: 14x14
    #424 @ 857,501: 24x13
    #425 @ 157,441: 24x18
    #426 @ 802,606: 11x26
    #427 @ 739,275: 9x15
    #428 @ 138,287: 20x28
    #429 @ 656,658: 29x26
    #430 @ 815,275: 11x17
    #431 @ 156,233: 14x15
    #432 @ 962,759: 20x19
    #433 @ 564,667: 20x26
    #434 @ 833,957: 15x21
    #435 @ 708,752: 16x18
    #436 @ 54,315: 28x10
    #437 @ 779,124: 17x12
    #438 @ 186,480: 28x18
    #439 @ 359,639: 27x28
    #440 @ 307,213: 15x28
    #441 @ 549,324: 20x22
    #442 @ 307,312: 24x14
    #443 @ 164,638: 23x21
    #444 @ 223,377: 23x22
    #445 @ 474,582: 16x20
    #446 @ 105,62: 25x26
    #447 @ 693,65: 16x25
    #448 @ 497,631: 3x9
    #449 @ 299,315: 24x10
    #450 @ 350,371: 13x8
    #451 @ 557,945: 28x15
    #452 @ 459,890: 12x25
    #453 @ 483,592: 15x18
    #454 @ 929,201: 25x11
    #455 @ 217,827: 17x24
    #456 @ 456,851: 18x27
    #457 @ 568,141: 24x10
    #458 @ 901,568: 10x16
    #459 @ 401,475: 18x16
    #460 @ 434,119: 11x16
    #461 @ 379,752: 24x16
    #462 @ 437,794: 15x27
    #463 @ 913,581: 17x29
    #464 @ 219,603: 13x21
    #465 @ 443,106: 3x5
    #466 @ 782,619: 22x26
    #467 @ 116,95: 15x26
    #468 @ 85,720: 3x3
    #469 @ 39,854: 18x17
    #470 @ 699,943: 20x12
    #471 @ 962,496: 22x20
    #472 @ 314,214: 16x18
    #473 @ 715,834: 18x17
    #474 @ 727,69: 20x25
    #475 @ 295,966: 27x19
    #476 @ 290,792: 24x11
    #477 @ 706,73: 23x29
    #478 @ 591,349: 17x18
    #479 @ 105,709: 12x22
    #480 @ 469,69: 22x26
    #481 @ 868,647: 28x19
    #482 @ 732,182: 12x23
    #483 @ 469,843: 15x29
    #484 @ 320,843: 28x23
    #485 @ 240,40: 26x10
    #486 @ 715,261: 19x12
    #487 @ 670,287: 25x25
    #488 @ 921,246: 11x22
    #489 @ 567,943: 11x15
    #490 @ 70,754: 23x22
    #491 @ 715,628: 25x12
    #492 @ 591,580: 19x25
    #493 @ 527,492: 17x15
    #494 @ 186,897: 25x29
    #495 @ 306,321: 22x23
    #496 @ 366,841: 22x12
    #497 @ 923,105: 22x12
    #498 @ 458,335: 23x17
    #499 @ 373,774: 23x10
    #500 @ 85,321: 12x22
    #501 @ 405,61: 26x21
    #502 @ 169,328: 29x21
    #503 @ 662,373: 17x20
    #504 @ 693,767: 23x20
    #505 @ 437,98: 21x20
    #506 @ 685,25: 21x29
    #507 @ 195,133: 16x11
    #508 @ 736,654: 13x27
    #509 @ 344,686: 13x25
    #510 @ 622,580: 11x18
    #511 @ 563,874: 18x23
    #512 @ 610,527: 10x17
    #513 @ 313,218: 26x10
    #514 @ 435,442: 18x12
    #515 @ 418,546: 28x21
    #516 @ 883,886: 15x25
    #517 @ 446,205: 12x11
    #518 @ 73,875: 13x24
    #519 @ 362,349: 14x12
    #520 @ 555,230: 13x28
    #521 @ 71,616: 20x22
    #522 @ 647,683: 24x25
    #523 @ 613,265: 22x13
    #524 @ 157,290: 25x25
    #525 @ 444,493: 21x16
    #526 @ 658,824: 12x14
    #527 @ 9,90: 14x10
    #528 @ 475,546: 12x29
    #529 @ 285,15: 25x26
    #530 @ 10,250: 25x29
    #531 @ 229,305: 26x25
    #532 @ 54,696: 18x20
    #533 @ 89,526: 28x15
    #534 @ 578,427: 27x12
    #535 @ 374,279: 21x28
    #536 @ 931,428: 10x25
    #537 @ 478,19: 25x19
    #538 @ 464,851: 14x21
    #539 @ 673,685: 22x29
    #540 @ 438,134: 18x14
    #541 @ 628,839: 29x27
    #542 @ 109,368: 16x21
    #543 @ 273,866: 11x24
    #544 @ 105,536: 16x11
    #545 @ 897,543: 11x27
    #546 @ 43,598: 14x15
    #547 @ 676,772: 18x24
    #548 @ 718,950: 10x20
    #549 @ 487,809: 21x17
    #550 @ 799,860: 29x27
    #551 @ 79,628: 16x26
    #552 @ 725,803: 20x10
    #553 @ 56,274: 13x19
    #554 @ 75,868: 20x24
    #555 @ 258,789: 19x16
    #556 @ 562,789: 14x13
    #557 @ 41,859: 14x10
    #558 @ 162,820: 19x27
    #559 @ 918,819: 25x29
    #560 @ 61,513: 14x28
    #561 @ 442,397: 20x14
    #562 @ 589,360: 26x19
    #563 @ 97,52: 25x14
    #564 @ 985,579: 15x22
    #565 @ 576,130: 21x22
    #566 @ 196,130: 17x15
    #567 @ 845,404: 18x18
    #568 @ 372,175: 25x24
    #569 @ 937,256: 29x20
    #570 @ 541,716: 28x24
    #571 @ 590,798: 27x15
    #572 @ 89,47: 26x12
    #573 @ 448,23: 11x27
    #574 @ 126,358: 12x13
    #575 @ 238,615: 13x16
    #576 @ 309,251: 13x25
    #577 @ 369,863: 20x14
    #578 @ 285,467: 20x12
    #579 @ 598,294: 25x27
    #580 @ 700,264: 23x24
    #581 @ 310,432: 21x17
    #582 @ 379,543: 13x27
    #583 @ 671,432: 14x26
    #584 @ 315,206: 14x11
    #585 @ 413,344: 19x22
    #586 @ 757,519: 12x14
    #587 @ 792,110: 19x26
    #588 @ 458,141: 22x28
    #589 @ 791,696: 22x29
    #590 @ 663,177: 19x29
    #591 @ 269,656: 28x15
    #592 @ 475,775: 20x19
    #593 @ 29,158: 23x14
    #594 @ 910,430: 26x20
    #595 @ 623,186: 21x25
    #596 @ 674,735: 28x11
    #597 @ 165,322: 26x25
    #598 @ 604,589: 24x19
    #599 @ 246,666: 26x27
    #600 @ 689,797: 22x18
    #601 @ 181,933: 21x15
    #602 @ 729,230: 23x28
    #603 @ 85,734: 11x25
    #604 @ 833,537: 21x11
    #605 @ 585,733: 11x21
    #606 @ 288,450: 25x27
    #607 @ 237,345: 25x16
    #608 @ 191,503: 18x28
    #609 @ 293,751: 23x19
    #610 @ 401,51: 28x20
    #611 @ 871,570: 27x14
    #612 @ 716,730: 16x10
    #613 @ 601,623: 18x24
    #614 @ 350,355: 27x15
    #615 @ 367,477: 15x23
    #616 @ 930,255: 17x18
    #617 @ 860,843: 23x10
    #618 @ 400,643: 27x16
    #619 @ 433,720: 22x27
    #620 @ 620,962: 15x23
    #621 @ 122,153: 15x16
    #622 @ 452,791: 16x17
    #623 @ 310,168: 24x15
    #624 @ 276,468: 13x10
    #625 @ 610,905: 14x10
    #626 @ 608,4: 29x21
    #627 @ 478,86: 21x22
    #628 @ 244,560: 26x21
    #629 @ 466,392: 21x11
    #630 @ 835,482: 11x23
    #631 @ 601,864: 14x25
    #632 @ 763,909: 25x27
    #633 @ 428,571: 20x25
    #634 @ 761,886: 24x19
    #635 @ 322,864: 13x21
    #636 @ 84,507: 28x16
    #637 @ 37,146: 25x16
    #638 @ 706,507: 11x20
    #639 @ 703,474: 23x28
    #640 @ 703,386: 12x11
    #641 @ 164,910: 26x21
    #642 @ 698,729: 10x4
    #643 @ 353,287: 23x22
    #644 @ 597,540: 22x20
    #645 @ 698,689: 17x10
    #646 @ 382,289: 11x10
    #647 @ 61,234: 10x14
    #648 @ 218,608: 17x26
    #649 @ 916,662: 13x16
    #650 @ 956,499: 15x17
    #651 @ 556,949: 28x15
    #652 @ 106,51: 26x15
    #653 @ 432,530: 25x22
    #654 @ 373,270: 18x29
    #655 @ 871,398: 14x17
    #656 @ 768,609: 29x24
    #657 @ 642,59: 12x27
    #658 @ 268,333: 13x25
    #659 @ 556,202: 25x19
    #660 @ 306,925: 16x26
    #661 @ 445,628: 23x24
    #662 @ 471,386: 15x24
    #663 @ 136,820: 15x17
    #664 @ 568,103: 23x18
    #665 @ 787,107: 11x19
    #666 @ 67,922: 14x23
    #667 @ 980,173: 7x3
    #668 @ 679,228: 18x18
    #669 @ 960,118: 27x15
    #670 @ 515,925: 13x16
    #671 @ 354,785: 11x28
    #672 @ 551,955: 10x22
    #673 @ 23,74: 26x21
    #674 @ 776,51: 20x28
    #675 @ 288,8: 15x27
    #676 @ 114,700: 24x28
    #677 @ 822,374: 26x27
    #678 @ 522,553: 17x29
    #679 @ 198,836: 18x29
    #680 @ 840,904: 18x13
    #681 @ 92,778: 17x20
    #682 @ 921,327: 12x21
    #683 @ 44,675: 14x21
    #684 @ 923,237: 11x15
    #685 @ 593,709: 10x16
    #686 @ 227,611: 21x23
    #687 @ 75,336: 20x15
    #688 @ 309,261: 28x27
    #689 @ 743,835: 21x16
    #690 @ 903,585: 26x24
    #691 @ 260,413: 16x11
    #692 @ 585,962: 16x29
    #693 @ 221,899: 23x15
    #694 @ 917,62: 29x21
    #695 @ 958,656: 12x22
    #696 @ 736,756: 14x25
    #697 @ 596,292: 10x16
    #698 @ 133,811: 22x28
    #699 @ 892,872: 23x16
    #700 @ 259,714: 27x22
    #701 @ 261,725: 23x19
    #702 @ 62,950: 16x22
    #703 @ 418,414: 21x14
    #704 @ 182,663: 21x16
    #705 @ 823,89: 22x11
    #706 @ 209,968: 15x26
    #707 @ 554,546: 11x10
    #708 @ 73,186: 15x24
    #709 @ 816,574: 19x26
    #710 @ 336,446: 25x20
    #711 @ 596,45: 12x24
    #712 @ 448,378: 26x17
    #713 @ 606,807: 26x27
    #714 @ 813,9: 28x29
    #715 @ 346,361: 17x29
    #716 @ 641,958: 18x19
    #717 @ 493,766: 17x13
    #718 @ 592,550: 18x25
    #719 @ 377,599: 29x18
    #720 @ 142,893: 18x14
    #721 @ 549,532: 19x27
    #722 @ 656,846: 28x12
    #723 @ 2,956: 29x17
    #724 @ 527,977: 19x15
    #725 @ 100,902: 20x19
    #726 @ 630,266: 13x28
    #727 @ 549,102: 14x22
    #728 @ 472,868: 12x17
    #729 @ 59,306: 29x23
    #730 @ 176,828: 18x13
    #731 @ 753,394: 29x19
    #732 @ 702,729: 27x14
    #733 @ 57,538: 15x18
    #734 @ 956,912: 12x28
    #735 @ 102,24: 12x26
    #736 @ 303,488: 5x18
    #737 @ 188,626: 23x25
    #738 @ 193,197: 25x16
    #739 @ 410,458: 12x17
    #740 @ 964,492: 16x24
    #741 @ 77,623: 19x15
    #742 @ 767,111: 12x15
    #743 @ 54,288: 13x13
    #744 @ 228,102: 14x22
    #745 @ 301,486: 10x26
    #746 @ 856,655: 19x11
    #747 @ 185,177: 19x23
    #748 @ 57,764: 21x19
    #749 @ 374,754: 21x23
    #750 @ 236,33: 20x27
    #751 @ 619,786: 22x24
    #752 @ 281,84: 22x28
    #753 @ 297,792: 23x16
    #754 @ 388,938: 16x17
    #755 @ 898,330: 20x29
    #756 @ 142,38: 18x25
    #757 @ 414,481: 13x29
    #758 @ 31,282: 14x17
    #759 @ 670,219: 12x14
    #760 @ 36,421: 13x19
    #761 @ 953,786: 20x10
    #762 @ 531,407: 22x29
    #763 @ 83,342: 18x19
    #764 @ 415,532: 27x26
    #765 @ 595,923: 28x15
    #766 @ 106,109: 25x18
    #767 @ 491,629: 14x16
    #768 @ 613,980: 10x14
    #769 @ 876,45: 21x22
    #770 @ 723,767: 15x17
    #771 @ 590,358: 14x27
    #772 @ 41,695: 23x28
    #773 @ 43,657: 18x11
    #774 @ 37,592: 24x14
    #775 @ 790,747: 18x14
    #776 @ 84,174: 11x26
    #777 @ 924,165: 10x23
    #778 @ 832,450: 15x10
    #779 @ 709,49: 28x25
    #780 @ 803,849: 26x17
    #781 @ 294,25: 10x25
    #782 @ 955,623: 26x18
    #783 @ 149,467: 11x20
    #784 @ 618,130: 13x12
    #785 @ 440,121: 10x13
    #786 @ 301,13: 22x24
    #787 @ 610,70: 21x29
    #788 @ 189,518: 25x21
    #789 @ 675,434: 15x25
    #790 @ 342,348: 21x20
    #791 @ 960,115: 12x26
    #792 @ 666,314: 15x27
    #793 @ 951,438: 28x13
    #794 @ 75,908: 15x23
    #795 @ 792,839: 19x24
    #796 @ 227,144: 20x11
    #797 @ 606,149: 17x29
    #798 @ 322,260: 29x15
    #799 @ 556,826: 19x29
    #800 @ 794,559: 26x21
    #801 @ 614,877: 18x19
    #802 @ 831,700: 22x18
    #803 @ 705,490: 29x23
    #804 @ 74,900: 24x13
    #805 @ 99,519: 20x14
    #806 @ 468,597: 16x27
    #807 @ 566,633: 17x14
    #808 @ 223,866: 11x11
    #809 @ 722,504: 21x12
    #810 @ 943,863: 16x19
    #811 @ 709,341: 27x10
    #812 @ 568,746: 27x13
    #813 @ 103,295: 13x10
    #814 @ 734,155: 17x14
    #815 @ 946,672: 27x17
    #816 @ 840,845: 22x26
    #817 @ 382,659: 26x28
    #818 @ 731,631: 16x14
    #819 @ 727,630: 21x19
    #820 @ 789,345: 11x21
    #821 @ 695,689: 27x17
    #822 @ 271,649: 16x22
    #823 @ 707,795: 18x29
    #824 @ 650,475: 21x13
    #825 @ 531,531: 28x28
    #826 @ 566,317: 23x17
    #827 @ 53,827: 27x27
    #828 @ 646,555: 27x12
    #829 @ 691,843: 11x19
    #830 @ 258,855: 23x21
    #831 @ 409,187: 10x29
    #832 @ 482,630: 11x15
    #833 @ 295,459: 15x22
    #834 @ 977,592: 11x20
    #835 @ 85,404: 13x22
    #836 @ 409,49: 29x11
    #837 @ 549,609: 22x22
    #838 @ 555,688: 28x26
    #839 @ 912,307: 29x16
    #840 @ 796,862: 21x10
    #841 @ 143,372: 22x17
    #842 @ 368,871: 20x16
    #843 @ 54,475: 15x20
    #844 @ 606,443: 28x10
    #845 @ 643,837: 24x14
    #846 @ 180,817: 29x15
    #847 @ 177,751: 17x11
    #848 @ 647,969: 25x22
    #849 @ 759,509: 13x11
    #850 @ 606,620: 21x24
    #851 @ 827,885: 18x28
    #852 @ 608,885: 13x21
    #853 @ 790,868: 29x25
    #854 @ 465,352: 11x19
    #855 @ 627,643: 23x16
    #856 @ 333,341: 19x11
    #857 @ 265,718: 28x17
    #858 @ 200,448: 10x27
    #859 @ 344,826: 27x13
    #860 @ 957,103: 10x16
    #861 @ 148,309: 27x29
    #862 @ 367,514: 15x29
    #863 @ 945,241: 24x15
    #864 @ 459,508: 26x20
    #865 @ 696,599: 11x12
    #866 @ 185,159: 29x19
    #867 @ 818,370: 27x17
    #868 @ 973,453: 13x29
    #869 @ 553,243: 24x29
    #870 @ 391,472: 18x28
    #871 @ 527,352: 13x24
    #872 @ 426,267: 22x14
    #873 @ 0,248: 14x21
    #874 @ 747,190: 13x14
    #875 @ 312,722: 15x15
    #876 @ 350,353: 18x27
    #877 @ 116,103: 13x17
    #878 @ 148,245: 23x23
    #879 @ 473,355: 24x19
    #880 @ 287,551: 22x12
    #881 @ 854,608: 27x22
    #882 @ 131,270: 15x26
    #883 @ 638,472: 15x20
    #884 @ 793,338: 10x13
    #885 @ 844,939: 17x14
    #886 @ 694,727: 27x11
    #887 @ 464,791: 28x10
    #888 @ 9,590: 24x16
    #889 @ 560,83: 23x24
    #890 @ 747,278: 29x14
    #891 @ 74,763: 11x11
    #892 @ 255,474: 22x21
    #893 @ 349,300: 27x29
    #894 @ 856,298: 28x12
    #895 @ 164,232: 25x18
    #896 @ 537,104: 14x25
    #897 @ 19,741: 12x8
    #898 @ 424,43: 16x11
    #899 @ 676,153: 14x18
    #900 @ 769,656: 23x17
    #901 @ 883,905: 17x19
    #902 @ 770,350: 21x28
    #903 @ 8,961: 18x19
    #904 @ 457,849: 26x13
    #905 @ 185,758: 16x10
    #906 @ 878,583: 18x18
    #907 @ 433,734: 29x27
    #908 @ 511,279: 19x24
    #909 @ 673,423: 20x15
    #910 @ 890,470: 28x24
    #911 @ 531,538: 14x17
    #912 @ 90,778: 20x11
    #913 @ 914,221: 11x29
    #914 @ 330,871: 20x23
    #915 @ 305,609: 24x14
    #916 @ 836,747: 13x22
    #917 @ 733,937: 29x11
    #918 @ 824,451: 28x12
    #919 @ 308,306: 11x19
    #920 @ 622,626: 11x28
    #921 @ 181,362: 22x18
    #922 @ 834,962: 15x11
    #923 @ 59,246: 20x23
    #924 @ 855,868: 19x29
    #925 @ 476,779: 17x21
    #926 @ 460,256: 15x12
    #927 @ 688,742: 14x23
    #928 @ 160,560: 28x19
    #929 @ 470,456: 12x23
    #930 @ 553,780: 15x23
    #931 @ 377,700: 23x11
    #932 @ 760,761: 27x22
    #933 @ 105,68: 18x11
    #934 @ 36,648: 29x22
    #935 @ 508,405: 25x25
    #936 @ 76,360: 27x29
    #937 @ 113,130: 19x28
    #938 @ 517,383: 12x15
    #939 @ 406,892: 23x27
    #940 @ 522,575: 17x12
    #941 @ 778,765: 11x11
    #942 @ 227,868: 3x6
    #943 @ 0,922: 18x23
    #944 @ 55,683: 15x19
    #945 @ 755,648: 19x14
    #946 @ 735,271: 21x23
    #947 @ 454,852: 22x14
    #948 @ 338,936: 21x19
    #949 @ 348,920: 22x17
    #950 @ 906,447: 29x14
    #951 @ 519,919: 28x12
    #952 @ 243,946: 26x27
    #953 @ 194,641: 26x23
    #954 @ 900,332: 15x21
    #955 @ 11,672: 14x28
    #956 @ 829,706: 23x20
    #957 @ 174,14: 20x22
    #958 @ 876,295: 29x17
    #959 @ 338,637: 18x29
    #960 @ 40,697: 19x21
    #961 @ 61,489: 15x18
    #962 @ 300,856: 23x11
    #963 @ 862,202: 29x20
    #964 @ 852,507: 21x16
    #965 @ 404,51: 22x12
    #966 @ 585,453: 15x12
    #967 @ 113,513: 21x23
    #968 @ 615,130: 20x19
    #969 @ 359,802: 17x14
    #970 @ 706,183: 29x18
    #971 @ 702,542: 23x21
    #972 @ 205,494: 17x18
    #973 @ 271,491: 14x25
    #974 @ 449,9: 23x17
    #975 @ 240,627: 15x29
    #976 @ 720,551: 15x28
    #977 @ 259,351: 10x16
    #978 @ 849,546: 21x22
    #979 @ 17,667: 16x28
    #980 @ 598,752: 18x19
    #981 @ 600,910: 19x18
    #982 @ 738,833: 17x29
    #983 @ 790,652: 17x24
    #984 @ 87,76: 5x3
    #985 @ 923,866: 22x18
    #986 @ 307,742: 21x26
    #987 @ 348,369: 18x14
    #988 @ 847,851: 11x23
    #989 @ 618,298: 26x17
    #990 @ 812,629: 10x24
    #991 @ 698,119: 26x25
    #992 @ 763,882: 23x29
    #993 @ 954,817: 29x19
    #994 @ 777,722: 26x27
    #995 @ 408,8: 18x16
    #996 @ 717,535: 10x22
    #997 @ 944,783: 22x14
    #998 @ 714,577: 28x17
    #999 @ 223,955: 27x21
    #1000 @ 608,64: 17x20
    #1001 @ 819,394: 29x27
    #1002 @ 733,506: 14x21
    #1003 @ 712,383: 28x25
    #1004 @ 897,939: 13x29
    #1005 @ 681,702: 22x23
    #1006 @ 146,372: 26x14
    #1007 @ 512,277: 20x19
    #1008 @ 682,86: 25x26
    #1009 @ 540,694: 20x26
    #1010 @ 171,764: 20x10
    #1011 @ 682,710: 22x13
    #1012 @ 657,789: 4x10
    #1013 @ 963,207: 20x21
    #1014 @ 846,111: 23x19
    #1015 @ 373,306: 16x19
    #1016 @ 616,642: 19x12
    #1017 @ 783,439: 24x16
    #1018 @ 87,352: 10x4
    #1019 @ 128,156: 29x11
    #1020 @ 447,758: 13x23
    #1021 @ 669,735: 15x14
    #1022 @ 196,501: 24x22
    #1023 @ 29,22: 25x26
    #1024 @ 693,275: 29x18
    #1025 @ 319,175: 29x26
    #1026 @ 614,130: 29x29
    #1027 @ 654,785: 12x25
    #1028 @ 219,834: 15x21
    #1029 @ 73,853: 11x22
    #1030 @ 469,707: 29x25
    #1031 @ 632,852: 18x12
    #1032 @ 722,195: 11x21
    #1033 @ 183,853: 24x27
    #1034 @ 372,499: 28x25
    #1035 @ 863,375: 25x18
    #1036 @ 689,130: 27x24
    #1037 @ 690,604: 22x12
    #1038 @ 361,197: 16x13
    #1039 @ 66,458: 15x13
    #1040 @ 974,766: 14x21
    #1041 @ 791,381: 20x17
    #1042 @ 513,789: 18x18
    #1043 @ 296,795: 14x11
    #1044 @ 725,204: 24x10
    #1045 @ 122,894: 13x27
    #1046 @ 891,95: 19x27
    #1047 @ 76,397: 14x16
    #1048 @ 205,516: 14x14
    #1049 @ 882,639: 29x13
    #1050 @ 855,106: 11x15
    #1051 @ 834,341: 18x11
    #1052 @ 736,191: 28x27
    #1053 @ 471,483: 24x21
    #1054 @ 525,973: 28x21
    #1055 @ 574,179: 18x17
    #1056 @ 656,918: 18x20
    #1057 @ 829,190: 14x27
    #1058 @ 673,373: 13x11
    #1059 @ 260,587: 16x18
    #1060 @ 333,385: 26x18
    #1061 @ 817,157: 18x14
    #1062 @ 522,178: 26x19
    #1063 @ 576,938: 16x29
    #1064 @ 879,436: 11x17
    #1065 @ 486,447: 22x23
    #1066 @ 303,429: 21x11
    #1067 @ 517,786: 23x25
    #1068 @ 475,474: 25x11
    #1069 @ 632,657: 15x24
    #1070 @ 2,948: 15x12
    #1071 @ 741,198: 27x25
    #1072 @ 467,62: 18x27
    #1073 @ 561,501: 17x13
    #1074 @ 271,513: 21x26
    #1075 @ 656,333: 15x14
    #1076 @ 27,325: 12x18
    #1077 @ 183,396: 25x22
    #1078 @ 656,825: 21x28
    #1079 @ 285,558: 23x20
    #1080 @ 287,95: 22x24
    #1081 @ 31,470: 4x5
    #1082 @ 880,633: 19x19
    #1083 @ 44,154: 21x26
    #1084 @ 956,490: 15x23
    #1085 @ 901,674: 23x10
    #1086 @ 932,299: 12x14
    #1087 @ 313,726: 16x24
    #1088 @ 474,394: 15x11
    #1089 @ 764,122: 16x17
    #1090 @ 568,298: 10x20
    #1091 @ 720,277: 28x27
    #1092 @ 128,885: 23x16
    #1093 @ 906,111: 25x23
    #1094 @ 477,639: 22x24
    #1095 @ 34,36: 21x15
    #1096 @ 510,274: 20x21
    #1097 @ 800,960: 23x29
    #1098 @ 861,163: 16x15
    #1099 @ 868,647: 26x20
    #1100 @ 355,404: 29x11
    #1101 @ 947,226: 17x11
    #1102 @ 816,580: 13x19
    #1103 @ 615,572: 16x14
    #1104 @ 914,612: 16x26
    #1105 @ 897,944: 23x12
    #1106 @ 287,920: 22x15
    #1107 @ 726,816: 27x28
    #1108 @ 248,139: 18x21
    #1109 @ 425,56: 13x16
    #1110 @ 635,305: 10x13
    #1111 @ 260,347: 22x10
    #1112 @ 263,596: 18x15
    #1113 @ 69,470: 29x13
    #1114 @ 949,783: 17x20
    #1115 @ 10,58: 25x23
    #1116 @ 669,941: 22x25
    #1117 @ 798,218: 27x24
    #1118 @ 893,561: 14x26
    #1119 @ 117,42: 11x18
    #1120 @ 433,100: 29x24
    #1121 @ 969,210: 3x13
    #1122 @ 497,708: 17x25
    #1123 @ 598,118: 20x15
    #1124 @ 892,327: 13x25
    #1125 @ 943,639: 25x12
    #1126 @ 443,401: 17x10
    #1127 @ 103,207: 17x11
    #1128 @ 877,789: 22x12
    #1129 @ 440,142: 11x23
    #1130 @ 571,880: 29x29
    #1131 @ 618,802: 25x13
    #1132 @ 432,355: 27x12
    #1133 @ 743,427: 21x15
    #1134 @ 140,121: 25x14
    #1135 @ 156,33: 22x18
    #1136 @ 659,464: 20x20
    #1137 @ 301,457: 23x13
    #1138 @ 69,746: 22x26
    #1139 @ 285,16: 10x21
    #1140 @ 567,478: 16x26
    #1141 @ 875,820: 11x23
    #1142 @ 156,213: 21x23
    #1143 @ 92,52: 21x24
    #1144 @ 629,745: 18x10
    #1145 @ 347,689: 13x23
    #1146 @ 925,875: 15x14
    #1147 @ 449,426: 11x22
    #1148 @ 274,883: 25x23
    #1149 @ 612,917: 23x29
    #1150 @ 664,676: 19x20
    #1151 @ 855,164: 14x13
    #1152 @ 225,898: 29x13
    #1153 @ 365,475: 11x19
    #1154 @ 784,722: 19x22
    #1155 @ 160,755: 15x12
    #1156 @ 33,956: 18x26
    #1157 @ 294,844: 14x27
    #1158 @ 779,723: 27x14
    #1159 @ 226,893: 21x17
    #1160 @ 519,646: 23x21
    #1161 @ 392,655: 26x11
    #1162 @ 754,77: 14x28
    #1163 @ 246,860: 20x13
    #1164 @ 187,350: 26x16
    #1165 @ 328,706: 17x11
    #1166 @ 840,941: 19x11
    #1167 @ 222,670: 27x18
    #1168 @ 723,98: 28x26
    #1169 @ 450,59: 15x12
    #1170 @ 531,151: 29x21
    #1171 @ 730,727: 16x17
    #1172 @ 626,751: 17x15
    #1173 @ 177,446: 18x25
    #1174 @ 469,760: 28x29
    #1175 @ 565,195: 19x16
    #1176 @ 196,414: 24x21
    #1177 @ 283,0: 17x10
    #1178 @ 207,528: 16x23
    #1179 @ 300,196: 24x27
    #1180 @ 223,901: 29x27
    #1181 @ 749,881: 27x26
    #1182 @ 584,24: 20x24
    #1183 @ 265,556: 13x26
    #1184 @ 31,337: 25x14
    #1185 @ 271,396: 27x12
    #1186 @ 701,184: 28x20
    #1187 @ 799,589: 20x14
    #1188 @ 453,864: 29x26
    #1189 @ 927,972: 14x25
    #1190 @ 103,61: 16x10
    #1191 @ 103,909: 13x7
    #1192 @ 600,40: 17x17
    #1193 @ 264,371: 24x15
    #1194 @ 317,730: 12x28
    #1195 @ 477,788: 17x24
    #1196 @ 547,262: 18x19
    #1197 @ 186,5: 13x23
    #1198 @ 218,934: 29x29
    #1199 @ 101,77: 10x11
    #1200 @ 202,692: 18x29
    #1201 @ 67,618: 21x24
    #1202 @ 421,407: 20x13
    #1203 @ 755,501: 20x14
    #1204 @ 784,621: 25x12
    #1205 @ 246,709: 20x15
    #1206 @ 433,42: 22x27
    #1207 @ 571,940: 20x29
    #1208 @ 420,262: 20x14
    #1209 @ 433,623: 17x18
    #1210 @ 708,207: 24x26
    #1211 @ 702,34: 15x11
    #1212 @ 495,413: 14x18
    #1213 @ 939,785: 15x11
    #1214 @ 919,301: 24x26
    #1215 @ 302,478: 20x26
    #1216 @ 175,913: 12x14
    #1217 @ 96,329: 15x19
    #1218 @ 309,253: 16x19
    #1219 @ 186,160: 21x28
    #1220 @ 276,658: 17x10
    #1221 @ 428,137: 7x12
    #1222 @ 881,457: 27x26
    #1223 @ 174,32: 25x17
    #1224 @ 469,460: 20x26
    #1225 @ 725,930: 28x23
    #1226 @ 3,498: 12x29
    #1227 @ 470,141: 27x25
    #1228 @ 205,505: 20x26
    #1229 @ 500,355: 25x22
    #1230 @ 68,932: 18x29
    #1231 @ 32,42: 23x25
    #1232 @ 723,66: 29x12
    #1233 @ 329,336: 29x26
    #1234 @ 184,834: 21x16
    #1235 @ 475,141: 29x13
    #1236 @ 911,829: 18x17
    #1237 @ 94,944: 23x26
    #1238 @ 840,515: 14x27
    #1239 @ 631,747: 11x4
    #1240 @ 566,679: 23x29
    #1241 @ 591,751: 18x10
    #1242 @ 746,650: 10x13
    #1243 @ 357,729: 16x14
    #1244 @ 329,224: 19x13
    #1245 @ 406,187: 22x14
    #1246 @ 747,193: 9x5
    #1247 @ 256,506: 27x22
    #1248 @ 250,706: 25x12
    #1249 @ 333,166: 19x10
    #1250 @ 283,633: 25x29
    #1251 @ 587,809: 18x25
    #1252 @ 109,360: 15x18
    #1253 @ 631,135: 17x11
    #1254 @ 68,476: 17x16
    #1255 @ 964,631: 26x24
    #1256 @ 880,40: 18x14
    #1257 @ 166,818: 21x17
    #1258 @ 611,872: 19x19
    #1259 @ 303,177: 29x11
    #1260 @ 189,848: 24x19
    #1261 @ 5,578: 10x18
    #1262 @ 146,116: 25x14
    #1263 @ 586,337: 19x29
    #1264 @ 151,630: 27x23
    #1265 @ 527,295: 24x24
    #1266 @ 928,230: 23x10
    #1267 @ 155,535: 26x11
    #1268 @ 536,880: 25x27
    #1269 @ 145,262: 10x23
    #1270 @ 191,364: 21x29
    #1271 @ 108,65: 21x14
    #1272 @ 843,176: 19x18
    #1273 @ 32,266: 23x19
    #1274 @ 837,699: 22x10
    #1275 @ 519,497: 22x16
    #1276 @ 408,620: 10x24
    #1277 @ 524,637: 12x15
    #1278 @ 211,715: 16x18
    #1279 @ 305,268: 16x12
    #1280 @ 788,758: 18x26
    #1281 @ 397,747: 24x25
    #1282 @ 353,188: 12x11
    #1283 @ 738,673: 25x26
    #1284 @ 284,363: 10x13
    #1285 @ 296,220: 28x10
    #1286 @ 86,523: 23x18
    #1287 @ 325,29: 18x10
    #1288 @ 629,450: 22x19
    #1289 @ 176,856: 10x14
    #1290 @ 190,413: 23x11
    #1291 @ 323,304: 27x10
    #1292 @ 969,612: 27x26
    #1293 @ 177,391: 22x25
    #1294 @ 862,423: 24x24
    #1295 @ 19,171: 23x28
    #1296 @ 769,349: 23x13
    #1297 @ 589,24: 18x27
    #1298 @ 388,209: 21x16
    #1299 @ 88,619: 13x17
    #1300 @ 723,738: 27x23
    #1301 @ 748,606: 15x21
    #1302 @ 404,2: 13x16
    #1303 @ 946,393: 10x23
    #1304 @ 290,979: 29x19
    #1305 @ 880,782: 21x21
    #1306 @ 5,273: 15x13
    #1307 @ 394,263: 22x25
    #1308 @ 135,223: 25x11
    #1309 @ 54,28: 11x24
    #1310 @ 78,614: 12x26
    #1311 @ 829,744: 26x13
    #1312 @ 656,145: 17x13
    #1313 @ 62,149: 10x23
    #1314 @ 757,532: 20x13
    #1315 @ 600,863: 11x10
    #1316 @ 862,331: 20x28
    #1317 @ 125,351: 29x12
    #1318 @ 439,626: 24x23
    #1319 @ 781,630: 26x16
    #1320 @ 195,485: 26x12
    #1321 @ 319,136: 26x23
    #1322 @ 298,478: 21x10
    #1323 @ 315,934: 10x20
    #1324 @ 138,478: 28x10
    #1325 @ 736,943: 22x15
    #1326 @ 49,695: 11x16
    #1327 @ 545,271: 22x11
    #1328 @ 491,543: 28x16
    #1329 @ 569,973: 28x22
    #1330 @ 147,192: 19x28
    #1331 @ 715,317: 26x25
    #1332 @ 145,449: 19x24
    #1333 @ 916,176: 24x29
    #1334 @ 390,654: 12x24
    #1335 @ 865,571: 25x29
    #1336 @ 412,362: 20x19
    #1337 @ 570,792: 29x11
    #1338 @ 139,467: 29x13
    #1339 @ 748,113: 28x15
    #1340 @ 591,828: 27x16
    #1341 @ 694,479: 21x26
    #1342 @ 118,362: 13x18
    #1343 @ 740,434: 15x24
    #1344 @ 686,60: 5x7
    #1345 @ 567,627: 19x15
    #1346 @ 28,280: 18x10
    #1347 @ 665,675: 29x12
    #1348 @ 103,512: 16x14
    #1349 @ 394,856: 23x27
    #1350 @ 860,365: 22x23
    #1351 @ 335,31: 3x5
    #1352 @ 773,755: 10x27
    #1353 @ 920,969: 16x22
    #1354 @ 79,854: 10x28
    #1355 @ 935,219: 26x28
    #1356 @ 562,441: 12x22
    #1357 @ 254,517: 14x23
    #1358 @ 466,521: 17x17
    #1359 @ 926,210: 11x12
    #1360 @ 208,456: 28x10
    #1361 @ 346,125: 24x28
    #1362 @ 593,968: 10x20
    #1363 @ 952,482: 10x14
    #1364 @ 706,971: 24x14
    #1365 @ 37,695: 14x14
    #1366 @ 741,831: 25x27
    #1367 @ 508,73: 25x12
    #1368 @ 212,385: 22x29
    #1369 @ 61,754: 14x28
    #1370 @ 782,52: 29x21
    #1371 @ 622,190: 16x12
    #1372 @ 209,614: 21x21
    #1373 @ 369,713: 20x29
    """

    input
    |> part2()
    |> IO.inspect(label: "Part 2 Results")
  end
end
