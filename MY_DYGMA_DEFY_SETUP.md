# My Dygma Defy Engram Setup

## 🎯 **Current Configuration Overview**

This document describes my actual Dygma Defy configuration for learning and using the Engram layout with Keybr.

### **Hardware Setup**
- **Keyboard**: Dygma Defy Split Keyboard
- **Layout**: Engram-EN (programmed via Bazecor v2.2.1)
- **Tenting**: 10° (confirmed comfortable for extended sessions)
- **Configuration Tool**: Bazecor
- **Learning Platform**: Local Keybr instance (Docker)

### **Software Configuration**
- **Keybr Layout**: Engram (original) - matches my physical layout
- **Emulation Mode**: Hardware emulates layout (OFF software emulation)
- **Browser**: Firefox (Safari has compatibility issues)
- **Container**: Docker with persistent storage
- **Account**: Using test account system (http://localhost:3000/login/xyz)

## 🔧 **Current Layer Configuration**

### **Complete Layer Setup (10 Layers Configured)**
- **Layer 0**: "Engram-EN" (Primary layout)
- **Layer 1**: "Engram-EN [SHIFT]" (Shifted symbols)
- **Layer 2**: "NumPad" (Numeric keypad functionality)
- **Layer 3**: "Function + Media" (F-keys and media controls)
- **Layer 4**: "Qwerty" (Fallback QWERTY layout)
- **Layers 5-9**: Available for future customization

### **Base Layer (Layer 0) - Engram-EN Layout** (Your Actual Bazecor Configuration)
```
LEFT HALF:                                                                        RIGHT HALF:
┌─────┬─────┬─────┬─────┬─────┬─────┬                   ┬─────┬─────┬─────┬─────┬─────┬─────┐
│ NaN │  1  │  2  │  3  │  4  │  5  │                   │  6  │  7  │  8  │  9  │  0  │ NaN │
├─────┼─────┼─────┼─────┼─────┼─────┼─────┤       ├─────┼─────┼─────┼─────┼─────┼─────┼─────┤
│ Mac │  B  │  Y  │  O  │  U  │  '  │  [  │       │  ]  │  "  │  D  │  N  │  G  │  V  │  Q  │
├─────┼─────┼─────┼─────┼─────┼─────┼─────┤       ├─────┼─────┼─────┼─────┼─────┼─────┼─────┤
│ Sup │  H  │  I  │  A  │  E  │  ,  │  /  │       │  #  │  .  │  T  │  R  │  S  │  C  │  Z  │
├─────┼─────┼─────┼─────┼─────┼─────┼─────┤       ├─────┼─────┼─────┼─────┼─────┼─────┼─────┤
│ Sup │  K  │  J  │  X  │  W  │  -  │ Led │       │  @  │  ?  │  M  │  L  │  F  │  P  │ NaN │
└─────┴─────┴─────┴─────┴─────┴─────┴─────┘       └─────┴─────┴─────┴─────┴─────┴─────┴─────┘

THUMB CLUSTERS:
Left:                                       Right:
┌─────────┬─────────┬─────────┐           ┌─────────┬─────────┬─────────┐
│ MACRO   │  LEFT   │  BACK   │           │ SPACE   │ TRANS   │ RIGHT   │
│ Right   │  CTRL   │ SPACE   │           │         │         │   ⌘     │
├─────────┼─────────┼─────────┤           ├─────────┼─────────┼─────────┤
│ SUPER   │   TAB   │   DEL   │           │ SHIFT   │ LAYER   │ BLUET.  │
│ Win C   │         │         │           │         │ LOCK    │ PAIR.   │
├─────────┼─────────┼─────────┤           ├─────────┼─────────┼─────────┤
│ SUPER   │ BATT.   │ LAYER   │           │ LAYER   │ LAYER   │         │
│ Mac C   │ LEVEL   │ LOCK    │           │ LOCK    │ LOCK    │         │
└─────────┴─────────┴─────────┘           └─────────┴─────────┴─────────┘
```

**Key Features of Your Engram-EN Layout:**
- **Home Row**: H-I-A-E (left) and T-R-S-C (right) - optimized for English
- **Common Letters**: E, A, I, R, L, N positioned for easy access (your first session letters!)
- **Punctuation**: Comma and period on home row for natural flow
- **Thumb Clusters**: Advanced functionality with macros, layer switching, and system controls
- **Special Features**: Battery level indicator, Bluetooth pairing, cross-platform clipboard macros

### **Thumb Cluster Configuration**
**Left Thumb Cluster:**
- Layer switching and modifier access
- Ctrl/Alt combinations for shortcuts
- Space bar (primary)

**Right Thumb Cluster:**
- Enter/Return functionality
- Cmd/Shift modifiers
- Layer access for symbols and functions

### **Advanced Features Configured**
- **Superkeys**: 4 configured (Win/Mac clipboard, Escape Artist, Lock Screen)
- **Macros**: 4 configured (Demo, Multi-monitor management)
- **Cross-platform**: Windows and macOS compatibility built-in

## 📊 **Learning Progress & Statistics**

### **Current Typing Stats** (Updated: December 2024)
- **WPM on QWERTY**: [Baseline on staggered keyboards]
- **WPM on Engram**: [Early learning phase]
- **Accuracy**: 97% and 95% (first 15-minute session!)
- **Learning Duration**: Just started (December 2024)
- **Session Length**: 15 minutes (optimal for first 2 weeks)

### **Keybr Progress** (First Session Results)
- **Letters Unlocked**: E, A, I, R, L, N (6 letters)
- **Lessons Completed**: 8 lessons at 97% accuracy, 9 lessons at 95% accuracy
- **Total Practice Time**: 15 minutes
- **Learning Platform**: Local Keybr with Engram layout
- **Progress Tracking**: SQLite database (survives container restarts)

### **Key Observations**
- **Comfort Level**: Excellent on Defy with 10° tent
- **Flow State**: Achievable, occasional wrong signals from brain
- **Ortholinear Adaptation**: Much better than QWERTY on ortholinear
- **Cognitive Load**: Manageable with Engram vs overwhelming with QWERTY on splits

## 🎯 **Learning Strategy & Goals**

### **Dual-Layout Strategy** 
**Philosophy**: Prevent cognitive confusion by using different layouts on different keyboard types
- **QWERTY**: Staggered keyboards (laptops, work keyboards like Logitech MX Master)
- **Engram-EN**: Split ortholinear keyboards (Dygma Defy)
- **Reasoning**: Ortholinear layout was challenging with QWERTY muscle memory, so learning a modern layout designed for splits makes more sense

### **Current Focus Areas**
- [x] **Layout Familiarity**: Getting comfortable with Engram letter positions
- [ ] **Finger Independence**: Building proper finger assignments for Engram
- [ ] **Common Bigrams**: Learning Engram-optimized letter combinations
- [ ] **Speed Building**: Target 40+ WPM by month 2
- [ ] **Accuracy Improvement**: Maintain 95%+ accuracy while building speed

### **Practice Routine**
- **Daily Practice Time**: 15 minutes (first 2 weeks), then gradually increase
- **Best Practice Times**: Evenings (separate from work QWERTY usage)
- **Practice Methods**: Keybr with local Docker instance
- **Session Structure**: Focus on accuracy over speed initially

## 🔧 **Optimization Opportunities**

### **Immediate Optimizations** (Based on Configuration Analysis)

#### **Layer Utilization**
- **Layer 2 (NumPad)**: Perfect for coding and data entry once comfortable with Engram
- **Layer 3 (Function + Media)**: Great for productivity without leaving home row
- **Consider Layer 5**: Add a dedicated "Symbols" layer for programming constructs
- **Thumb cluster mastery**: Focus early on modifier combinations for efficiency

#### **Ergonomic Optimization**
- **10° tent**: ✅ Already optimal (confirmed comfortable for extended sessions)
- **Split distance**: Current setup working well for your hand size
- **Wrist positioning**: Monitor for any strain during longer sessions as speed increases

#### **Learning Acceleration**
- **LED feedback**: Configure different colors for different layers to aid visual learning
- **Macro opportunities**: Add macros for common programming patterns or frequently typed text
- **Keybr settings**: Current Engram layout selection is perfect - matches hardware exactly

## 🛠 **Technical Setup Details**

### **Bazecor Configuration** (v2.2.1)
- **Neuron ID**: [Private - not shared in repository]
- **Custom Macros**: 4 configured
  - "Demo" (types "Hey, Dygmate")
  - Multi-monitor management (HDMI/mDP switching)
  - Cross-platform clipboard operations
- **LED Configuration**: 
  - Full brightness (255) when wired
  - Battery-saving brightness (51/25) when wireless
  - Custom 16-color palette
  - 5-minute idle timeout, 1-hour true sleep
- **Key Remapping**: Standard Engram-EN layout, no modifications

### **Advanced Features**
- **Superkeys**: 4 configured (clipboard, escape, lock screen functions)
- **Wireless Settings**: Performance over battery life (no power saving mode)
- **Cross-platform**: Windows and macOS compatibility built-in
- **Multi-monitor**: Dedicated macros for screen management

### **Keybr Integration**
- **Layout Selection**: Engram (original) - matches hardware perfectly
- **Emulation**: Hardware emulates layout (software emulation OFF)
- **Visual Feedback**: Virtual keyboard shows Engram layout correctly
- **Progress Tracking**: SQLite database persistence (survives restarts)
- **Account System**: Using test account (http://localhost:3000/login/xyz)

### **Workflow Integration**
- **Development Strategy**: QWERTY for work (staggered), Engram-EN for personal (Defy)
- **Evening Practice**: Separate from work typing to avoid confusion
- **Cognitive Separation**: Different keyboard types = different layouts (smart approach)
- **Transition Management**: Gradual shift as Engram proficiency increases

## 📈 **Progress Tracking**

### **Weekly Goals** (15-minute daily sessions)
- [ ] **Week 1**: Master E, A, I, R, L, N letters (✅ Started strong!)
- [ ] **Week 2**: Add 2-3 new letters, maintain 95%+ accuracy
- [ ] **Week 3**: Focus on common bigrams and letter combinations
- [ ] **Week 4**: Build speed while maintaining accuracy (target 15+ WPM)

### **Monthly Milestones**
- [ ] **Month 1**: All letters unlocked, 20+ WPM, 95%+ accuracy
- [ ] **Month 2**: 40+ WPM, comfortable with common words
- [ ] **Month 3**: 60+ WPM, ready for real-world typing tasks

### **Session Tracking**
- **Session 1** (Dec 2024): 15 min, 8 lessons @ 97%, 9 lessons @ 95% ✅
- **Letters Mastered**: E, A, I, R, L, N
- **Next Session Goal**: Maintain accuracy, add new letters

## 💡 **Tips & Discoveries**

### **What's Working Well**
- **10° tent angle**: Provides excellent wrist comfort for extended sessions
- **Dual-layout strategy**: Prevents cognitive confusion between keyboard types
- **15-minute sessions**: Perfect length for focused learning without fatigue
- **Ortholinear + Engram combo**: Much more natural than forcing QWERTY on splits
- **Evening practice**: Separates learning from work typing habits
- **Local Keybr**: No distractions, perfect layout matching, persistent progress

### **Key Insights**
- **Flow state achievable**: Even as beginner, can get "in the zone"
- **Brain adaptation**: Occasional wrong signals are normal and decreasing
- **Comfort advantage**: Defy feels much better than staggered for Engram
- **Configuration benefits**: Multi-monitor macros and cross-platform setup pay off

### **Challenges & Solutions**
- **Initial cognitive load**: Solved by choosing Engram over QWERTY on ortholinear
- **Muscle memory conflicts**: Avoided by using different layouts on different keyboard types
- **Progress tracking**: Solved with persistent account system in local Keybr
- **Layout matching**: Solved with dual Engram layouts in Keybr (original + EN)

### **Recommendations for Other Learners**
- **Start with 15-minute sessions** - longer sessions lead to fatigue and bad habits
- **Use different layouts on different keyboard types** - prevents confusion
- **Set up local Keybr** - better control, no ads, perfect layout matching
- **Configure your Defy properly** - invest time in Bazecor setup for long-term comfort
- **Focus on accuracy first** - speed will come naturally with proper technique
- **Use the tent** - 10° makes a huge difference for comfort

---

## 🔄 **Next Steps**

### **Immediate Actions**
1. **Continue 15-minute daily sessions** - maintain consistency over intensity
2. **Focus on accuracy** - let speed develop naturally
3. **Track progress** - update this document after each session
4. **Monitor comfort** - adjust setup if any strain develops

### **Short-term Optimizations**
1. **Explore Layer 2 (NumPad)** - once comfortable with base letters
2. **Configure LED feedback** - different colors for different layers
3. **Add programming macros** - common constructs for coding efficiency
4. **Fine-tune thumb cluster usage** - optimize modifier combinations

### **Long-term Goals**
1. **Achieve 60+ WPM** - target for real-world productivity
2. **Transition work typing** - gradually shift from QWERTY to Engram
3. **Optimize for coding** - customize layers for development workflow
4. **Share learnings** - help other Defy + Engram learners

## 📊 **Configuration Summary**

**Hardware**: Dygma Defy (10° tent) + Bazecor v2.2.1  
**Layout**: Engram-EN (Layer 0) with QWERTY fallback (Layer 4)  
**Learning**: Local Keybr + 15-minute sessions + accuracy focus  
**Strategy**: Dual-layout approach (QWERTY on staggered, Engram on ortholinear)  
**Progress**: Excellent start (97%/95% accuracy, 6 letters mastered)  

**Last Updated**: December 16, 2024  
**Next Review**: After Week 1 completion