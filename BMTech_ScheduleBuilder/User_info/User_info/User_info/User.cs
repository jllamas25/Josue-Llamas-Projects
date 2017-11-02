using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

namespace User_info
{
    public class User
    {
        public int schedule_count = 0;
        public int unit_count = 0;
        public string admin_lvl;
        public string admin_type;
        public string identification;
        public string major, student_LVL;
        public string last_name, first_name;
        public string[] courses_taken = new string[100];
        public double[] taken_courses = new double[100];
        public int units_desired;
        public double[] Desired_course = new double[6];
        public int counter = 0, counter2 = 0;
        public string[] compare = new string[100];
        public int[] compare2 = new int[100];
        public double[] schedulea=new double[10];
        public double[] scheduleb = new double[10];
        public double[] schedulec = new double[10];
        public int[] sched = new int[10];
        public string[] schedule = new string[10];

        public User()//default constructor
        {

        }
        public User(List<string> list)//constructor we should be using
        {
            update(list);

        }
        public void update(List<string> list)
        {
            admin_type = list[1];
            major = list[5];
            admin_lvl = list[0];
            //update_user();
            update_Lastname(list[2]);
            update_Firstname(list[3]);
            identification = list[4];
            update_studentLVL(list[6]);
            for (int i = 7; i < 100; i++)
            {

                if (list[i] == "X")
                    break;
                else
                    add_takenCourse(list[i]);
            }
            //load_user();
        }
        public void display()
        {
            Console.WriteLine("\n {0}, {1}, {2}, {3}, {4}, {5}, {6}", admin_lvl, admin_type, last_name, first_name, identification, major, student_LVL);

        }

        //the next part is for updating student parameters.
        /*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

        public void load_user()
        {
            int tab_counter = 0;
            Console.WriteLine("\nUser's name: {0}, {1}", last_name, first_name);
            Console.WriteLine("User's ID#: {0}", identification);
            Console.WriteLine("User's type: {0}", admin_type);
            Console.WriteLine("User's department/major: {0}", major);
            if (admin_lvl == "0")
            {
                Console.WriteLine("Student level: {0}", student_LVL);
                if (courses_taken[0] == "x")
                    Console.WriteLine("No courses taken so far.");
                else
                {
                    Console.WriteLine("Courses taken: ");
                    for (int j = 0; j <= counter2; j++)
                    {
                        if (courses_taken[j] == "X")
                            break;
                        else
                        {
                            if (tab_counter == 9)
                            {
                                tab_counter = 0;
                                Console.WriteLine(" ");
                            }
                            Console.Write(courses_taken[j]);
                            Console.Write("\t");
                            tab_counter++;
                        }
                    }
                }
            }
            Console.WriteLine(" ");

        }
        public void update_units(int units)//This will input the amount of units the student wants to take
        {
            units_desired = units;
        }
        public void add_desired_course(double course)//This is where the student will enter desired courses.  if there are none, defaults to blank
        {
            Desired_course[counter] = course;
            counter++;
        }
        public void update_Lastname(string last)//This will be called upon initialization, or if the student has a name change
        {
            last_name = last;
        }
        public void update_Firstname(string first)
        {
            first_name = first;
        }
        public void update_major(string new_major)//If the student changes their major
        {
            major = new_major;
        }
        public void update_studentLVL(string newLVL)//freshman, etc...
        {
            student_LVL = newLVL;
        }
        public void add_takenCourse(string taken)//, int total, Courses[] winter)
        {
            courses_taken[counter2] = taken;
            taken_courses[counter2] = Convert.ToDouble(taken);

            /* for (int i=0; i<total; i++)//compares to the list of courses to see mark what does not need to be taken
            {
                if (taken == winter[i].course)
                    compare[i] = 1;
            }*/
            counter2++;

        }
        public void comparing(List<string> list, List<string> lista, List<string> listb, List<string> listc, List<string> listd, List<string>liste, int print)
        {
            string[] newtest = new string[100];

            for (int j = 0; j < 60; j++)
                for (int k = 0; k < counter2 - 1; k++)
                {
                    if (list[j] != "X")
                    {
                        newtest[j] = list[j];
                        //testpt[j] = Convert.ToDouble(newtest[j]);
                        if (newtest[j] == courses_taken[k])
                        {
                            compare[j] = "X"; break;
                        }
                        else
                        {
                            compare[j] = newtest[j];
                            compare2[j] = j;
                        }
                    }
                    else
                        break;
                }
            if (print==1)
            {
                Console.Write("\nAfter checking to see if user has taken offered classes\nUser can take");
                print_compare();
            }
            comparing_pre(lista);
            
            comparing_pre(listb);
           
            comparing_pre(listc);
            comparing_pre(listd);
            if (print == 1)
            {
                Console.Write("\nAfter checking to see if user has taken required Pre-req's\nUser can take");
                print_compare();
            }
            comparemajor(liste);
            if (print == 1)
                Console.Write("\nAfter checking to see if courses fit the user's major\nUser can take");
        }
        public void print_compare()
        {
            for (int l = 0; l < 60; l++)
                if (compare[l] != "X" && compare[l] != "cannot take")
                    Console.WriteLine("ECE {0}", compare[l]);
        }
        public void comparing_pre(List<string> list)
        {
            string[] newtest2 = new string[100];

            for (int j = 0; j < 60; j++)
            {
                if (compare[j] != "X" || compare[j] != "cannot take")
                {
                    newtest2[j] = list[j];

                    for (int k = 0; k <= 60; k++)//testpt[j] = Convert.ToDouble(newtest[j]);
                    {
                        if (newtest2[j] == compare[k])
                        {
                            compare[j] = "cannot take";// break;
                            compare2[j] = 0;
                        }
                    }
                }
            }
        }
        public void comparemajor(List<string> list)
        {
            for (int j = 0; j < 60; j++)
                if (compare2[j] != 0)
                    if (list[j] != major && list[j] != "Both")
                    {
                        compare2[j] = 0;
                        compare[j] = "X";
                    }

            //the next part is for the methods that will be used for generation, etc
            /*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
            
        }
        public void print_schedule()
        {
            for (int c = 0; c < schedule_count; c++)
            {
                Console.Write("\nECE {0}   \tDays:{1} \tStart:{2} \tEnd:{3}", schedule[c], schedulea[c], scheduleb[c], schedulec[c]);
            }
            Console.WriteLine("\nTotal_ Units: {0}", unit_count);
        }
        public void generate(List<string> lista, List<string> listb, List<string> listc, List<string> listd, List<string> liste, List<string>listf)
        {
            string tempint;
            string temps;
            for (int j=1; j<60; j++)
            {
                if (compare[j]!="X"&&compare[j]!="cannot take")
                {
                    if (unit_count >= 12)
                     compare[j] = "X";
                    else
                    {
                        if (schedule_count == 0)
                        {
                            sched[schedule_count] = j;
                            schedule[schedule_count] = lista[j];
                            temps = listc[j];
                            
                            schedulea[schedule_count] = Convert.ToDouble(temps);
                            temps = listd[j];
                            scheduleb[schedule_count] = Convert.ToDouble(temps);
                            temps = liste[j];
                            schedulec[schedule_count] = Convert.ToDouble(temps);
                            schedule_count++;
                            tempint = listb[j];
                            unit_count = unit_count + Convert.ToInt32(tempint);
                        }
                        else
                        {
                            for (int k = 0; k < schedule_count; k++)
                            {
                                if (schedulea[k] == Convert.ToDouble(listc[j]) && (Convert.ToDouble(listd[j]) >= scheduleb[k] && Convert.ToDouble(listd[j]) <= schedulec[k])
                                      && (Convert.ToDouble(liste[j]) >= scheduleb[k] && Convert.ToDouble(liste[j]) <= schedulec[k]))
                                    compare[j] = "cannot take";
                            }
                            if (compare[j] != "X" && compare[j] != "cannot take")
                            {
                                sched[schedule_count] = j;
                                schedule[schedule_count] = lista[j];
                                temps = listc[j];
                                schedulea[schedule_count] = Convert.ToDouble(temps);
                                temps = listd[j];
                                scheduleb[schedule_count] = Convert.ToDouble(temps);
                                temps = liste[j];
                                schedulec[schedule_count] = Convert.ToDouble(temps);
                                schedule_count++;
                                tempint = listb[j];
                                unit_count = unit_count + Convert.ToInt32(tempint);
                            }
                        }
                        
                    }
                }
            }
        }
    }
}
