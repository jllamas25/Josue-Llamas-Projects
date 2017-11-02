/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Gllamas/Documents/ECE424L/Calculator/AddSub.vhd";
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_1697423399_503743352(char *, char *, char *, char *, char *, char *);


static void work_a_3361092007_3212880686_p_0(char *t0)
{
    char t1[16];
    char t9[16];
    char t14[16];
    char t19[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    char *t10;
    char *t11;
    char *t12;
    unsigned char t13;
    char *t15;
    char *t16;
    char *t17;
    unsigned char t18;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned char t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;

LAB0:    xsi_set_current_line(29, ng0);

LAB3:    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 5532U);
    t4 = (t0 + 1352U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t4 = (t0 + 1352U);
    t7 = *((char **)t4);
    t8 = *((unsigned char *)t7);
    t10 = ((IEEE_P_2592010699) + 4024);
    t4 = xsi_base_array_concat(t4, t9, t10, (char)99, t6, (char)99, t8, (char)101);
    t11 = (t0 + 1352U);
    t12 = *((char **)t11);
    t13 = *((unsigned char *)t12);
    t15 = ((IEEE_P_2592010699) + 4024);
    t11 = xsi_base_array_concat(t11, t14, t15, (char)97, t4, t9, (char)99, t13, (char)101);
    t16 = (t0 + 1352U);
    t17 = *((char **)t16);
    t18 = *((unsigned char *)t17);
    t20 = ((IEEE_P_2592010699) + 4024);
    t16 = xsi_base_array_concat(t16, t19, t20, (char)97, t11, t14, (char)99, t18, (char)101);
    t21 = ieee_p_2592010699_sub_1697423399_503743352(IEEE_P_2592010699, t1, t3, t2, t16, t19);
    t22 = (t1 + 12U);
    t23 = *((unsigned int *)t22);
    t24 = (1U * t23);
    t25 = (4U != t24);
    if (t25 == 1)
        goto LAB5;

LAB6:    t26 = (t0 + 3552);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    memcpy(t30, t21, 4U);
    xsi_driver_first_trans_fast(t26);

LAB2:    t31 = (t0 + 3472);
    *((int *)t31) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(4U, t24, 0);
    goto LAB6;

}


extern void work_a_3361092007_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3361092007_3212880686_p_0};
	xsi_register_didat("work_a_3361092007_3212880686", "isim/CT_isim_beh.exe.sim/work/a_3361092007_3212880686.didat");
	xsi_register_executes(pe);
}
