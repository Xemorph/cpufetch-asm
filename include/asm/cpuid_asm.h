#ifndef __CPUID_ASM__
#define __CPUID_ASM__

/// We're going for a cross-platform solution and yes,
/// Windows has it's own rules to deal with cpuid ... Thanks Microsoft!
#ifdef _WIN32
#include <limits.h>
#include <intrin.h>
typedef unsigned __int32  uint32_t;
#else
#include <stdint.h>
#endif

/// Within the assembler code I cannot declare / define the function cpuid again,
/// because this is a standard function. For this reason the naming convention gcpuid
/// ------
/// By the way, the Windows header files define within the C code a function with the name cpuid ...
void gcpuid(uint32_t *eax, uint32_t *ebx, uint32_t *ecx, uint32_t *edx);

#endif