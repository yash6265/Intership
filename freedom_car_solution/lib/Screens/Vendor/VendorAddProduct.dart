
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

import '../../Common/colors.dart';
import '../../Common/style.dart';
class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  File? image;
  String? selectedvalue;
  bool visible = false;
  List<String>items =[
    "Sneakers", "Sandals", "Boots", "Oxford Shoe", "Loafer",
  ];
  List<Asset> images = [];
  List<File> selectedImages = []; // List of selected image
  final picker = ImagePicker();
  Future pickImage() async {
    final pickedFile = await picker.pickMultiImage(
        imageQuality: 100,
        maxHeight: 1000,
        maxWidth: 1000);
    List<XFile> xfilePick = pickedFile;

    if (xfilePick.isNotEmpty) {
      for (var i = 0; i < xfilePick.length; i++) {
        selectedImages.add(File(xfilePick[i].path));
      }
      setState(
            () { },
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Nothing is selected')));
    }
  }
  Future pickImageC() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);

      if(image == null) return;

      final imageTemp = File(image.path);

      setState(() => this.image = imageTemp);
    } on PlatformException catch(e) {
      print('Failed to pick image: $e');
    }
  }
  TextEditingController? _nameController;
  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
  }
  @override
  void dispose() {
    _nameController?.dispose();
    super.dispose();
  }
  TextEditingController ProductnameController = TextEditingController();
  TextEditingController ProductIDController = TextEditingController();
  TextEditingController ProductpriceController = TextEditingController();
  TextEditingController GSTController = TextEditingController();
  bool isvisible = false;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var Width = MediaQuery.of(context).size.width;
    var Height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(

          leading: InkWell(
              onTap: () => Get.back(),
              child: Icon(Icons.arrow_back_ios,color: Colors.black )
          ),
          backgroundColor: AppColors.primaryAppColor,
          automaticallyImplyLeading: true,
          elevation: 0,
          title: const Text("ADD PRODUCT",style: blbold20),
          centerTitle: true,
        ),

        body: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  DropdownButtonHideUnderline(
                      child:DropdownButton2(
                        items: items.map((item) =>DropdownMenuItem<String>(
                            value: item,
                            child:Text(item,style: bl40015,)) ).toList(),
                        value: selectedvalue,
                        hint: Text("Choose Catagory"),
                        onChanged: (value) {
                          setState(() {
                            selectedvalue = value as String?;
                          });
                        },

                        buttonStyleData: ButtonStyleData(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            width: Width,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(5),
                            )
                        ),
                      )
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: Height*0.07,
                    child: TextFormField(
                      validator: (value) {
                        if(value == isEmpty){
                          return 'enter the product name';
                        }
                        else{
                          return null;
                        }
                      },
                      controller:ProductnameController,
                      autofocus: false,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: AppColor)
                          ),
                          contentPadding: EdgeInsets.only(left: 13),
                          hintText: "Product Name ",
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
                          )
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: Height*0.07,
                    child: TextFormField(
                      validator: (value) {
                        if(value == isEmpty){
                          return 'enter the product name';
                        }
                        else{
                          return null;
                        }
                      },
                      controller:ProductIDController,
                      autofocus: false,
                      keyboardType: TextInputType.number,
                      decoration:  InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: AppColors.primaryAppColor)
                          ),
                          hintText: "Product ID",
                          contentPadding: EdgeInsets.only(left: 13),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),

                          )
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: Height*0.07,
                    child: TextFormField(
                      autofocus: false,
                      validator: (value) {
                        if(value == isEmpty){
                          return 'enter the product name';
                        }
                        else{
                          return null;
                        }
                      },
                      controller:ProductpriceController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.currency_rupee),
                          prefixIconConstraints: BoxConstraints.loose(Size.fromRadius(15)),
                          enabledBorder: OutlineInputBorder(
                            borderSide:BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: AppColors.primaryAppColor)
                          ),
                          hintText: "Product Price",
                          contentPadding: EdgeInsets.only(left: 13),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
                          )
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: Height*0.07,
                    child: TextFormField(
                      autofocus: false,
                      validator: (value) {
                        if(value == isEmpty){
                          return 'enter the product name';
                        }
                        else{
                          return null;
                        }
                      },
                      controller:GSTController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: AppColors.primaryAppColor)
                          ),
                          hintText: "GST Tax %",
                          contentPadding: EdgeInsets.only(left: 13),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
                          )
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 85,
                        height: 40,
                        // decoration: BoxDecoration(
                        //     border: Border.all()
                        // ),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4)))),
                            onPressed:() {
                              // isvisible =  !isvisible ;
                            },
                            child: Text("UK",)),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: 85,
                        height: 40,
                        // decoration: BoxDecoration(
                        //     border: Border.all()
                        // ),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(4))
                                )
                            ),
                            onPressed: (){}, child: Text("US")),
                      ),
                      const SizedBox(width: 10),

                    ],
                  ),
                  Visibility(
                    visible: isvisible,
                    child: Row(
                      children: [
                        Container(
                          width: 85,
                          height:40,
                          // decoration: BoxDecoration(
                          //     border: Border.all()
                          // ),
                          child: TextField(

                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                isDense: true,
                                enabledBorder: OutlineInputBorder(
                                  borderSide:BorderSide(color: Colors.black),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: AppColors.primaryAppColor)
                                ),
                                contentPadding: EdgeInsets.all(7),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(2)
                                )
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          width: 85,
                          height: 40,
                          // decoration: BoxDecoration(
                          //     border: Border.all()
                          // ),
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide:BorderSide(color: Colors.black),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: AppColors.primaryAppColor)
                                ),
                                isDense: true,
                                contentPadding:  EdgeInsets.all(7),
                                prefixIcon: Icon(Icons.currency_rupee,size: 15,),
                                prefixIconConstraints: BoxConstraints(maxWidth: 15),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(2)
                                )
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.primaryAppColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(4))
                                )
                            ),
                            onPressed: (){}, child: Text("+",))
                      ],
                    ),
                  ),

                  const SizedBox(height: 40),
                  InkWell(
                    onTap: (){
                      showDialog(context: context, builder: (context) {
                        return AlertDialog(
                            title: Text("Choose from option"),
                            actions: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Text("Gallary"),
                                      IconButton(onPressed: (){
                                        pickImage();
                                      }, icon:const Icon(Icons.insert_drive_file),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 20),
                                  Column(
                                    children: [
                                      Text("Camera"),
                                      IconButton(onPressed: (){
                                        pickImageC();
                                      }, icon:const Icon(Icons.camera_alt),

                                      ),
                                    ],
                                  ),

                                ],
                              ),
                            ]
                        );
                      },);
                    },
                    child: DottedBorder(
                        dashPattern: [5],
                        child: Container(
                          height: 90,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.image),
                              Text("Take picture upload")
                            ],
                          ),
                        )),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 300.0,
                    child: selectedImages.isEmpty
                        ?  Center(child: Text('Sorry nothing selected!!'))
                        : GridView.builder(
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: selectedImages.length,
                      gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Stack(
                          children: [
                            Card(
                              child: Center(
                                  child: kIsWeb
                                      ? Image.network(
                                      selectedImages[index].path)
                                      : Image.file(selectedImages[index])),
                            ),
                            Positioned(
                                child: InkWell(
                                    onTap: (){
                                      setState(() {
                                        selectedImages.remove(0);
                                      });
                                    },
                                    child: Icon(Icons.cancel)))
                          ],
                        );
                      },
                    ),
                  ),

                  const SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width*10,
                      child: ElevatedButton(

                        style: ElevatedButton.styleFrom(backgroundColor: AppColors.primaryAppColor, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                        onPressed: (){

                        }, child: const Text("ADD PRODUCT",),

                      ),
                    ),
                  ),




                ],
              ),
            ),
          ),
        )



    );
  }
}
