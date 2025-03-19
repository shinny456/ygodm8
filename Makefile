PREFIX := arm-none-eabi-
OBJCOPY := $(PREFIX)objcopy
AS := $(PREFIX)as
LD := $(PREFIX)ld


ifeq ($(OS),Windows_NT)
EXE := .exe
else
EXE :=
endif

BUILD_NAME := ygodm8

CC1      := tools/agbcc/bin/agbcc$(EXE)
CC1_OLD  := tools/agbcc/bin/old_agbcc$(EXE)

CPPFLAGS := -I tools/agbcc/include -I tools/agbcc -iquote include -Wno-trigraphs -nostdinc
CFLAGS   := -mthumb-interwork -Wimplicit -Werror -O2 -fhex-asm -fshort-enums -fprologue-bugfix
ASFLAGS  := -mcpu=arm7tdmi


C_SUBDIR = src
ASM_SUBDIR = asm
DATA_ASM_SUBDIR = data
BUILD_DIR = build

C_BUILDDIR = $(BUILD_DIR)/$(C_SUBDIR)
ASM_BUILDDIR = $(BUILD_DIR)/$(ASM_SUBDIR)
DATA_ASM_BUILDDIR = $(BUILD_DIR)/$(DATA_ASM_SUBDIR)


#### Files/Directories ####

ROM          := $(BUILD_NAME).gba
ELF          := $(ROM:.gba=.elf)
MAP          := $(ROM:.gba=.map)
LDSCRIPT     := ldscript.txt
SYM_FILES    := sym_iwram.txt sym_ewram.txt

C_SRCS := $(wildcard $(C_SUBDIR)/*.c $(C_SUBDIR)/*/*.c $(C_SUBDIR)/*/*/*.c)
C_OBJS := $(patsubst $(C_SUBDIR)/%.c,$(C_BUILDDIR)/%.o,$(C_SRCS))

ASM_SRCS := $(wildcard $(ASM_SUBDIR)/*.s)
ASM_OBJS := $(patsubst $(ASM_SUBDIR)/%.s,$(ASM_BUILDDIR)/%.o,$(ASM_SRCS))

LIB := -L ../tools/agbcc/lib -lc -lgcc

DATA_ASM_SRCS := $(wildcard $(DATA_ASM_SUBDIR)/*.s)
DATA_ASM_OBJS := $(patsubst $(DATA_ASM_SUBDIR)/%.s,$(DATA_ASM_BUILDDIR)/%.o,$(DATA_ASM_SRCS))

ALL_OBJS := $(C_OBJS) $(ASM_OBJS) $(DATA_ASM_OBJS)

SUBDIRS := $(sort $(dir $(ALL_OBJS)))


#### Recipes ####
$(shell mkdir -p $(SUBDIRS))

$(ROM): $(ELF)
	$(OBJCOPY) -O binary --pad-to 0x9000000 $< $@

$(ELF): $(ALL_OBJS) $(LDSCRIPT)
	cd $(BUILD_DIR) && $(LD) -T ../$(LDSCRIPT) -Map ../$(MAP) -o ../$@ $(LIB)

$(C_BUILDDIR)/%.o: $(C_SUBDIR)/%.c
	$(CPP) $(CPPFLAGS) $< -o $(C_BUILDDIR)/$*.i
	$(CC1) $(CFLAGS) $(C_BUILDDIR)/$*.i -o $(C_BUILDDIR)/$*.s
	@echo ".text\\n\\t.align\\t2, 0\\n" >> $(C_BUILDDIR)/$*.s
	$(AS) $(ASFLAGS) $(C_BUILDDIR)/$*.s -o $@

$(ASM_BUILDDIR)/%.o: $(ASM_SUBDIR)/%.s
	$(AS) $(ASFLAGS) $< -o $@

$(DATA_ASM_BUILDDIR)/%.o: $(DATA_ASM_SUBDIR)/%.s
	$(AS) $(ASFLAGS) $< -o $@

clean:
	rm -f $(ROM) $(ELF) $(MAP)
	rm -r $(BUILD_DIR)/

compare: $(ROM)
	sha1sum -c $(BUILD_NAME).sha1