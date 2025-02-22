/* 
* SPDX-License-Identifier: Apache-2.0
* Copyright 2020-2021 Western Digital Corporation or its affiliates.
* 
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
* 
* http:*www.apache.org/licenses/LICENSE-2.0
* 
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/**
* @file   psp_interrupts.c
* @author Nati Rapaport
* @date   04.05.2020
* @brief  The file supplies registration API for interrupt and exception service routines in Hifive1 core.
* 
*/

/**
* include files
*/
#include "psp_api.h"

/**
* definitions
*/

/**
* macros
*/

/**
* types
*/

/**
* local prototypes
*/
/* Default ISRs */
D_PSP_TEXT_SECTION void pspMachineInterruptsExcpHandlingSelector(void);
D_PSP_TEXT_SECTION void pspMachineInterruptsDefaultHandler(void);

/**
* external prototypes
*/

/**
* global variables
*/
/* The stack used by interrupt service routines */
#if (0 == D_ISR_STACK_SIZE)
  #error "D_ISR_STACK_SIZE is not defined"
#else
  static /*D_PSP_DATA_SECTION*/ D_PSP_ALIGNED(16) pspStack_t udISRStack[ D_ISR_STACK_SIZE ] ;
  const pspStack_t xISRStackTop = ( pspStack_t ) &( udISRStack[ ( D_ISR_STACK_SIZE ) - 1 ] );
#endif

/* Exception handlers */
D_PSP_DATA_SECTION fptrPspInterruptHandler_t  g_fptrExceptions_ints[D_PSP_NUM_EXC_CAUSE] = {
                       pspMachineInterruptsDefaultHandler,
                       pspMachineInterruptsDefaultHandler,
                       pspMachineInterruptsDefaultHandler,
                       pspMachineInterruptsDefaultHandler,
                       pspMachineInterruptsDefaultHandler,
                       pspMachineInterruptsDefaultHandler,
                       pspMachineInterruptsDefaultHandler,
                       pspMachineInterruptsDefaultHandler,
                       pspMachineInterruptsDefaultHandler,
                       pspMachineInterruptsDefaultHandler,
                       pspMachineInterruptsDefaultHandler,
                       pspMachineInterruptsDefaultHandler,
                       pspMachineInterruptsDefaultHandler,
                       pspMachineInterruptsDefaultHandler,
                       pspMachineInterruptsDefaultHandler,
                       pspMachineInterruptsDefaultHandler };

/* Exceptions handler pointer */
D_PSP_DATA_SECTION fptrPspInterruptHandler_t g_fptrIntExceptionIntHandler   = pspMachineInterruptsExcpHandlingSelector;

/* Interrupts handler pointers */
D_PSP_DATA_SECTION fptrPspInterruptHandler_t g_fptrIntUSoftIntHandler       = pspMachineInterruptsDefaultHandler;
D_PSP_DATA_SECTION fptrPspInterruptHandler_t g_fptrIntSSoftIntHandler       = pspMachineInterruptsDefaultHandler;
D_PSP_DATA_SECTION fptrPspInterruptHandler_t g_fptrIntRsrvdSoftIntHandler   = pspMachineInterruptsDefaultHandler;
D_PSP_DATA_SECTION fptrPspInterruptHandler_t g_fptrIntMSoftIntHandler       = pspMachineInterruptsDefaultHandler;
D_PSP_DATA_SECTION fptrPspInterruptHandler_t g_fptrIntUTimerIntHandler      = pspMachineInterruptsDefaultHandler;
D_PSP_DATA_SECTION fptrPspInterruptHandler_t g_fptrIntSTimerIntHandler      = pspMachineInterruptsDefaultHandler;
D_PSP_DATA_SECTION fptrPspInterruptHandler_t g_fptrIntRsrvdTimerIntHandler  = pspMachineInterruptsDefaultHandler;
D_PSP_DATA_SECTION fptrPspInterruptHandler_t g_fptrIntMTimerIntHandler      = pspMachineInterruptsDefaultHandler;
D_PSP_DATA_SECTION fptrPspInterruptHandler_t g_fptrIntUExternIntHandler     = pspMachineInterruptsDefaultHandler;
D_PSP_DATA_SECTION fptrPspInterruptHandler_t g_fptrIntSExternIntHandler     = pspMachineInterruptsDefaultHandler;
D_PSP_DATA_SECTION fptrPspInterruptHandler_t g_fptrIntRsrvdExternIntHandler = pspMachineInterruptsDefaultHandler;
D_PSP_DATA_SECTION fptrPspInterruptHandler_t g_fptrIntMExternIntHandler     = pspMachineInterruptsDefaultHandler;

/**
* APIs
*/

/**
* @brief - The function installs an interrupt service routine per risc-v cause
*
* @input parameter -  fptrInterruptHandler     - function pointer to the interrupt service routine
* @input parameter -  uiInterruptCause         - uiInterruptCause  – interrupt source
*
* @return u32_t                               - previously registered ISR. If NULL then registeration had an error
*/
D_PSP_TEXT_SECTION fptrPspInterruptHandler_t pspMachineInterruptsRegisterIsr(fptrPspInterruptHandler_t fptrInterruptHandler, u32_t uiInterruptCause)
{
   fptrPspInterruptHandler_t fptrFunc;
   u32_t uiInterruptsState;

   M_PSP_ASSERT(fptrInterruptHandler != NULL && uiInterruptCause < E_LAST_CAUSE);

   /* Disable interrupts */
   pspMachineInterruptsDisable(&uiInterruptsState);

   switch (uiInterruptCause)
   {
      case E_USER_SOFTWARE_CAUSE:
        fptrFunc = g_fptrIntUSoftIntHandler;
        g_fptrIntUSoftIntHandler = fptrInterruptHandler;
        break;
      case E_SUPERVISOR_SOFTWARE_CAUSE:
        fptrFunc = g_fptrIntSSoftIntHandler;
        g_fptrIntSSoftIntHandler = fptrInterruptHandler;
        break;
      case E_RESERVED_SOFTWARE_CAUSE:
        fptrFunc = g_fptrIntRsrvdSoftIntHandler;
        g_fptrIntRsrvdSoftIntHandler = fptrInterruptHandler;
        break;
      case E_MACHINE_SOFTWARE_CAUSE:
        fptrFunc = g_fptrIntMSoftIntHandler;
        g_fptrIntMSoftIntHandler = fptrInterruptHandler;
        break;
      case E_USER_TIMER_CAUSE:
        fptrFunc = g_fptrIntUTimerIntHandler;
        g_fptrIntUTimerIntHandler = fptrInterruptHandler;
        break;
      case E_SUPERVISOR_TIMER_CAUSE:
        fptrFunc = g_fptrIntSTimerIntHandler;
        g_fptrIntSTimerIntHandler = fptrInterruptHandler;
        break;
      case E_RESERVED_TIMER_CAUSE:
        fptrFunc = g_fptrIntRsrvdTimerIntHandler;
        g_fptrIntRsrvdTimerIntHandler = fptrInterruptHandler;
        break;
      case E_MACHINE_TIMER_CAUSE:
        fptrFunc = g_fptrIntMTimerIntHandler;
        g_fptrIntMTimerIntHandler = fptrInterruptHandler;
        break;
      case E_USER_EXTERNAL_CAUSE:
        fptrFunc = g_fptrIntUExternIntHandler;
        g_fptrIntUExternIntHandler = fptrInterruptHandler;
        break;
      case E_SUPERVISOR_EXTERNAL_CAUSE:
        fptrFunc = g_fptrIntSExternIntHandler;
        g_fptrIntSExternIntHandler = fptrInterruptHandler;
        break;
      case E_RESERVED_EXTERNAL_CAUSE:
        fptrFunc = g_fptrIntRsrvdExternIntHandler;
        g_fptrIntRsrvdExternIntHandler = fptrInterruptHandler;
        break;
      case E_MACHINE_EXTERNAL_CAUSE:
        fptrFunc = g_fptrIntMExternIntHandler;
        g_fptrIntMExternIntHandler = fptrInterruptHandler;
        break;
      default:
        fptrFunc = NULL;
        break;
   }

   /* Restore interrupts */
   pspMachineInterruptsRestore(uiInterruptsState);

   return fptrFunc;
}

/**
* @brief - The function installs an exception handler per exception cause
*
* @input parameter -  fptrInterruptHandler     - function pointer to the exception handler
* @input parameter -  uiExceptionCause         - exception cause
*
* @return u32_t                               - previously registered ISR
*/
D_PSP_TEXT_SECTION fptrPspInterruptHandler_t pspMachineInterruptsRegisterExcpHandler(fptrPspInterruptHandler_t fptrInterruptHandler, u32_t uiExceptionCause)
{
   fptrPspInterruptHandler_t fptrFunc;

   M_PSP_ASSERT(fptrInterruptHandler != NULL && uiExceptionCause < E_EXC_LAST_CAUSE);

   fptrFunc = g_fptrExceptions_ints[uiExceptionCause];

   g_fptrExceptions_ints[uiExceptionCause] = fptrInterruptHandler;

   return fptrFunc;
}

/**
* @brief - Exception handling selection function
*
* @param none
*
* @return none
*/
D_PSP_TEXT_SECTION void pspMachineInterruptsExcpHandlingSelector(void)
{
   /* get the exception cause */
   u32_t uiCause = M_PSP_READ_CSR(D_PSP_MCAUSE_NUM);

   /* is it a valid cause */
   M_PSP_ASSERT(uiCause < D_PSP_NUM_EXC_CAUSE);

   /* call the specific exception handler */
   g_fptrExceptions_ints[uiCause]();
}


/**
* @brief - default empty interrupt handler
*
* @param none
*
* @return none
*/
D_PSP_TEXT_SECTION void pspMachineInterruptsDefaultHandler(void)
{
    volatile u32_t uiLocalMepc, uiLocalMcause, uiLocalmtval;

    uiLocalMepc   = M_PSP_READ_CSR(D_PSP_MEPC_NUM);
    uiLocalMcause = M_PSP_READ_CSR(D_PSP_MCAUSE_NUM);
    uiLocalmtval =  M_PSP_READ_CSR(D_PSP_MTVAL_NUM); /* Relevant for exceptions */

    if (0 == uiLocalMepc || 0 == uiLocalMcause || 0 == uiLocalmtval)
    {}

    M_PSP_EBREAK();
}

/**
* @brief - Set vector-table address at mtvec CSR
*
* @param - pointer to the vector table
*
* @return - none
*/
D_PSP_TEXT_SECTION void pspMachineInterruptsSetVecTableAddress(void* pVectTable)
{
  u32_t uiInterruptsState;

  /* Assert if vector-table address is NULL */
  M_PSP_ASSERT(NULL != pVectTable)

  /* Disable interrupts */
  pspMachineInterruptsDisable(&uiInterruptsState);

  M_PSP_WRITE_CSR(D_PSP_MTVEC_NUM, pVectTable);

  /* Restore interrupts */
  pspMachineInterruptsRestore(uiInterruptsState);
}

/**
* @brief - Disable interrupts and return the current interrupt state in each one of the privileged levels
*
* @output parameter - *pOutPrevIntState - Current (== before the 'disable') interrupts state in each one of the privileged levels (read from mstatus CSR)
*
* @return - none
*/
D_PSP_TEXT_SECTION void pspMachineInterruptsDisable(u32_t *pOutPrevIntState)
{
  /* Disable interrupts (all privilege levels). Status of mstatus CSR before the 'disable' is saved in pOutPrevIntState */
  M_PSP_READ_AND_CLEAR_CSR(*pOutPrevIntState, D_PSP_MSTATUS_NUM, (D_PSP_MSTATUS_UIE_MASK | D_PSP_MSTATUS_SIE_MASK | D_PSP_MSTATUS_MIE_MASK) );
}

/**
* @brief - Restore the interrupts state in each one of the privileged levels.
*          i.e. if they were already disabled - they will stay disabled. If they were enabled - they will become enabled now.
*
* @input parameter - uiPrevIntState - Previous interrupts state in each one of the privileged levels
*
* @return - none
*/
D_PSP_TEXT_SECTION void pspMachineInterruptsRestore(u32_t uiPrevIntState)
{
  M_PSP_SET_CSR(D_PSP_MSTATUS_NUM, uiPrevIntState);
}

/**
* @brief - Enable interrupts (in all privilege levels) regardless their previous state
*
* @param - none
*
* @return - none
*/
D_PSP_TEXT_SECTION void pspMachineInterruptsEnable(void)
{
  M_PSP_SET_CSR(D_PSP_MSTATUS_NUM, (D_PSP_MSTATUS_UIE_MASK | D_PSP_MSTATUS_SIE_MASK | D_PSP_MSTATUS_MIE_MASK));
}

/**
* @brief - Disable specified interrupt when called in MACHINE-LEVEL
*                                                     *************
* IMPORTANT NOTE: When you call this function, you can use either one of the following defined values:
  *************** - D_PSP_INTERRUPTS_MACHINE_SW
                  - D_PSP_INTERRUPTS_MACHINE_TIMER
                  - D_PSP_INTERRUPTS_MACHINE_EXT
                  - D_PSP_INTERRUPTS_SUPERVISOR_SW
                  - D_PSP_INTERRUPTS_SUPERVISOR_TIMER
                  - D_PSP_INTERRUPTS_SUPERVISOR_EXT
                  - D_PSP_INTERRUPTS_USER_SW
                  - D_PSP_INTERRUPTS_USER_TIMER
                  - D_PSP_INTERRUPTS_USER_EXT
*
* @input parameter - Interrupt number to disable
*
* @return - none
*/
D_PSP_TEXT_SECTION void pspMachineInterruptsDisableIntNumber(u32_t uiInterruptNumber)
{
  M_PSP_CLEAR_CSR(D_PSP_MIE_NUM, M_PSP_BIT_MASK(uiInterruptNumber));
}



/**
* @brief - Enable specified interrupt when called in MACHINE-LEVEL
*                                                    *************
* IMPORTANT NOTE: When you call this function, you can use either one of the following defined values:
  *************** - D_PSP_INTERRUPTS_MACHINE_SW
                  - D_PSP_INTERRUPTS_MACHINE_TIMER
                  - D_PSP_INTERRUPTS_MACHINE_EXT
                  - D_PSP_INTERRUPTS_SUPERVISOR_SW
                  - D_PSP_INTERRUPTS_SUPERVISOR_TIMER
                  - D_PSP_INTERRUPTS_SUPERVISOR_EXT
                  - D_PSP_INTERRUPTS_USER_SW
                  - D_PSP_INTERRUPTS_USER_TIMER
                  - D_PSP_INTERRUPTS_USER_EXT
*
* @input parameter - Interrupt number to enable
*
* @return - none
*/
D_PSP_TEXT_SECTION void pspMachineInterruptsEnableIntNumber(u32_t uiInterruptNumber)
{
  M_PSP_SET_CSR(D_PSP_MIE_NUM, M_PSP_BIT_MASK(uiInterruptNumber));
}

/**
* @brief - Disable specified interrupt when called in USER-LEVEL
*                                                     **********
* IMPORTANT NOTE: When you call this function, use ONLY one of the following defined values:
  **************  - D_PSP_INTERRUPTS_USER_SW
                  - D_PSP_INTERRUPTS_USER_TIMER
                  - D_PSP_INTERRUPTS_USER_EXT
*
* @input parameter - Interrupt number to disable
*
* @return - none
*/
D_PSP_TEXT_SECTION void pspUserInterruptsDisableIntNumber(u32_t uiInterruptNumber)
{
  M_PSP_ASSERT((D_PSP_INTERRUPTS_USER_SW    == uiInterruptNumber)||
               (D_PSP_INTERRUPTS_USER_TIMER == uiInterruptNumber)||
               (D_PSP_INTERRUPTS_USER_EXT   == uiInterruptNumber));

  M_PSP_CLEAR_CSR(D_PSP_UIE_NUM, M_PSP_BIT_MASK(uiInterruptNumber));
}



/**
* @brief - Enable specified interrupt when called in USER-LEVEL
*                                                    **********
* IMPORTANT NOTE: When you call this function, use ONLY one of the following defined values:
  **************  - D_PSP_INTERRUPTS_USER_SW
                  - D_PSP_INTERRUPTS_USER_TIMER
                  - D_PSP_INTERRUPTS_USER_EXT
*
* @input parameter - Interrupt number to enable
*
* @return - none
*/
D_PSP_TEXT_SECTION void pspUserInterruptsEnableIntNumber(u32_t uiInterruptNumber)
{
  M_PSP_ASSERT((D_PSP_INTERRUPTS_USER_SW    == uiInterruptNumber)||
               (D_PSP_INTERRUPTS_USER_TIMER == uiInterruptNumber)||
               (D_PSP_INTERRUPTS_USER_EXT   == uiInterruptNumber));

  M_PSP_SET_CSR(D_PSP_UIE_NUM, M_PSP_BIT_MASK(uiInterruptNumber));
}
