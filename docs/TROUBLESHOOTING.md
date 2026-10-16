# Если что-то не работает

## Логи

На SD-карте: `switch/SpaceRangersHD/user/stderr.log` и `stdout.log`. Первая строка `stderr.log`
(`launch: ... applet_type=... heap=... MiB`) показывает, в каком режиме запущена игра и сколько у неё памяти.
При отчёте об ошибке приложи оба файла и укажи, как запущен homebrew (title takeover или Album).
Для разбора крэша нужны `Rangers.elf` и `Rangers.map` от той же сборки.

## Вылет при запуске

- **Applet mode.** Запуск hbmenu/Sphaira через Album даёт мало памяти. Запускай в application mode
  (title takeover, удерживая R). В логе будет `applet mode: memory may be insufficient`.
- **Нет папки `game/`.** `Cannot open sdmc:/switch/SpaceRangersHD/game` в `stderr.log` значит,
  что игра не скопирована, см. [INSTALL.md](INSTALL.md).
- **Известная проблема:** при запуске из Sphaira были вылеты, пока причина не установлена (нужны логи).

## Управление

- B ничего не делает на главной карте и в аркадном бою (меню на Plus), в окнах нажимает кнопку закрытия.
- Строки `pad nav ...` и `pad back ...` в `stderr.log` показывают, что игра выбрала при нажатии D-pad/B.

## Ограничения

- AVI-ролики отключены на Switch.
- Бои роботов не подключены: планетарные бои засчитываются как победа.
