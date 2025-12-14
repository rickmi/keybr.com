# Layout & Settings Troubleshooting Guide

## 🔄 **Updated Layout Should Now Be Available**

After rebuilding the container with the updated frontend bundle, the new Engram layout should now be available. 

### **To Verify the Update:**
1. **Hard refresh your browser**: `Ctrl+F5` (Windows/Linux) or `Cmd+Shift+R` (Mac)
2. **Clear browser cache** if needed
3. **Go to Settings → Keyboard → Layout**
4. **Select "Engram"** - it should now show the updated layout

## 💾 **Settings Persistence - How It Works**

### **Automatic Saving**
Keybr automatically saves your settings when you change them:
- **Layout selection** is saved immediately when you select it
- **Settings are stored** in the database (`./keybr-data/database.sqlite`)
- **No manual save needed** - changes persist between sessions

### **To Ensure Settings Are Saved:**

1. **Select your layout**: Settings → Keyboard → Layout → Engram
2. **Wait for the preview to update** (this confirms the setting was applied)
3. **Navigate away and back** to verify it's saved
4. **Your selection persists** across browser sessions and container restarts

### **Settings Storage Location:**
- **Database**: `./keybr-data/database.sqlite` (persistent Docker volume)
- **Browser**: Local storage + database sync
- **Backup**: Automatically backed up with your progress data

## 🎯 **Virtual Keyboard Display Issue**

### **Why Virtual Keyboard Shows QWERTY:**
The virtual keyboard display is controlled by two settings:

1. **Layout Selection**: What layout Keybr uses for lessons
2. **Emulation Setting**: How the virtual keyboard is displayed

### **To Fix Virtual Keyboard Display:**

#### **Option 1: Enable Layout Emulation**
1. Go to **Settings → Keyboard**
2. Check **"Emulate layout"** checkbox
3. The virtual keyboard will now show your selected layout (Engram)

#### **Option 2: Hardware Emulation (Recommended for Dygma Defy)**
1. Go to **Settings → Keyboard**
2. Check **"Keyboard hardware emulates layout"**
3. This tells Keybr that your physical keyboard (Dygma Defy) handles the layout
4. Virtual keyboard can stay as QWERTY for reference

### **Recommended Setup for Dygma Defy:**

```
Settings → Keyboard:
✅ Language: English
✅ Layout: Engram
✅ Emulate layout: UNCHECKED
✅ Keyboard hardware emulates layout: CHECKED
```

**Why this works:**
- Your Dygma Defy (programmed with Bazecor) handles the Engram layout
- Keybr knows you're learning Engram for statistics and lessons
- Virtual keyboard shows QWERTY as reference (since your hardware does the conversion)

## 🔧 **Troubleshooting Steps**

### **If Layout Still Shows Old Version:**
1. **Hard refresh browser**: `Ctrl+F5` or `Cmd+Shift+R`
2. **Clear browser cache**: Settings → Privacy → Clear browsing data
3. **Check container logs**: `./keybr-manage.sh logs`
4. **Restart container**: `./keybr-manage.sh restart`

### **If Settings Don't Persist:**
1. **Check database exists**: `ls -la ./keybr-data/database.sqlite`
2. **Verify container health**: `./keybr-manage.sh status`
3. **Check browser local storage**: F12 → Application → Local Storage
4. **Try incognito mode** to test fresh session

### **If Virtual Keyboard Wrong:**
1. **Check emulation settings** as described above
2. **Verify layout selection** is correct
3. **Consider your hardware setup** (Dygma Defy handles layout conversion)

## ✅ **Expected Behavior**

### **With Dygma Defy + Engram:**
- **Physical typing**: Engram layout (handled by Bazecor)
- **Keybr lessons**: Optimized for Engram learning
- **Virtual keyboard**: Can show QWERTY (reference) or Engram (your choice)
- **Statistics**: Tracked correctly for Engram layout
- **Settings**: Automatically saved and persistent

### **Perfect Setup:**
1. **Dygma Defy**: Programmed with Engram in Bazecor
2. **Keybr Layout**: Set to "Engram"
3. **Hardware Emulation**: Enabled (tells Keybr your keyboard handles layout)
4. **Learning**: Progressive lessons optimized for Engram

This setup gives you the best of both worlds - hardware-level layout conversion with software-level learning optimization! 🚀