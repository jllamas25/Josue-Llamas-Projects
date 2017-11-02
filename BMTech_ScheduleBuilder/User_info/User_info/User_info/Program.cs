using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

namespace User_info
{
    class Program
    {
        
        static void Main(string[] args)
        {
            //reading user file starts here
            var reader = new StreamReader(File.OpenRead(@"C:\Users\Josue Llamas\Google Drive\Josue Llamas Projects\BMTech_ScheduleBuilder\UserLoadFileNew.csv"));//C:\Users\David\Documents\Visual Studio 2013\Projects\Users\UserLoadFile2.csv"));
            List<string> listA = new List<string>();
            List<string> listB = new List<string>();
            List<string> listC = new List<string>();
            List<string> listD = new List<string>();
            List<string> listE = new List<string>();
            List<string> listF = new List<string>();
            List<string> listG = new List<string>();
            List<string> listH = new List<string>();
            List<string> listI = new List<string>();
            
            while (!reader.EndOfStream)
            {
                var line = reader.ReadLine();
                var attributes = line.Split(',');
                listA.Add(attributes[0]);
                listB.Add(attributes[1]);
                listC.Add(attributes[2]);
                listD.Add(attributes[3]);
                listE.Add(attributes[4]);
                listF.Add(attributes[5]);
                listG.Add(attributes[6]);
                listH.Add(attributes[7]);
                listI.Add(attributes[8]);
            }//reading user file ends here
            //reading course file starts here
            var reader2 = new StreamReader(File.OpenRead(@"C:\Users\Josue Llamas\Google Drive\Josue Llamas Projects\BMTech_ScheduleBuilder\winter_2016_database_transpose.csv"));
            List<string> list_test = new List<string>();
            List<string> list_test1 = new List<string>();
            List<string> list_test2 = new List<string>();
            List<string> list_test3 = new List<string>();
            List<string> list_test4 = new List<string>();
            List<string> list_test5 = new List<string>();
            List<string> list_test6 = new List<string>();
            List<string> list_test7 = new List<string>();
            List<string> list_test8 = new List<string>();
            List<string> list_test9 = new List<string>();
            List<string> list_test10 = new List<string>();
            List<string> list_test11 = new List<string>();
            List<string> list_test12 = new List<string>();
            List<string> list_test13 = new List<string>();
            List<string> list_test14 = new List<string>();
            List<string> list_test15 = new List<string>();
            List<string> list_test16 = new List<string>();
            List<string> list_test17 = new List<string>();
            List<string> list_test18 = new List<string>();
            List<string> list_test19 = new List<string>();
            List<string> list_test20 = new List<string>();
            List<string> list_test21 = new List<string>();
            List<string> list_test22 = new List<string>();
            List<string> list_test23 = new List<string>();
            List<string> list_test24 = new List<string>();
            List<string> list_test25 = new List<string>();
            List<string> list_test26 = new List<string>();
            List<string> list_test27 = new List<string>();
            List<string> list_test28 = new List<string>();
            List<string> list_test29 = new List<string>();
            List<string> list_test30 = new List<string>();
            List<string> list_test31 = new List<string>();
            List<string> list_test32 = new List<string>();
            List<string> list_test33 = new List<string>();
            List<string> list_test34 = new List<string>();
            List<string> list_test35 = new List<string>();
            List<string> list_test36 = new List<string>();
            List<string> list_test37 = new List<string>();
            List<string> list_test38 = new List<string>();
            List<string> list_test39 = new List<string>();
            List<string> list_test40 = new List<string>();
            List<string> list_test41 = new List<string>();
            List<string> list_test42 = new List<string>();
            List<string> list_test43 = new List<string>();
            List<string> list_test44 = new List<string>();
            List<string> list_test45 = new List<string>();
            List<string> list_test46 = new List<string>();
            List<string> list_test47 = new List<string>();
            List<string> list_test48 = new List<string>();
            List<string> list_test49 = new List<string>();
            List<string> list_test50 = new List<string>();
            List<string> list_test51 = new List<string>();
            List<string> list_test52 = new List<string>();
            List<string> list_test53 = new List<string>();
            List<string> list_test54 = new List<string>();
            List<string> list_test55 = new List<string>();
            List<string> list_test56 = new List<string>();
            List<string> list_test57 = new List<string>();
            List<string> list_test58 = new List<string>();
            List<string> list_test59 = new List<string>();
            


            while (!reader2.EndOfStream)
            {
                var line = reader2.ReadLine();
                var attributes = line.Split(',');

                list_test.Add(attributes[0]);
                list_test1.Add(attributes[1]);
                list_test2.Add(attributes[2]);
                list_test3.Add(attributes[3]);
                list_test4.Add(attributes[4]);
                list_test5.Add(attributes[5]);
                list_test6.Add(attributes[6]);
                list_test7.Add(attributes[7]);
                list_test8.Add(attributes[8]);
                list_test9.Add(attributes[9]);
                list_test10.Add(attributes[10]);
                list_test11.Add(attributes[11]);
                list_test12.Add(attributes[12]);
                list_test13.Add(attributes[13]);
                list_test14.Add(attributes[14]);
                list_test15.Add(attributes[15]);
                list_test16.Add(attributes[16]);
                list_test17.Add(attributes[17]);
                list_test18.Add(attributes[18]);
                list_test19.Add(attributes[19]);
                list_test20.Add(attributes[20]);
                list_test21.Add(attributes[21]);
                list_test22.Add(attributes[22]);
                list_test23.Add(attributes[23]);
                list_test24.Add(attributes[24]);
                list_test25.Add(attributes[25]);
                list_test26.Add(attributes[26]);
                list_test27.Add(attributes[27]);
                list_test28.Add(attributes[28]);
                list_test29.Add(attributes[29]);
                list_test30.Add(attributes[30]);
                list_test31.Add(attributes[31]);
                list_test32.Add(attributes[32]);
                list_test33.Add(attributes[33]);
                list_test34.Add(attributes[34]);
                list_test35.Add(attributes[35]);
                list_test36.Add(attributes[36]);
                list_test37.Add(attributes[37]);
                list_test38.Add(attributes[38]);
                list_test39.Add(attributes[39]);
                list_test40.Add(attributes[40]);
                list_test41.Add(attributes[41]);
                list_test42.Add(attributes[42]);
                list_test43.Add(attributes[43]);
                list_test44.Add(attributes[44]);
                list_test45.Add(attributes[45]);
                list_test46.Add(attributes[46]);
                list_test47.Add(attributes[47]);
                list_test48.Add(attributes[48]);
                list_test49.Add(attributes[49]);
                list_test50.Add(attributes[50]);
                list_test51.Add(attributes[51]);
                list_test52.Add(attributes[52]);
                list_test53.Add(attributes[53]);
                list_test54.Add(attributes[54]);
                list_test55.Add(attributes[55]);
                list_test56.Add(attributes[56]);
                list_test57.Add(attributes[57]);
                list_test58.Add(attributes[58]);
                list_test59.Add(attributes[59]);
                

            }
            //reading course file ends here
            //initializing courses begins here
            Courses ECE109 = new Courses(list_test1);
            Courses ECE109L = new Courses(list_test2);
            Courses ECE114 = new Courses(list_test3);
            Courses ECE114L = new Courses(list_test4);
            Courses ECE130 = new Courses(list_test5);
            Courses ECE204 = new Courses(list_test6);
            Courses ECE204L = new Courses(list_test7);
            Courses ECE205 = new Courses(list_test8);
            Courses ECE205L = new Courses(list_test9);
            Courses ECE207 = new Courses(list_test10);
            Courses ECE207L = new Courses(list_test11);
            Courses ECE209 = new Courses(list_test12);
            Courses ECE209L = new Courses(list_test13);
            Courses ECE220 = new Courses(list_test14);
            Courses ECE220L = new Courses(list_test15);
            Courses ECE256 = new Courses(list_test16);
           
            Courses ECE302 = new Courses(list_test17);
            Courses ECE304 = new Courses(list_test18);
            Courses ECE306 = new Courses(list_test19);
            Courses ECE306L = new Courses(list_test20);
            Courses ECE307 = new Courses(list_test21);
            Courses ECE309 = new Courses(list_test22);
            Courses ECE309L = new Courses(list_test23);
            Courses ECE310 = new Courses(list_test24);
            Courses ECE310L = new Courses(list_test25);
            Courses ECE315 = new Courses(list_test26);
            Courses ECE320 = new Courses(list_test27);
            Courses ECE320L = new Courses(list_test28);
            Courses ECE325 = new Courses(list_test29);
            Courses ECE325L = new Courses(list_test30);
            Courses ECE330 = new Courses(list_test31);
            Courses ECE341 = new Courses(list_test32);
            Courses ECE341L = new Courses(list_test33);
            Courses ECE343 = new Courses(list_test34);
            Courses ECE343L = new Courses(list_test35);
            Courses ECE405 = new Courses(list_test36);
            Courses ECE405L = new Courses(list_test37);
            Courses ECE407 = new Courses(list_test38);
            Courses ECE408 = new Courses(list_test39);
            Courses ECE408L = new Courses(list_test40);
            Courses ECE418 = new Courses(list_test41);
            Courses ECE419 = new Courses(list_test42);
            Courses ECE419L = new Courses(list_test43);
            Courses ECE422 = new Courses(list_test44);
            Courses ECE422L = new Courses(list_test45);
            Courses ECE424 = new Courses(list_test46);
            Courses ECE424L = new Courses(list_test47);
            Courses ECE425 = new Courses(list_test48);
            Courses ECE426 = new Courses(list_test49);
            Courses ECE426L = new Courses(list_test50);
            Courses ECE431 = new Courses(list_test51);
            Courses ECE431L = new Courses(list_test52);
            Courses ECE436 = new Courses(list_test53);
            Courses ECE448 = new Courses(list_test54);
            Courses ECE464 = new Courses(list_test55);
            Courses ECE468 = new Courses(list_test56);
            Courses ECE468L = new Courses(list_test57);
            Courses ECE490 = new Courses(list_test58);
            Courses ECE490L = new Courses(list_test59);
                        
            User Doe = new User(listB);
            User Torrence = new User(listC);
            User Kang = new User(listD);
            User Johnson = new User(listE);
            User Bement = new User(listF);
            User Rutherford = new User(listG);
            User Llamas = new User(listH);
            User Le = new User(listI);
            

            var reader3 = new StreamReader(File.OpenRead(@"C:\Users\Josue Llamas\Google Drive\Josue Llamas Projects\BMTech_ScheduleBuilder\winter 2016 database.csv"));//C:\Users\David\Documents\Visual Studio 2013\Projects\Users\UserLoadFile2.csv"));
            List<string> listQa = new List<string>();
            List<string> listQb = new List<string>();
            List<string> listQc = new List<string>();
            List<string> listQd = new List<string>();
            List<string> listQe = new List<string>();
            List<string> listQf = new List<string>();
            List<string> listQg = new List<string>();
            List<string> listQh = new List<string>();
            List<string> listQi = new List<string>();
            List<string> listQj = new List<string>();
            List<string> listQk = new List<string>();
            List<string> listQl = new List<string>();
            while (!reader3.EndOfStream)
            {
                var line = reader3.ReadLine();
                var attributes = line.Split(',');
                listQa.Add(attributes[0]);
                listQb.Add(attributes[1]);
                listQc.Add(attributes[2]);
                listQd.Add(attributes[3]);
                listQe.Add(attributes[4]);
                listQf.Add(attributes[5]);
                listQg.Add(attributes[6]);
                listQh.Add(attributes[7]);
                listQi.Add(attributes[8]);
                listQj.Add(attributes[9]);
                listQk.Add(attributes[10]);
                listQl.Add(attributes[11]);
            }

            Johnson.load_user();
            Console.WriteLine("Courses offered:");
            for (int z = 1; z < 60; z++)
            {
                Console.WriteLine("ECE {0}", listQa[z]);
            }
            Johnson.comparing(listQa, listQi, listQj, listQk, listQl, listQd, 1); //Johnson schedule generation
            
            Johnson.print_compare();
            Johnson.generate(listQa, listQc, listQe, listQf, listQg,listQh);
            Johnson.print_schedule();

            Llamas.load_user();
            Llamas.comparing(listQa, listQi, listQj, listQk, listQl, listQd, 0);//llamas schedule generation
            Llamas.print_compare();
            Llamas.generate(listQa, listQc, listQe, listQf, listQg, listQh);
            Llamas.print_schedule();


            Console.WriteLine("\nLoading a course:");
            ECE302.load_course();

            Kang.load_user();
            //Console.WriteLine("Please Enter a Student's ID");
            //studentID = Console.ReadLine();
            //Student.SearchStudent(studentID);
            //Student.loadStudent();
        }
        
    }
}
