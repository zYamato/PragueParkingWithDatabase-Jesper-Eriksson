using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace Praque_Parking_2._0
{
    public class Vehicle
    {
        public static string regNum;
        public static int parkingSpotID;

        public enum VehicleType
        {
            CAR, MC, EMPTY
        }

        public Vehicle()
        {
        }

        public Vehicle(VehicleType type, string regNum, int parkingSpotID, DateTime dateAdded)
        {
            this.Type = type;
            this.RegNum = regNum;
            this.ParkingSpotID = parkingSpotID;
            this.DateAdded = dateAdded;
        }
        public string RegNum { get; }
        public DateTime DateAdded { get; }
        public VehicleType Type { get; }
        public int ParkingSpotID { get; }

        public override string ToString()
        {
            return Type + "|" + RegNum + "|" + DateAdded;
        }
    }
}
