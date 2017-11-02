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
static const char *ng0 = "C:/Users/Gllamas/Documents/ECE424L/Calculator/B2BCD.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_767740470_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_0272816409_2820543286_p_0(char *t0)
{
    char t15[16];
    char t18[16];
    char t19[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    int t16;
    unsigned int t17;
    char *t20;
    char *t21;
    int t22;
    char *t23;
    unsigned int t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    unsigned int t30;
    static char *nl0[] = {&&LAB12, &&LAB13, &&LAB14, &&LAB15, &&LAB16};

LAB0:    t1 = (t0 + 4752U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(35, ng0);

LAB6:    t2 = (t0 + 5072);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    t6 = (t0 + 5072);
    *((int *)t6) = 0;
    xsi_set_current_line(36, ng0);
    t2 = (t0 + 3112U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t2 = (char *)((nl0) + t3);
    goto **((char **)t2);

LAB5:    t4 = (t0 + 992U);
    t5 = xsi_signal_has_event(t4);
    if (t5 == 1)
        goto LAB8;

LAB9:    t3 = (unsigned char)0;

LAB10:    if (t3 == 1)
        goto LAB4;
    else
        goto LAB6;

LAB7:    goto LAB5;

LAB8:    t6 = (t0 + 1032U);
    t7 = *((char **)t6);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)3);
    t3 = t9;
    goto LAB10;

LAB11:    goto LAB2;

LAB12:    xsi_set_current_line(37, ng0);
    t6 = (t0 + 8752);
    t10 = (t0 + 5152);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t6, 4U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(37, ng0);
    t2 = (t0 + 8756);
    t6 = (t0 + 5216);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 4U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(37, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t2 = (t0 + 5280);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 8U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(37, ng0);
    t2 = (t0 + 5344);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)1;
    xsi_driver_first_trans_fast(t2);
    goto LAB11;

LAB13:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 3592U);
    t4 = *((char **)t2);
    t2 = (t0 + 8692U);
    t6 = (t0 + 8760);
    t10 = (t15 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 0;
    t11 = (t10 + 4U);
    *((int *)t11) = 7;
    t11 = (t10 + 8U);
    *((int *)t11) = 1;
    t16 = (7 - 0);
    t17 = (t16 * 1);
    t17 = (t17 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t17;
    t3 = ieee_std_logic_unsigned_greater_stdv_stdv(IEEE_P_3620187407, t4, t2, t6, t15);
    if (t3 != 0)
        goto LAB17;

LAB19:    t2 = (t0 + 3592U);
    t4 = *((char **)t2);
    t2 = (t0 + 8692U);
    t6 = (t0 + 8780);
    t10 = (t15 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 0;
    t11 = (t10 + 4U);
    *((int *)t11) = 7;
    t11 = (t10 + 8U);
    *((int *)t11) = 1;
    t16 = (7 - 0);
    t17 = (t16 * 1);
    t17 = (t17 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t17;
    t3 = ieee_std_logic_unsigned_greater_stdv_stdv(IEEE_P_3620187407, t4, t2, t6, t15);
    if (t3 != 0)
        goto LAB24;

LAB25:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 3272U);
    t4 = *((char **)t2);
    t2 = (t0 + 5408);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 4U);
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(45, ng0);
    t2 = (t0 + 3432U);
    t4 = *((char **)t2);
    t2 = (t0 + 5472);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 4U);
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(46, ng0);
    t2 = (t0 + 3592U);
    t4 = *((char **)t2);
    t17 = (7 - 3);
    t24 = (t17 * 1U);
    t30 = (0 + t24);
    t2 = (t4 + t30);
    t6 = (t0 + 5536);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 4U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(47, ng0);
    t2 = (t0 + 8800);
    t6 = (t0 + 1672U);
    t7 = *((char **)t6);
    t10 = ((IEEE_P_2592010699) + 4024);
    t11 = (t18 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 0;
    t12 = (t11 + 4U);
    *((int *)t12) = 3;
    t12 = (t11 + 8U);
    *((int *)t12) = 1;
    t16 = (3 - 0);
    t17 = (t16 * 1);
    t17 = (t17 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t17;
    t12 = (t0 + 8532U);
    t6 = xsi_base_array_concat(t6, t15, t10, (char)97, t2, t18, (char)97, t7, t12, (char)101);
    t17 = (4U + 4U);
    t3 = (8U != t17);
    if (t3 == 1)
        goto LAB30;

LAB31:    t13 = (t0 + 5280);
    t14 = (t13 + 56U);
    t20 = *((char **)t14);
    t21 = (t20 + 56U);
    t23 = *((char **)t21);
    memcpy(t23, t6, 8U);
    xsi_driver_first_trans_fast(t13);
    xsi_set_current_line(48, ng0);
    t2 = (t0 + 8804);
    t6 = (t0 + 5216);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 4U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 5344);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);

LAB18:    goto LAB11;

LAB14:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 3592U);
    t4 = *((char **)t2);
    t2 = (t0 + 8692U);
    t6 = (t0 + 8808);
    t10 = (t15 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 0;
    t11 = (t10 + 4U);
    *((int *)t11) = 7;
    t11 = (t10 + 8U);
    *((int *)t11) = 1;
    t16 = (7 - 0);
    t17 = (t16 * 1);
    t17 = (t17 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t17;
    t3 = ieee_std_logic_unsigned_greater_stdv_stdv(IEEE_P_3620187407, t4, t2, t6, t15);
    if (t3 != 0)
        goto LAB32;

LAB34:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 3432U);
    t4 = *((char **)t2);
    t2 = (t0 + 5600);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 4U);
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 8828);
    t6 = (t0 + 5216);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 4U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 3592U);
    t4 = *((char **)t2);
    t17 = (7 - 3);
    t24 = (t17 * 1U);
    t30 = (0 + t24);
    t2 = (t4 + t30);
    t6 = (t0 + 5664);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 4U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 5344);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);

LAB33:    goto LAB11;

LAB15:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t5 = (t3 == (unsigned char)2);
    if (t5 != 0)
        goto LAB39;

LAB41:    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t5 = (t3 == (unsigned char)3);
    if (t5 != 0)
        goto LAB44;

LAB45:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 5344);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)0;
    xsi_driver_first_trans_fast(t2);

LAB40:    goto LAB11;

LAB16:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 3592U);
    t4 = *((char **)t2);
    t2 = (t0 + 8692U);
    t6 = (t0 + 8839);
    t10 = (t15 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 0;
    t11 = (t10 + 4U);
    *((int *)t11) = 7;
    t11 = (t10 + 8U);
    *((int *)t11) = 1;
    t16 = (7 - 0);
    t17 = (t16 * 1);
    t17 = (t17 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t17;
    t3 = ieee_std_logic_unsigned_greater_stdv_stdv(IEEE_P_3620187407, t4, t2, t6, t15);
    if (t3 != 0)
        goto LAB48;

LAB50:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 3432U);
    t4 = *((char **)t2);
    t2 = (t0 + 5728);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 4U);
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 3592U);
    t4 = *((char **)t2);
    t17 = (7 - 3);
    t24 = (t17 * 1U);
    t30 = (0 + t24);
    t2 = (t4 + t30);
    t6 = (t0 + 5792);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 4U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 5344);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)0;
    xsi_driver_first_trans_fast(t2);

LAB49:    goto LAB11;

LAB17:    xsi_set_current_line(38, ng0);
    t11 = (t0 + 3592U);
    t12 = *((char **)t11);
    t11 = (t0 + 8692U);
    t13 = (t0 + 8768);
    t20 = (t19 + 0U);
    t21 = (t20 + 0U);
    *((int *)t21) = 0;
    t21 = (t20 + 4U);
    *((int *)t21) = 7;
    t21 = (t20 + 8U);
    *((int *)t21) = 1;
    t22 = (7 - 0);
    t17 = (t22 * 1);
    t17 = (t17 + 1);
    t21 = (t20 + 12U);
    *((unsigned int *)t21) = t17;
    t21 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t18, t12, t11, t13, t19);
    t23 = (t18 + 12U);
    t17 = *((unsigned int *)t23);
    t24 = (1U * t17);
    t5 = (8U != t24);
    if (t5 == 1)
        goto LAB20;

LAB21:    t25 = (t0 + 5280);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t21, 8U);
    xsi_driver_first_trans_fast(t25);
    xsi_set_current_line(39, ng0);
    t2 = (t0 + 3272U);
    t4 = *((char **)t2);
    t2 = (t0 + 8676U);
    t6 = (t0 + 8776);
    t10 = (t18 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 0;
    t11 = (t10 + 4U);
    *((int *)t11) = 3;
    t11 = (t10 + 8U);
    *((int *)t11) = 1;
    t16 = (3 - 0);
    t17 = (t16 * 1);
    t17 = (t17 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t17;
    t11 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t15, t4, t2, t6, t18);
    t12 = (t15 + 12U);
    t17 = *((unsigned int *)t12);
    t24 = (1U * t17);
    t3 = (4U != t24);
    if (t3 == 1)
        goto LAB22;

LAB23:    t13 = (t0 + 5152);
    t14 = (t13 + 56U);
    t20 = *((char **)t14);
    t21 = (t20 + 56U);
    t23 = *((char **)t21);
    memcpy(t23, t11, 4U);
    xsi_driver_first_trans_fast(t13);
    xsi_set_current_line(40, ng0);
    t2 = (t0 + 5344);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)1;
    xsi_driver_first_trans_fast(t2);
    goto LAB18;

LAB20:    xsi_size_not_matching(8U, t24, 0);
    goto LAB21;

LAB22:    xsi_size_not_matching(4U, t24, 0);
    goto LAB23;

LAB24:    xsi_set_current_line(41, ng0);
    t11 = (t0 + 3592U);
    t12 = *((char **)t11);
    t11 = (t0 + 8692U);
    t13 = (t0 + 8788);
    t20 = (t19 + 0U);
    t21 = (t20 + 0U);
    *((int *)t21) = 0;
    t21 = (t20 + 4U);
    *((int *)t21) = 7;
    t21 = (t20 + 8U);
    *((int *)t21) = 1;
    t22 = (7 - 0);
    t17 = (t22 * 1);
    t17 = (t17 + 1);
    t21 = (t20 + 12U);
    *((unsigned int *)t21) = t17;
    t21 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t18, t12, t11, t13, t19);
    t23 = (t18 + 12U);
    t17 = *((unsigned int *)t23);
    t24 = (1U * t17);
    t5 = (8U != t24);
    if (t5 == 1)
        goto LAB26;

LAB27:    t25 = (t0 + 5280);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t21, 8U);
    xsi_driver_first_trans_fast(t25);
    xsi_set_current_line(42, ng0);
    t2 = (t0 + 3432U);
    t4 = *((char **)t2);
    t2 = (t0 + 8676U);
    t6 = (t0 + 8796);
    t10 = (t18 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 0;
    t11 = (t10 + 4U);
    *((int *)t11) = 3;
    t11 = (t10 + 8U);
    *((int *)t11) = 1;
    t16 = (3 - 0);
    t17 = (t16 * 1);
    t17 = (t17 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t17;
    t11 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t15, t4, t2, t6, t18);
    t12 = (t15 + 12U);
    t17 = *((unsigned int *)t12);
    t24 = (1U * t17);
    t3 = (4U != t24);
    if (t3 == 1)
        goto LAB28;

LAB29:    t13 = (t0 + 5216);
    t14 = (t13 + 56U);
    t20 = *((char **)t14);
    t21 = (t20 + 56U);
    t23 = *((char **)t21);
    memcpy(t23, t11, 4U);
    xsi_driver_first_trans_fast(t13);
    xsi_set_current_line(43, ng0);
    t2 = (t0 + 5344);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)1;
    xsi_driver_first_trans_fast(t2);
    goto LAB18;

LAB26:    xsi_size_not_matching(8U, t24, 0);
    goto LAB27;

LAB28:    xsi_size_not_matching(4U, t24, 0);
    goto LAB29;

LAB30:    xsi_size_not_matching(8U, t17, 0);
    goto LAB31;

LAB32:    xsi_set_current_line(51, ng0);
    t11 = (t0 + 3592U);
    t12 = *((char **)t11);
    t11 = (t0 + 8692U);
    t13 = (t0 + 8816);
    t20 = (t19 + 0U);
    t21 = (t20 + 0U);
    *((int *)t21) = 0;
    t21 = (t20 + 4U);
    *((int *)t21) = 7;
    t21 = (t20 + 8U);
    *((int *)t21) = 1;
    t22 = (7 - 0);
    t17 = (t22 * 1);
    t17 = (t17 + 1);
    t21 = (t20 + 12U);
    *((unsigned int *)t21) = t17;
    t21 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t18, t12, t11, t13, t19);
    t23 = (t18 + 12U);
    t17 = *((unsigned int *)t23);
    t24 = (1U * t17);
    t5 = (8U != t24);
    if (t5 == 1)
        goto LAB35;

LAB36:    t25 = (t0 + 5280);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t21, 8U);
    xsi_driver_first_trans_fast(t25);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 3432U);
    t4 = *((char **)t2);
    t2 = (t0 + 8676U);
    t6 = (t0 + 8824);
    t10 = (t18 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 0;
    t11 = (t10 + 4U);
    *((int *)t11) = 3;
    t11 = (t10 + 8U);
    *((int *)t11) = 1;
    t16 = (3 - 0);
    t17 = (t16 * 1);
    t17 = (t17 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t17;
    t11 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t15, t4, t2, t6, t18);
    t12 = (t15 + 12U);
    t17 = *((unsigned int *)t12);
    t24 = (1U * t17);
    t3 = (4U != t24);
    if (t3 == 1)
        goto LAB37;

LAB38:    t13 = (t0 + 5216);
    t14 = (t13 + 56U);
    t20 = *((char **)t14);
    t21 = (t20 + 56U);
    t23 = *((char **)t21);
    memcpy(t23, t11, 4U);
    xsi_driver_first_trans_fast(t13);
    goto LAB33;

LAB35:    xsi_size_not_matching(8U, t24, 0);
    goto LAB36;

LAB37:    xsi_size_not_matching(4U, t24, 0);
    goto LAB38;

LAB39:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 8832);
    t7 = (t0 + 1192U);
    t10 = *((char **)t7);
    t8 = *((unsigned char *)t10);
    t11 = ((IEEE_P_2592010699) + 4024);
    t12 = (t18 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 2;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t16 = (2 - 0);
    t17 = (t16 * 1);
    t17 = (t17 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t17;
    t7 = xsi_base_array_concat(t7, t15, t11, (char)97, t2, t18, (char)99, t8, (char)101);
    t13 = (t0 + 1832U);
    t14 = *((char **)t13);
    t20 = ((IEEE_P_2592010699) + 4024);
    t21 = (t0 + 8548U);
    t13 = xsi_base_array_concat(t13, t19, t20, (char)97, t7, t15, (char)97, t14, t21, (char)101);
    t17 = (3U + 1U);
    t24 = (t17 + 4U);
    t9 = (8U != t24);
    if (t9 == 1)
        goto LAB42;

LAB43:    t23 = (t0 + 5280);
    t25 = (t23 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memcpy(t28, t13, 8U);
    xsi_driver_first_trans_fast(t23);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 5344);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)4;
    xsi_driver_first_trans_fast(t2);
    goto LAB40;

LAB42:    xsi_size_not_matching(8U, t24, 0);
    goto LAB43;

LAB44:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 8835);
    t7 = (t0 + 1832U);
    t10 = *((char **)t7);
    t11 = ((IEEE_P_2592010699) + 4024);
    t12 = (t18 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 3;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t16 = (3 - 0);
    t17 = (t16 * 1);
    t17 = (t17 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t17;
    t13 = (t0 + 8548U);
    t7 = xsi_base_array_concat(t7, t15, t11, (char)97, t2, t18, (char)97, t10, t13, (char)101);
    t17 = (4U + 4U);
    t8 = (8U != t17);
    if (t8 == 1)
        goto LAB46;

LAB47:    t14 = (t0 + 5280);
    t20 = (t14 + 56U);
    t21 = *((char **)t20);
    t23 = (t21 + 56U);
    t25 = *((char **)t23);
    memcpy(t25, t7, 8U);
    xsi_driver_first_trans_fast(t14);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 5344);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)4;
    xsi_driver_first_trans_fast(t2);
    goto LAB40;

LAB46:    xsi_size_not_matching(8U, t17, 0);
    goto LAB47;

LAB48:    xsi_set_current_line(63, ng0);
    t11 = (t0 + 3592U);
    t12 = *((char **)t11);
    t11 = (t0 + 8692U);
    t13 = (t0 + 8847);
    t20 = (t19 + 0U);
    t21 = (t20 + 0U);
    *((int *)t21) = 0;
    t21 = (t20 + 4U);
    *((int *)t21) = 7;
    t21 = (t20 + 8U);
    *((int *)t21) = 1;
    t22 = (7 - 0);
    t17 = (t22 * 1);
    t17 = (t17 + 1);
    t21 = (t20 + 12U);
    *((unsigned int *)t21) = t17;
    t21 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t18, t12, t11, t13, t19);
    t23 = (t18 + 12U);
    t17 = *((unsigned int *)t23);
    t24 = (1U * t17);
    t5 = (8U != t24);
    if (t5 == 1)
        goto LAB51;

LAB52:    t25 = (t0 + 5280);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t21, 8U);
    xsi_driver_first_trans_fast(t25);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 3432U);
    t4 = *((char **)t2);
    t2 = (t0 + 8676U);
    t6 = (t0 + 8855);
    t10 = (t18 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 0;
    t11 = (t10 + 4U);
    *((int *)t11) = 3;
    t11 = (t10 + 8U);
    *((int *)t11) = 1;
    t16 = (3 - 0);
    t17 = (t16 * 1);
    t17 = (t17 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t17;
    t11 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t15, t4, t2, t6, t18);
    t12 = (t15 + 12U);
    t17 = *((unsigned int *)t12);
    t24 = (1U * t17);
    t3 = (4U != t24);
    if (t3 == 1)
        goto LAB53;

LAB54:    t13 = (t0 + 5216);
    t14 = (t13 + 56U);
    t20 = *((char **)t14);
    t21 = (t20 + 56U);
    t23 = *((char **)t21);
    memcpy(t23, t11, 4U);
    xsi_driver_first_trans_fast(t13);
    goto LAB49;

LAB51:    xsi_size_not_matching(8U, t24, 0);
    goto LAB52;

LAB53:    xsi_size_not_matching(4U, t24, 0);
    goto LAB54;

}


extern void work_a_0272816409_2820543286_init()
{
	static char *pe[] = {(void *)work_a_0272816409_2820543286_p_0};
	xsi_register_didat("work_a_0272816409_2820543286", "isim/CT_isim_beh.exe.sim/work/a_0272816409_2820543286.didat");
	xsi_register_executes(pe);
}
