#!/bin/bash
cmake -DILI9341=ON\
      -DGPIO_TFT_DATA_CONTROL=12 `# Вывод DATA CONTROL (D/C)`\
#     -DGPIO_TFT_BACKLIGHT=13\ -DBACKLIGHT_CONTROL=ON `# Выключение подсветки по таймеру`\
      -DGPIO_TFT_RESET_PIN=14 `# Вывод RST`\
      -DSPI_BUS_CLOCK_DIVISOR=12 `# Делитель для получения CLK SPI (только чётные)`\
      -DSTATISTICS=0 `# Вывод статистики сверху дисплея (0 - нет, 1 - кратко, 2 - вся статистика)`\
        ..\
        && make -j
