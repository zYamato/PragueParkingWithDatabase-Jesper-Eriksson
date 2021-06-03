using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Praque_Parking_2._0;

namespace PragueParkingWithDatabase
{
    class UIAndMethods
    {
        public static string connectionString =
               @"Data Source=YAMATO;Initial Catalog=PragueParking;Integrated Security=True";

        public static void menu()
        {
            while (true)
            {
                Console.WriteLine("Main Menu!");
                Console.WriteLine("[1] Add vehicle");
                Console.WriteLine("[2] Retrive vehicle");
                Console.WriteLine("[3] Move vehicle");
                Console.WriteLine("[4] Search vehicle");
                Console.WriteLine("[5] Exit");
                ConsoleKey input = Console.ReadKey().Key;

                switch (input)
                {
                    case ConsoleKey.D1:
                    case ConsoleKey.NumPad1:
                        try
                        {
                            AddVehicle(); // execute add vehicle.
                        }
                        catch (Exception)
                        {
                            Console.WriteLine("File Cannot be found");
                        }

                        break;

                    case ConsoleKey.D2:
                    case ConsoleKey.NumPad2:
                        RetriveVehicle();
                        break;

                    case ConsoleKey.D3:
                    case ConsoleKey.NumPad3:
                        Console.Clear();
                        MoveVehicle();
                        break;

                    case ConsoleKey.D4:
                    case ConsoleKey.NumPad4:
                        SearchVehicle();
                        break;
                        /*
                    case ConsoleKey.D5:
                    case ConsoleKey.NumPad5:
                        
                        break;
                    case ConsoleKey.D6:
                    case ConsoleKey.NumPad6:
                        //PrintPhus();
                        break;
                        */

                    case ConsoleKey.D5:
                    case ConsoleKey.NumPad5:
                    case ConsoleKey.Escape:

                        Console.Clear();
                        Console.WriteLine("Are you sure you want to exit? y/n");
                        ConsoleKey exitYN = Console.ReadKey().Key;

                        if (exitYN == ConsoleKey.Y || exitYN == ConsoleKey.Escape)
                        {
                            Environment.Exit(0);
                        }
                        break;
                }
            }
        }
        public static bool AddVehicle()
        {
            string queryString =
                "[Add Vehicle] @RegNum,@ParkingSpotID,@VehicleTypeID";
            using(SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(queryString, connection);
                Console.Clear();
                Console.WriteLine("What kind of vehicle do you want to park?");
                Console.WriteLine("[1] Motorcycle");
                Console.WriteLine("[2] Car");
                ConsoleKey input = Console.ReadKey().Key;
                int vehicleTypeID = 1;

                switch (input)
                {
                    case ConsoleKey.D1:
                    case ConsoleKey.NumPad1:
                        vehicleTypeID = 1;
                        break;
                    case ConsoleKey.D2:
                    case ConsoleKey.NumPad2:
                        vehicleTypeID = 2;
                        break;
                }
                try
                {
                    command.Parameters.AddWithValue("@VehicleTypeID", vehicleTypeID);
                }
                catch(Exception Ex)
                {
                    Console.WriteLine(Ex);
                }
                Console.WriteLine("What is the registration number of the vehicle?");
                string regNum = Console.ReadLine();
                try
                {
                    command.Parameters.AddWithValue("@RegNum", regNum);
                }
                catch(Exception Ex)
                {
                    Console.WriteLine(Ex);
                }
                Console.WriteLine("Where do you want to park the Vehicle?");
                int parkingSpot = int.Parse(Console.ReadLine());
                try
                {
                    command.Parameters.AddWithValue("@ParkingSpotID", parkingSpot);
                    connection.Open();
                    command.ExecuteNonQuery();
                    if (vehicleTypeID == 1)
                    {
                        Vehicle newVehicle = new Vehicle(Vehicle.VehicleType.MC, regNum, parkingSpot, DateTime.Now);
                        Console.WriteLine(newVehicle.ToString() + "has benn added");
                        connection.Close();
                        return true;
                    }
                    else if (vehicleTypeID == 2)
                    {
                        Vehicle newVehicle = new Vehicle(Vehicle.VehicleType.CAR, regNum, parkingSpot, DateTime.Now);
                        Console.WriteLine(newVehicle.ToString() + " has been added");
                        connection.Close();
                        return true;
                    }
                }
                catch(Exception Ex)
                {
                    Console.WriteLine(Ex);
                }
              
                return false;
            }
        }
        public static bool RetriveVehicle()
        {
            Console.Clear();
            Console.WriteLine("Is The vehicle Leaving for free?");
            Console.WriteLine("[1] Yes");
            Console.WriteLine("[2] No");
            ConsoleKey input = Console.ReadKey().Key;

            switch (input)
            {
                case ConsoleKey.D1:
                case ConsoleKey.NumPad1:
                    string queryString =
                "[Vehicle Leaving Free]@RegNum";
                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        Console.Clear();
                        SqlCommand command = new SqlCommand(queryString, connection);
                        Console.WriteLine("What vehicle do you want to retrive?");
                        string regNum = Console.ReadLine();
                        try
                        {
                            command.Parameters.AddWithValue("@RegNum", regNum);
                            connection.Open();
                            command.ExecuteNonQuery();
                            Console.WriteLine("Vehicle with registration number " + regNum + " has been recived");
                            return true;
                        }
                        catch (Exception ex)
                        {
                            Console.WriteLine(ex);
                            return false;
                        }
                    }
                case ConsoleKey.D2:
                case ConsoleKey.NumPad2:

                     queryString =
                "[Vehicle Leaving] @RegNum";
                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        SqlCommand command = new SqlCommand(queryString, connection);
                        Console.WriteLine("What vehicle do you want to retrive?");
                        string regNum = Console.ReadLine();
                        decimal priceToPay = GetCurrentPrice(regNum);
                        try
                        {
                            command.Parameters.AddWithValue("@RegNum", regNum);
                            connection.Open();
                            command.ExecuteNonQuery();
                            Console.WriteLine("Vehicle with registration number " + regNum + " has been recived");
                            Console.WriteLine("Price To Pay: {0}", priceToPay);
                            return true;
                        }
                        catch (Exception ex)
                        {
                            Console.WriteLine(ex);
                            return false;
                        }
                    }
            }
            return false;
        }
        public static bool MoveVehicle()
        {
            string queryString =
                "[Move Vehicle]@RegNum, @ParkingSpotID";
            using(SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(queryString, connection);
                Console.WriteLine("What vehicle would you like to move?");
                string regNum = Console.ReadLine();
                try
                {
                    command.Parameters.AddWithValue("@RegNum", regNum);
                    return true;
                }
                catch(Exception Ex)
                {
                    Console.WriteLine(Ex);
                }
                int parkingSpotID = int.Parse(Console.ReadLine());
                try
                {
                    command.Parameters.AddWithValue("@ParkingSpotID", parkingSpotID);
                    connection.Open();
                    command.ExecuteNonQuery();
                    Console.WriteLine("Vehicle with registration number " + regNum + "has been moved to parkngspot" + parkingSpotID);
                    return true;
                }
                catch(Exception Ex)
                {
                    Console.WriteLine(Ex);
                    return false;
                }
            }

        }
        public static void SearchVehicle()
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand("[Where is Parked]@RegNum", connection);
                Console.Clear();
                Console.WriteLine("What is the registration number of the Vehicle?");
                string regNum = Console.ReadLine();

                try
                {
                    Console.Clear();
                    command.Parameters.AddWithValue("@RegNum", regNum);
                    decimal priceToPay = GetCurrentPrice(regNum);
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        Console.WriteLine("Parkingspot: {0}, Registrationnumber: {1}, Vehicletype: {2}, ArriveTime: {3}, Price To Pay: {4}", reader[0], reader[1], reader[2], reader[3], priceToPay);
                        Console.ReadLine();
                    }
                }
                catch(Exception Ex)
                {
                    Console.WriteLine(Ex);
                }
            }
        }
        public static decimal GetCurrentPrice(string regNum)
        {
            decimal priceToPay = 0;
            using(SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand("[Get Current Price]", connection);

                SqlParameter priceOutput = command.Parameters.Add("@PriceToPay", SqlDbType.Money);
                priceOutput.Direction = ParameterDirection.Output;

                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@RegNum", regNum);

                try
                {
                    connection.Open();
                    command.ExecuteReader();

                    priceToPay = (decimal)priceOutput.Value;
                }
                catch(Exception ex)
                {
                    Console.WriteLine(ex);
                }
            }
            return priceToPay;

        }
    }
}
