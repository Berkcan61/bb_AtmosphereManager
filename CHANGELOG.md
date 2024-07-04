# Changelog

## [v1.0-beta] - 01.07.2024
- **Initial release**

### New Features:
- **Weather Management:**
  - Supports various weather types: EXTRASUNNY, CLEAR, NEUTRAL, SMOG, FOGGY, OVERCAST, CLOUDS, CLEARING, RAIN, THUNDER, SNOW, BLIZZARD, SNOWLIGHT, XMAS, HALLOWEEN
  - Admin commands to change weather using `/setweather <weatherType>`
  - Custom weather effects (e.g., sandstorm)
- **Player Attributes:**
  - Weather-dependent player attributes (e.g., slower movement in snow, reduced grip in rain)
- **Vehicle Settings:**
  - Weather-dependent vehicle traction (reduced traction in rain and snow)
- **Admin Interface:**
  - Admin menu for weather management with `/openAdminWeatherMenu`
- **Time Management:**
  - Commands to change server time with `/settime <hour> <minute>`
- **Sound and NPC Management:**
  - Removal of ambient sounds
  - Disabling NPC and vehicle spawns

### Improvements:
- **Performance Optimizations:**
  - Modularized code structure for better maintainability and scalability
  - Running threads to reduce NPC and vehicle spawns and control audio scene volumes

---