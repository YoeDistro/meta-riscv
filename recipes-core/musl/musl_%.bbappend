FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append:riscv32 = "\
    file://0001-riscv32-Target-and-subtarget-detection.patch \
    file://0002-riscv32-add-arch-headers.patch \
    file://0003-riscv32-Add-fenv-and-math.patch \
    file://0004-riscv32-Add-dlsym.patch \
    file://0005-riscv32-Add-jmp_buf-and-sigreturn.patch \
    file://0006-riscv32-Add-thread-support.patch \
    file://0007-Change-definitions-of-F_GETLK-F_SETLK-F_SETLKW.patch \
    file://0008-Add-bits-reg.h-for-riscv32.patch \
    file://0009-riscv32-fix-inconsistent-ucontext_t-struct-tag.patch \
    file://0010-riscv32-Wire-new-syscalls.patch \
"
# RISCV-32 is supported via meta-riscv until musl port lands upstream
COMPATIBLE_HOST:riscv32 = ".*-musl.*"
