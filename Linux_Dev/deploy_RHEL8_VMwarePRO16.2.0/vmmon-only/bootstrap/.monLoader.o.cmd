cmd_/home/Raphael.maria/Downloads/vmware-host-modules-workstation-16.1.2/vmmon-only/bootstrap/monLoader.o := gcc -Wp,-MD,/home/Raphael.maria/Downloads/vmware-host-modules-workstation-16.1.2/vmmon-only/bootstrap/.monLoader.o.d  -nostdinc -isystem /usr/lib/gcc/x86_64-redhat-linux/8/include -I./arch/x86/include -I./arch/x86/include/generated   -I./include/drm-backport -I./include -I./arch/x86/include/uapi -I./arch/x86/include/generated/uapi -I./include/uapi -I./include/generated/uapi -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D__KERNEL__ -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -Werror-implicit-function-declaration -Wno-format-security -std=gnu89 -fno-PIE -DCC_HAVE_ASM_GOTO -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -m64 -falign-jumps=1 -falign-loops=1 -mno-80387 -mno-fp-ret-in-387 -mpreferred-stack-boundary=3 -mskip-rax-setup -mtune=generic -mno-red-zone -mcmodel=kernel -funit-at-a-time -DCONFIG_AS_CFI=1 -DCONFIG_AS_CFI_SIGNAL_FRAME=1 -DCONFIG_AS_CFI_SECTIONS=1 -DCONFIG_AS_FXSAVEQ=1 -DCONFIG_AS_SSSE3=1 -DCONFIG_AS_CRC32=1 -DCONFIG_AS_AVX=1 -DCONFIG_AS_AVX2=1 -DCONFIG_AS_AVX512=1 -DCONFIG_AS_SHA1_NI=1 -DCONFIG_AS_SHA256_NI=1 -DCONFIG_TPAUSE=1 -pipe -Wno-sign-compare -fno-asynchronous-unwind-tables -mindirect-branch=thunk-extern -mindirect-branch-register -fno-jump-tables -fno-delete-null-pointer-checks -Wno-frame-address -Wno-format-truncation -Wno-format-overflow -Wno-int-in-bool-context -O2 --param=allow-store-data-races=0 -Wframe-larger-than=2048 -fstack-protector-strong -Wno-unused-but-set-variable -Wno-unused-const-variable -g -gdwarf-4 -pg -mrecord-mcount -mfentry -DCC_USING_FENTRY -fno-inline-functions-called-once -Wdeclaration-after-statement -Wno-pointer-sign -Wno-stringop-truncation -fno-strict-overflow -fno-merge-all-constants -fmerge-constants -fno-stack-check -fconserve-stack -Werror=implicit-int -Werror=strict-prototypes -Werror=date-time -Werror=incompatible-pointer-types -Werror=designated-init -fmacro-prefix-map=./= -Wno-packed-not-aligned -Wall -Wstrict-prototypes -DVMW_USING_KBUILD -DVMMON -DVMCORE -I/home/Raphael.maria/Downloads/vmware-host-modules-workstation-16.1.2/vmmon-only/./include -I/home/Raphael.maria/Downloads/vmware-host-modules-workstation-16.1.2/vmmon-only/./common -I/home/Raphael.maria/Downloads/vmware-host-modules-workstation-16.1.2/vmmon-only/./linux -I/home/Raphael.maria/Downloads/vmware-host-modules-workstation-16.1.2/vmmon-only/./vmcore  -DMODULE  -DKBUILD_BASENAME='"monLoader"' -DKBUILD_MODNAME='"vmmon"' -c -o /home/Raphael.maria/Downloads/vmware-host-modules-workstation-16.1.2/vmmon-only/bootstrap/.tmp_monLoader.o /home/Raphael.maria/Downloads/vmware-host-modules-workstation-16.1.2/vmmon-only/bootstrap/monLoader.c

source_/home/Raphael.maria/Downloads/vmware-host-modules-workstation-16.1.2/vmmon-only/bootstrap/monLoader.o := /home/Raphael.maria/Downloads/vmware-host-modules-workstation-16.1.2/vmmon-only/bootstrap/monLoader.c

deps_/home/Raphael.maria/Downloads/vmware-host-modules-workstation-16.1.2/vmmon-only/bootstrap/monLoader.o := \
  include/linux/kconfig.h \
    $(wildcard include/config/cpu/big/endian.h) \
    $(wildcard include/config/booger.h) \
    $(wildcard include/config/foo.h) \
  include/linux/compiler_types.h \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
  include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
    $(wildcard include/config/gcov/kernel.h) \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  /home/Raphael.maria/Downloads/vmware-host-modules-workstation-16.1.2/vmmon-only/./common/hostKernel.h \
  /home/Raphael.maria/Downloads/vmware-host-modules-workstation-16.1.2/vmmon-only/./include/driver-config.h \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/modversions.h) \
  /home/Raphael.maria/Downloads/vmware-host-modules-workstation-16.1.2/vmmon-only/./include/includeCheck.h \
  /home/Raphael.maria/Downloads/vmware-host-modules-workstation-16.1.2/vmmon-only/./include/compat_version.h \
  include/generated/uapi/linux/version.h \
  /home/Raphael.maria/Downloads/vmware-host-modules-workstation-16.1.2/vmmon-only/./include/compat_autoconf.h \
  include/linux/types.h \
    $(wildcard include/config/have/uid16.h) \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  include/uapi/linux/types.h \
  arch/x86/include/uapi/asm/types.h \
  include/uapi/asm-generic/types.h \
  include/asm-generic/int-ll64.h \
  include/uapi/asm-generic/int-ll64.h \
  arch/x86/include/uapi/asm/bitsperlong.h \
  include/asm-generic/bitsperlong.h \
  include/uapi/asm-generic/bitsperlong.h \
  include/uapi/linux/posix_types.h \
  include/linux/stddef.h \
  include/uapi/linux/stddef.h \
  include/linux/compiler_types.h \
  arch/x86/include/asm/posix_types.h \
    $(wildcard include/config/x86/32.h) \
  arch/x86/include/uapi/asm/posix_types_64.h \
  include/uapi/asm-generic/posix_types.h \
  arch/x86/include/asm/page.h \
    $(wildcard include/config/x86/64.h) \
  arch/x86/include/asm/page_types.h \
    $(wildcard include/config/physical/start.h) \
    $(wildcard include/config/physical/align.h) \
    $(wildcard include/config/dynamic/physical/mask.h) \
  include/linux/const.h \
  include/vdso/const.h \
  include/uapi/linux/const.h \
  include/linux/mem_encrypt.h \
    $(wildcard include/config/arch/has/mem/encrypt.h) \
    $(wildcard include/config/amd/mem/encrypt.h) \
  arch/x86/include/asm/mem_encrypt.h \
  include/linux/init.h \
    $(wildcard include/config/have/arch/prel32/relocations.h) \
    $(wildcard include/config/strict/kernel/rwx.h) \
    $(wildcard include/config/strict/module/rwx.h) \
  include/linux/compiler.h \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/stack/validation.h) \
    $(wildcard include/config/debug/entry.h) \
    $(wildcard include/config/kasan.h) \
    $(wildcard include/config/kcsan.h) \
  include/linux/kcsan-checks.h \
    $(wildcard include/config/kcsan/ignore/atomics.h) \
  arch/x86/include/asm/barrier.h \
  arch/x86/include/asm/alternative.h \
  include/linux/stringify.h \
  arch/x86/include/asm/asm.h \
  arch/x86/include/asm/nops.h \
    $(wildcard include/config/mk7.h) \
    $(wildcard include/config/x86/p6/nop.h) \
  include/asm-generic/barrier.h \
  include/linux/kasan-checks.h \
  include/linux/kcsan.h \
  arch/x86/include/uapi/asm/bootparam.h \
  include/linux/screen_info.h \
  include/uapi/linux/screen_info.h \
  include/linux/apm_bios.h \
  include/uapi/linux/apm_bios.h \
  include/uapi/linux/ioctl.h \
  arch/x86/include/uapi/asm/ioctl.h \
  include/asm-generic/ioctl.h \
  include/uapi/asm-generic/ioctl.h \
  include/linux/edd.h \
  include/uapi/linux/edd.h \
  arch/x86/include/asm/ist.h \
  arch/x86/include/uapi/asm/ist.h \
  include/video/edid.h \
    $(wildcard include/config/x86.h) \
  include/uapi/video/edid.h \
  arch/x86/include/asm/page_64_types.h \
    $(wildcard include/config/dynamic/memory/layout.h) \
    $(wildcard include/config/x86/5level.h) \
    $(wildcard include/config/randomize/base.h) \
  arch/x86/include/asm/kaslr.h \
    $(wildcard include/config/randomize/memory.h) \
  arch/x86/include/asm/page_64.h \
    $(wildcard include/config/debug/virtual.h) \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/x86/vsyscall/emulation.h) \
  include/linux/range.h \
  include/asm-generic/memory_model.h \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
    $(wildcard include/config/sparsemem.h) \
  include/linux/pfn.h \
  include/asm-generic/getorder.h \
  include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  include/linux/bitops.h \
  include/linux/bits.h \
  include/vdso/bits.h \
  arch/x86/include/asm/bitops.h \
    $(wildcard include/config/x86/cmov.h) \
  arch/x86/include/asm/rmwcc.h \
  include/asm-generic/bitops/find.h \
    $(wildcard include/config/generic/find/first/bit.h) \
  include/asm-generic/bitops/sched.h \
  arch/x86/include/asm/arch_hweight.h \
  arch/x86/include/asm/cpufeatures.h \
  arch/x86/include/asm/required-features.h \
    $(wildcard include/config/x86/minimum/cpu/family.h) \
    $(wildcard include/config/math/emulation.h) \
    $(wildcard include/config/x86/pae.h) \
    $(wildcard include/config/x86/cmpxchg64.h) \
    $(wildcard include/config/x86/use/3dnow.h) \
    $(wildcard include/config/matom.h) \
    $(wildcard include/config/paravirt.h) \
  arch/x86/include/asm/disabled-features.h \
    $(wildcard include/config/x86/intel/mpx.h) \
    $(wildcard include/config/x86/intel/umip.h) \
    $(wildcard include/config/x86/intel/memory/protection/keys.h) \
    $(wildcard include/config/page/table/isolation.h) \
    $(wildcard include/config/iommu/support.h) \
    $(wildcard include/config/x86/sgx.h) \
  include/asm-generic/bitops/const_hweight.h \
  include/asm-generic/bitops/le.h \
  arch/x86/include/uapi/asm/byteorder.h \
  include/linux/byteorder/little_endian.h \
  include/uapi/linux/byteorder/little_endian.h \
  include/linux/swab.h \
  include/uapi/linux/swab.h \
  arch/x86/include/uapi/asm/swab.h \
  include/linux/byteorder/generic.h \
  include/asm-generic/bitops/ext2-atomic-setbit.h \
  include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
    $(wildcard include/config/fortify/source.h) \
  /usr/lib/gcc/x86_64-redhat-linux/8/include/stdarg.h \
  include/uapi/linux/string.h \
  arch/x86/include/asm/string.h \
  arch/x86/include/asm/string_64.h \
    $(wildcard include/config/x86/mce.h) \
    $(wildcard include/config/arch/has/uaccess/flushcache.h) \
  include/linux/jump_label.h \
    $(wildcard include/config/jump/label.h) \
    $(wildcard include/config/have/arch/jump/label/relative.h) \
  arch/x86/include/asm/jump_label.h \
  include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/preempt/rt.h) \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/arch/has/refcount.h) \
    $(wildcard include/config/lock/down/kernel.h) \
    $(wildcard include/config/lock/down/mandatory.h) \
    $(wildcard include/config/panic/timeout.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
  include/linux/limits.h \
  include/uapi/linux/limits.h \
  include/vdso/limits.h \
  include/linux/linkage.h \
  include/linux/export.h \
    $(wildcard include/config/module/rel/crcs.h) \
    $(wildcard include/config/trim/unused/ksyms.h) \
    $(wildcard include/config/unused/symbols.h) \
  arch/x86/include/asm/linkage.h \
    $(wildcard include/config/x86/alignment/16.h) \
  include/linux/typecheck.h \
  include/linux/printk.h \
    $(wildcard include/config/message/loglevel/default.h) \
    $(wildcard include/config/console/loglevel/default.h) \
    $(wildcard include/config/console/loglevel/quiet.h) \
    $(wildcard include/config/early/printk.h) \
    $(wildcard include/config/printk/nmi.h) \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/dynamic/debug.h) \
  include/linux/kern_levels.h \
  include/linux/cache.h \
    $(wildcard include/config/arch/has/cache/line/size.h) \
  include/uapi/linux/kernel.h \
  include/uapi/linux/sysinfo.h \
  arch/x86/include/asm/cache.h \
    $(wildcard include/config/x86/l1/cache/shift.h) \
    $(wildcard include/config/x86/internode/cache/shift.h) \
    $(wildcard include/config/x86/vsmp.h) \
  include/linux/dynamic_debug.h \
  include/linux/build_bug.h \
  arch/x86/include/asm/div64.h \
  include/asm-generic/div64.h \
  /home/Raphael.maria/Downloads/vmware-host-modules-workstation-16.1.2/vmmon-only/./include/vm_assert.h \
  /home/Raphael.maria/Downloads/vmware-host-modules-workstation-16.1.2/vmmon-only/./include/vm_basic_types.h \
  /home/Raphael.maria/Downloads/vmware-host-modules-workstation-16.1.2/vmmon-only/./include/vm_basic_types.h \
  /home/Raphael.maria/Downloads/vmware-host-modules-workstation-16.1.2/vmmon-only/./include/monLoader.h \
  /home/Raphael.maria/Downloads/vmware-host-modules-workstation-16.1.2/vmmon-only/./include/vm_pagetable.h \
  /home/Raphael.maria/Downloads/vmware-host-modules-workstation-16.1.2/vmmon-only/./include/vm_basic_defs.h \
  /usr/lib/gcc/x86_64-redhat-linux/8/include/stddef.h \
  /home/Raphael.maria/Downloads/vmware-host-modules-workstation-16.1.2/vmmon-only/./include/vcpuid.h \
  /home/Raphael.maria/Downloads/vmware-host-modules-workstation-16.1.2/vmmon-only/./include/x86paging_64.h \
  /home/Raphael.maria/Downloads/vmware-host-modules-workstation-16.1.2/vmmon-only/./include/x86types.h \
  /home/Raphael.maria/Downloads/vmware-host-modules-workstation-16.1.2/vmmon-only/./include/address_defs.h \
  /home/Raphael.maria/Downloads/vmware-host-modules-workstation-16.1.2/vmmon-only/./include/x86segdescrs.h \
  /home/Raphael.maria/Downloads/vmware-host-modules-workstation-16.1.2/vmmon-only/./include/vmware_pack_begin.h \
  /home/Raphael.maria/Downloads/vmware-host-modules-workstation-16.1.2/vmmon-only/./include/vmware_pack_init.h \
  /home/Raphael.maria/Downloads/vmware-host-modules-workstation-16.1.2/vmmon-only/./include/vmware_pack_end.h \
  /home/Raphael.maria/Downloads/vmware-host-modules-workstation-16.1.2/vmmon-only/./include/x86paging_common.h \
  /home/Raphael.maria/Downloads/vmware-host-modules-workstation-16.1.2/vmmon-only/./include/vm_assert.h \
  /home/Raphael.maria/Downloads/vmware-host-modules-workstation-16.1.2/vmmon-only/./include/vcpuid.h \
  /home/Raphael.maria/Downloads/vmware-host-modules-workstation-16.1.2/vmmon-only/./include/vm_pagetable.h \
  /home/Raphael.maria/Downloads/vmware-host-modules-workstation-16.1.2/vmmon-only/./include/address_defs.h \
  /home/Raphael.maria/Downloads/vmware-host-modules-workstation-16.1.2/vmmon-only/./include/monLoaderLog.h \

/home/Raphael.maria/Downloads/vmware-host-modules-workstation-16.1.2/vmmon-only/bootstrap/monLoader.o: $(deps_/home/Raphael.maria/Downloads/vmware-host-modules-workstation-16.1.2/vmmon-only/bootstrap/monLoader.o)

$(deps_/home/Raphael.maria/Downloads/vmware-host-modules-workstation-16.1.2/vmmon-only/bootstrap/monLoader.o):
