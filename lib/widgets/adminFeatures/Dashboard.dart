import 'package:flutter/material.dart';
import 'package:waste_management/constants/theming.dart';
import 'package:waste_management/models/vehicle.dart';
import 'package:waste_management/widgets/adminWidgets/vehicles.dart';

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({super.key});

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  List<Vehicle> vehicles = [
    Vehicle(
      vehicleNumber: "ABC1234",
      vehicleType: "Truck",
      capacity: 100,
      landfillName: "City Landfill",
      unloadedCost: 50.0,
      loadedCost: 100.0,
    ),
    Vehicle(
      vehicleNumber: "XYZ4564",
      vehicleType: "Van",
      capacity: 50,
      landfillName: "County Landfill",
      unloadedCost: 40.0,
      loadedCost: 80.0,
    ),
    Vehicle(
      vehicleNumber: "DEF7894",
      vehicleType: "Pickup",
      capacity: 30,
      landfillName: "Town Landfill",
      unloadedCost: 30.0,
      loadedCost: 60.0,
    ),
    Vehicle(
      vehicleNumber: "GHI012",
      vehicleType: "Truck",
      capacity: 120,
      landfillName: "City Landfill",
      unloadedCost: 60.0,
      loadedCost: 110.0,
    ),
    Vehicle(
      vehicleNumber: "JKL345",
      vehicleType: "Van",
      capacity: 60,
      landfillName: "County Landfill",
      unloadedCost: 45.0,
      loadedCost: 85.0,
    ),
    Vehicle(
      vehicleNumber: "MNO678",
      vehicleType: "Pickup",
      capacity: 35,
      landfillName: "Town Landfill",
      unloadedCost: 35.0,
      loadedCost: 65.0,
    ),
    Vehicle(
      vehicleNumber: "PQR901",
      vehicleType: "Truck",
      capacity: 110,
      landfillName: "City Landfill",
      unloadedCost: 55.0,
      loadedCost: 105.0,
    ),
    Vehicle(
      vehicleNumber: "STU234",
      vehicleType: "Van",
      capacity: 55,
      landfillName: "County Landfill",
      unloadedCost: 42.0,
      loadedCost: 82.0,
    ),
    Vehicle(
      vehicleNumber: "VWX567",
      vehicleType: "Pickup",
      capacity: 40,
      landfillName: "Town Landfill",
      unloadedCost: 38.0,
      loadedCost: 68.0,
    ),
    Vehicle(
      vehicleNumber: "YZA890",
      vehicleType: "Truck",
      capacity: 130,
      landfillName: "City Landfill",
      unloadedCost: 65.0,
      loadedCost: 115.0,
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: const TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.fire_truck_rounded, color: kPrimaryLightColor,),
                  ),
                  Tab(
                    icon: Icon(Icons.factory, color: kPrimaryLightColor),
                  ),
                  Tab(
                    icon: Icon(Icons.factory_outlined, color: kPrimaryLightColor),
                  ),
                ]),
          ),
          body: TabBarView(
    children: [
      Container(
    child: VehicleDataTable(vehicles: vehicles,)
    ),
    Container(
    child: Center(
    child: Text("This is STS"),
    ),
    ),
    Container(
    child: Center(
    child: Text("This is Landfill"),
    ),
    ),
    ],
    )
        )
    );
  }
}
