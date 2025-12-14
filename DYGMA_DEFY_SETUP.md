# Dygma Defy + Keybr Local Setup Guide

## Overview
This guide helps you set up a local Keybr instance with the current Engram-EN layout for learning on your Dygma Defy split keyboard.

## What We Found
- ✅ **Engram layout exists** in Keybr but it's an **older version**
- ✅ **Updated layout created** with current Engram-en from https://engram-layouts.xyz/
- ✅ **Docker setup ready** with persistent storage for your progress
- ✅ **Dygma Defy compatible** - split keyboard with Bazecor programming software

## Layout Comparison

### Current Official Engram-en (from engram-layouts.xyz):
```
[{ 1| 2= 3~ 4+ 5< 6> 7^ 8& 9% 0* ]} /\
   bB yY oO uU '( ") dD nN gG vV qQ #$ @`
   hH iI aA eE ,; .: tT rR sS cC zZ 
   kK jJ xX wW -_ ?! mM lL fF pP
```

### Old Keybr Version (what was in the codebase):
```
[{ 1| 2= 3~ 4+ 5< 6> 7^ 8& 9% 0* ]} /\
   bB yY oO uU '( ") lL dD wW vV zZ #$ @`
   cC iI eE aA ,; .: hH tT sS nN qQ
   gG xX jJ kK -_ ?! rR mM fF pP
```

**Key differences**: The current version has better finger balance and optimized bigram frequencies.

## Quick Start

### 1. Build and Run with Docker Compose
```bash
# Build and start the container with persistent storage
docker-compose -f docker-compose.local.yaml up --build -d

# Check if it's running
docker-compose -f docker-compose.local.yaml ps

# View logs
docker-compose -f docker-compose.local.yaml logs -f keybr
```

### 2. Access Your Local Keybr
- Open browser: http://localhost:3000
- Your progress will be saved in `./keybr-data/` directory
- Database: `./keybr-data/database.sqlite`

### 3. Stop the Service
```bash
docker-compose -f docker-compose.local.yaml down
```

## Dygma Defy Integration

### Physical Setup Recommendations
1. **Split positioning**: Position halves shoulder-width apart
2. **Tenting**: Use built-in tenting (or add tenting kit) for wrist comfort
3. **Thumb cluster**: Map frequently used keys to the 8 thumb keys
4. **Palm pads**: Use included palm pads for wrist support

### Bazecor Configuration for Engram
1. **Download Bazecor**: https://github.com/Dygmalab/Bazecor/releases/
2. **Create Engram layer**: Use the layout above to map keys
3. **Thumb cluster suggestions**:
   - Space (most common)
   - Backspace
   - Enter
   - Shift/Layer toggles
   - Common punctuation (. , ? !)

### Recommended Bazecor Layer Setup
- **Layer 0**: Engram-en layout (primary typing)
- **Layer 1**: Numbers and symbols (easily accessible)
- **Layer 2**: Function keys and navigation
- **Layer 3**: Mouse keys and macros

## Updating to Current Engram Layout

The updated layout file has been created but needs to be generated. To use the current Engram layout:

### Option 1: Use Existing Layout (Older Version)
- The current Keybr build includes the older Engram layout
- It's still functional and close to the current version
- Good for immediate use

### Option 2: Generate Updated Layout (Recommended)
```bash
# Generate the updated layout (requires Node.js setup)
cd packages/keybr-generators
npm run generate-layouts

# Rebuild Docker image with updated layout
docker-compose -f docker-compose.local.yaml up --build -d
```

## Persistent Storage Details

Your Docker setup includes:
- **Database**: SQLite stored in `./keybr-data/database.sqlite`
- **User progress**: All typing statistics and progress saved
- **Settings**: Layout preferences and configuration
- **Backup**: Data persists between container restarts

### Data Location
```
./keybr-data/
├── database.sqlite          # Your progress and statistics
└── (other app data files)
```

## Learning Strategy for Dygma Defy

### Phase 1: Basic Layout (Weeks 1-2)
1. **Start with home row**: `hH iI aA eE ,; .: tT rR sS cC zZ`
2. **Use Keybr's progressive learning**: Let it introduce letters gradually
3. **Focus on finger placement**: Use the split keyboard's natural hand positioning

### Phase 2: Full Layout (Weeks 3-4)
1. **Add top row**: `bB yY oO uU '( ") dD nN gG vV qQ`
2. **Add bottom row**: `kK jJ xX wW -_ ?! mM lL fF pP`
3. **Practice bigrams**: Common letter combinations

### Phase 3: Speed Building (Weeks 5+)
1. **Increase target WPM** in Keybr settings
2. **Use thumb cluster** for common keys (space, backspace, enter)
3. **Add layers** in Bazecor for numbers and symbols

## Troubleshooting

### Container Issues
```bash
# Check container status
docker-compose -f docker-compose.local.yaml ps

# View detailed logs
docker-compose -f docker-compose.local.yaml logs keybr

# Restart container
docker-compose -f docker-compose.local.yaml restart keybr

# Rebuild if needed
docker-compose -f docker-compose.local.yaml up --build -d
```

### Data Issues
- **Lost progress**: Check `./keybr-data/database.sqlite` exists
- **Permissions**: Ensure Docker can write to `./keybr-data/`
- **Backup**: Copy `database.sqlite` to backup your progress

### Layout Issues
- **Wrong layout showing**: Verify layout selection in Keybr settings
- **Keys not matching**: Check Bazecor configuration matches Engram layout
- **Missing keys**: Ensure all 62 main keys + 8 thumb keys are mapped

## Next Steps

1. **Start Docker container** and verify it works
2. **Configure Bazecor** with Engram layout on your Dygma Defy
3. **Begin learning** with Keybr's progressive system
4. **Optimize thumb cluster** as you get comfortable
5. **Add layers** for numbers, symbols, and shortcuts

## Resources

- **Engram Layout**: https://engram-layouts.xyz/
- **Dygma Defy**: https://dygma.com/products/dygma-defy
- **Bazecor Software**: https://github.com/Dygmalab/Bazecor/releases/
- **Keybr Documentation**: https://www.keybr.com/help

Your local Keybr instance will track your progress as you learn the Engram layout on your Dygma Defy split keyboard!