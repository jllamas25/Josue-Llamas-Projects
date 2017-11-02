using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

namespace User_info
{
    public class Courses
    {

        public double course;
        public string course_name;
        public int units;
        public string major;
        public int days, begin, end;
        public double core;
        public double[] pre = new double[6];
        public int counter1;

        public Courses()//default constructor
        {
            Console.WriteLine("Test1");
        }
        public Courses(List<string> list)//detailed constructor
        {
            updateCourses(list);
        }
        public void updateCourses(List<string> list)//input all data
        {
            course = Convert.ToDouble(list[0]);
            course_name = list[1];
            units = Convert.ToInt32(list[2]);
            major = list[3];
            days = Convert.ToInt32(list[4]);
            begin = Convert.ToInt32(list[5]);
            end = Convert.ToInt32(list[6]);
            add_coreq(list);
            add_Prereq(list);
            counter1 = 0;
        }
        public void add_coreq(List<string> list)//add a corequisite
        {
            if (list[7] != "X")
                core = Convert.ToDouble(list[7]);
        }
        public void add_Prereq(List<string> list)//add a prerequisite
        {
            if (list[8] != "X")
            {
                pre[counter1] = Convert.ToDouble(list[8]);
                counter1++;
                if (list[9] != "X"&& list[8] != "X")
                {
                    pre[counter1] = Convert.ToDouble(list[9]);
                    counter1++;
                    if (list[9] != "X" && list[8] != "X"&&list[10] != "X")
                    {
                        pre[counter1] = Convert.ToDouble(list[10]);
                        counter1++;
                        if (list[9] != "X" && list[8] != "X" && list[10] != "X"&&list[11] != "X")
                        {
                            pre[counter1] = Convert.ToDouble(list[11]);
                            counter1++;
                        }
                    }
                }
            }
            

            /* for (int k = 8; k < 12; k++)
             {
                 if (list[k] == "X")
                     break;
                 else
                     pre[counter1] = Convert.ToDouble(list[k]);
                 counter1++;
             }*/
        }
        public void load_course()
        {
            Console.WriteLine("Course: {0}", course);
            Console.WriteLine("Course name: {0}", course_name);
            Console.WriteLine("Units: {0} \tMajor(s): {1}", units, major);
            Console.WriteLine("Day/Times: {0} {1} {2}", days, begin,end);
            Console.WriteLine("Coreq: {0}", core);
            Console.Write("Prereq: ");
            if (pre[0] == 0)
            {
                Console.WriteLine("None");

            }
            else
                Console.Write("{0}\t", pre[0]);
            for (int k = 1; k < 4; k++)
            {   
                
                if (pre[k] == 0)
                {
                    Console.WriteLine(" ");
                    break;
                }
                else
                    Console.Write("{0}\t", pre[k]);
            }
        }

    }
}
