#if defined(D_NEXYS_A7)
   #include <bsp_printf.h>
   #include <bsp_mem_map.h>
   #include <bsp_version.h>
#else
   PRE_COMPILED_MSG("no platform was defined")
#endif
#include <psp_api.h>

extern void Test_Assembly(void);

int main(void)
{
   int cyc_beg, cyc_end;
   int instr_beg, instr_end;

   /* Initialize Uart */
   uartInit();

   pspEnableAllPerformanceMonitor(1);

   pspPerformanceCounterSet(D_PSP_COUNTER0, E_CYCLES_CLOCKS_ACTIVE);
   pspPerformanceCounterSet(D_PSP_COUNTER1, E_INSTR_COMMITTED_ALL);

   cyc_beg = pspPerformanceCounterGet(D_PSP_COUNTER0);
   instr_beg = pspPerformanceCounterGet(D_PSP_COUNTER1);

   Test_Assembly();

   cyc_end = pspPerformanceCounterGet(D_PSP_COUNTER0);
   instr_end = pspPerformanceCounterGet(D_PSP_COUNTER1);

   printfNexys("Cycles = %d", cyc_end-cyc_beg);
   printfNexys("Instructions = %d", instr_end-instr_beg);

   while(1);
}