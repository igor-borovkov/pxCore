# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := cctest
DEFS_Debug := \
	'-D_DARWIN_USE_64_BIT_INODE=1' \
	'-DGTEST_DONT_DEFINE_ASSERT_EQ=1' \
	'-DGTEST_DONT_DEFINE_ASSERT_GE=1' \
	'-DGTEST_DONT_DEFINE_ASSERT_GT=1' \
	'-DGTEST_DONT_DEFINE_ASSERT_LE=1' \
	'-DGTEST_DONT_DEFINE_ASSERT_LT=1' \
	'-DGTEST_DONT_DEFINE_ASSERT_NE=1' \
	'-DNODE_WANT_INTERNALS=1' \
	'-DHTTP_PARSER_STRICT=0' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DDEBUG' \
	'-D_DEBUG'

# Flags passed to all source files.
CFLAGS_Debug := \
	-O0 \
	-gdwarf-2 \
	-mmacosx-version-min=10.7 \
	-arch x86_64 \
	-Wall \
	-Wendif-labels \
	-W \
	-Wno-unused-parameter

# Flags passed to only C files.
CFLAGS_C_Debug := \
	-fno-strict-aliasing

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-std=gnu++0x \
	-fno-rtti \
	-fno-exceptions \
	-fno-threadsafe-statics \
	-fno-strict-aliasing

# Flags passed to only ObjC files.
CFLAGS_OBJC_Debug :=

# Flags passed to only ObjC++ files.
CFLAGS_OBJCC_Debug :=

INCS_Debug := \
	-I$(srcdir)/src \
	-I$(srcdir)/deps/v8/include \
	-I$(srcdir)/deps/gtest/include \
	-I$(srcdir)/deps/openssl/openssl/include \
	-I$(srcdir)/deps/http_parser \
	-I$(srcdir)/deps/uv/include

DEFS_Release := \
	'-D_DARWIN_USE_64_BIT_INODE=1' \
	'-DGTEST_DONT_DEFINE_ASSERT_EQ=1' \
	'-DGTEST_DONT_DEFINE_ASSERT_GE=1' \
	'-DGTEST_DONT_DEFINE_ASSERT_GT=1' \
	'-DGTEST_DONT_DEFINE_ASSERT_LE=1' \
	'-DGTEST_DONT_DEFINE_ASSERT_LT=1' \
	'-DGTEST_DONT_DEFINE_ASSERT_NE=1' \
	'-DNODE_WANT_INTERNALS=1' \
	'-DHTTP_PARSER_STRICT=0' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64'

# Flags passed to all source files.
CFLAGS_Release := \
	-Os \
	-gdwarf-2 \
	-mmacosx-version-min=10.7 \
	-arch x86_64 \
	-Wall \
	-Wendif-labels \
	-W \
	-Wno-unused-parameter

# Flags passed to only C files.
CFLAGS_C_Release := \
	-fno-strict-aliasing

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-std=gnu++0x \
	-fno-rtti \
	-fno-exceptions \
	-fno-threadsafe-statics \
	-fno-strict-aliasing

# Flags passed to only ObjC files.
CFLAGS_OBJC_Release :=

# Flags passed to only ObjC++ files.
CFLAGS_OBJCC_Release :=

INCS_Release := \
	-I$(srcdir)/src \
	-I$(srcdir)/deps/v8/include \
	-I$(srcdir)/deps/gtest/include \
	-I$(srcdir)/deps/openssl/openssl/include \
	-I$(srcdir)/deps/http_parser \
	-I$(srcdir)/deps/uv/include

OBJS := \
	$(obj).target/$(TARGET)/test/cctest/util.o \
	$(obj).target/$(TARGET)/src/inspector_socket.o \
	$(obj).target/$(TARGET)/test/cctest/test_inspector_socket.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(builddir)/libgtest.a $(builddir)/libopenssl.a $(builddir)/libhttp_parser.a $(builddir)/libuv.a $(builddir)/libv8_libplatform.a $(obj).target/deps/v8/tools/gyp/v8.stamp $(builddir)/libv8_libbase.a $(obj).target/deps/v8/tools/gyp/v8_maybe_snapshot.stamp $(builddir)/libv8_base.a $(builddir)/libicui18n.a $(builddir)/libicuucx.a $(obj).target/tools/icu/icu_implementation.stamp $(obj).target/tools/icu/icu_uconfig.stamp $(obj).target/tools/icu/icu_uconfig_target.stamp $(obj).target/tools/icu/icuuc.stamp $(builddir)/libicudata.a $(builddir)/libicustubdata.a $(builddir)/libv8_snapshot.a $(obj).target/deps/v8/tools/gyp/js2c.stamp

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))
$(OBJS): GYP_OBJCFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE)) $(CFLAGS_OBJC_$(BUILDTYPE))
$(OBJS): GYP_OBJCXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE)) $(CFLAGS_OBJCC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-Wl,-no_pie \
	-Wl,-search_paths_first \
	-mmacosx-version-min=10.7 \
	-arch x86_64 \
	-L$(builddir)

LIBTOOLFLAGS_Debug := \
	-Wl,-no_pie \
	-Wl,-search_paths_first

LDFLAGS_Release := \
	-Wl,-no_pie \
	-Wl,-search_paths_first \
	-mmacosx-version-min=10.7 \
	-arch x86_64 \
	-L$(builddir)

LIBTOOLFLAGS_Release := \
	-Wl,-no_pie \
	-Wl,-search_paths_first

LIBS := \
	-lm

$(builddir)/cctest: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(builddir)/cctest: LIBS := $(LIBS)
$(builddir)/cctest: GYP_LIBTOOLFLAGS := $(LIBTOOLFLAGS_$(BUILDTYPE))
$(builddir)/cctest: LD_INPUTS := $(OBJS) $(builddir)/libgtest.a $(builddir)/libopenssl.a $(builddir)/libhttp_parser.a $(builddir)/libuv.a $(builddir)/libv8_libplatform.a $(builddir)/libv8_libbase.a $(builddir)/libv8_base.a $(builddir)/libicui18n.a $(builddir)/libicuucx.a $(builddir)/libicudata.a $(builddir)/libicustubdata.a $(builddir)/libv8_snapshot.a
$(builddir)/cctest: TOOLSET := $(TOOLSET)
$(builddir)/cctest: $(OBJS) $(builddir)/libgtest.a $(builddir)/libopenssl.a $(builddir)/libhttp_parser.a $(builddir)/libuv.a $(builddir)/libv8_libplatform.a $(builddir)/libv8_libbase.a $(builddir)/libv8_base.a $(builddir)/libicui18n.a $(builddir)/libicuucx.a $(builddir)/libicudata.a $(builddir)/libicustubdata.a $(builddir)/libv8_snapshot.a FORCE_DO_CMD
	$(call do_cmd,link)

all_deps += $(builddir)/cctest
# Add target alias
.PHONY: cctest
cctest: $(builddir)/cctest

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/cctest
