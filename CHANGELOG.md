# Changelog

## Unreleased Changes
- **Planned:**
  - New weather system
  - Improved vehicle physics

## [v1.1.0-beta] - 04.07.2024
- **Enhancements:**
  - **Code optimizations:**
    - Separated `settime`, ambient sounds, and NPCs/vehicles from main code to improve code clarity and maintainability.
  - **Error handling:**
    - Enhanced error handling throughout the codebase.
  - **Structure and security:**
    - Optimized structure and increased overall code security.

### Detailed Changes:
- **Time management:**
  - The `SetTime` function validates and logs invalid time values.
  - The `/settime` command sends error and success messages to the executing player for feedback.
  - The `TriggerClientEvent` broadcasts the message to all clients to synchronize time across connected clients.

## [v1.0-beta] - 04.07.2024
- **Initial Release**

### New Features:
- **Weather management:**
  - Supports various weather types: EXTRASUNNY, CLEAR, NEUTRAL, SMOG, FOGGY, OVERCAST, CLOUDS, CLEARING, RAIN, THUNDER, SNOW, BLIZZARD, SNOWLIGHT, XMAS, HALLOWEEN
  - Admin commands to change weather with `/setweather <weatherType>`
  - Custom weather effects (e.g., sandstorm)
- **Player attributes:**
  - Weather-dependent player attributes (e.g., slower movement in snow, reduced grip in rain)
- **Vehicle settings:**
  - Weather-dependent vehicle traction (reduced traction in rain and snow)
- **Admin interface:**
  - Admin menu for weather management with `/openAdminWeatherMenu`
- **Time management:**
  - Commands to adjust server time with `/settime <hour> <minute>`
  - The `SetTime` function validates and logs invalid time values.
  - The `/settime` command sends error and success messages to the executing player for feedback.
  - The `TriggerClientEvent` broadcasts the message to all clients to synchronize time across connected clients.
- **Sound and NPC management:**
  - Removal of ambient sounds
  - Disabling NPC and vehicle spawns

### Improvements:
- **Performance optimizations:**
  - Modularized code structure for better maintainability and extensibility
  - Background threads to reduce NPC and vehicle spawns and control audio scene volumes

### Bug Fixes:
- **General bug fixes:**
  - Enhanced error handling in various functions (e.g., weather change, notifications)

### Code Comments:
- Code is well-commented to improve readability and maintainability.
