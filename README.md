Я поставил вчера smart 3d 2014 r1 с какого-то иранского сайта и вот что пока я знаю:

Печать сообщения Personal ISOGEN handshake failed происходит в случае вызова sub_10008731 с аргументом 13h.
Вызывается она с таким аргументом в 2 местах:
В sub_1000ECB7 и sub_100106FA.
Оба раза перед вызовом sub_10008731 вызывается AliasTm и sub_10019820.
AliasTm просто оставляет в регистре  eax текущее время в секундах, которое передается в sub_10019820.
 
Результат sub_10019820 сравнивается с константой 8000h и если он равен ей, то происходит вызов sub_10008731.
Еще интересно, что 8000h это -32768 в дополнительном коде, то есть нижняя граница int16.
В sub_10019820, судя по всему, происходит итерация по строке и возвращается либо индекс либо 8000h.

Я думаю, можно просто попробовать изменить 8000h на что-то другое, чтобы срабатывал оператор перехода до того, как будет вызов sub_10008731.
Но я дальше не стал смотреть, как там оно в последующем используется и к чему пропуск этой проверки может привести.

Еще проверил возвращаемое значение AliasTm, там действительно лежит unix time.