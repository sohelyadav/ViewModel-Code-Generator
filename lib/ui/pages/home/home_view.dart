import 'package:flutter/material.dart';
import 'package:viewmodelcodegen/ui/components/custom_button.dart';
import 'package:viewmodelcodegen/utils/color.dart';
import 'package:viewmodelcodegen/utils/demins.dart';
import 'package:viewmodelcodegen/utils/themes.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to ViewModel Code Gen"),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(flex: 1, child: _buildEditor(context)),
          Expanded(
            flex: 1,
            child: Container(
              height: screenHeight,
              width: screenWidth,
              color: Colors.black45,
            ),
          )
        ],
      ),
    );
  }
  Widget _buildEditor(BuildContext context) {
    final parentHeight = MediaQuery.of(context).size.height;
    final parentWidth = MediaQuery.of(context).size.width;
    return Container(
      height: parentHeight,
      width: parentWidth,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(kAppPadding),
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: TextFormField(
                          maxLines: 1,
                          decoration: InputDecoration(
                            counterText: '',
                            labelText: "Class Name",
                          ),
                          style: TextStyle(color: kEditTextColor),
                          validator: (input) =>
                              input.length > 0 ? null : "Invalid Class Name",
                          onSaved: (input) {},
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: TextFormField(
                          maxLines: 1,
                          maxLength: 6,
                          decoration: InputDecoration(
                            counterText: '',
                            labelText: "Pin Code",
                          ),
                          validator: (input) =>
                              input.length == 6 ? null : "Invalid PinCode",
                          onSaved: (input) {},
                          style: TextStyle(color: kEditTextColor),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: TextFormField(
                          maxLines: 1,
                          maxLength: 10,
                          decoration: InputDecoration(
                            counterText: '',
                            labelText: "WhatsApp Number",
                          ),
                          validator: (input) =>
                              input.length == 10 ? null : "Invalid Number",
                          onSaved: (input) {},
                          style: TextStyle(color: kEditTextColor),
                        ),
                      ),
                      SizedBox(
                        height: 24.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          CustomButton(
            width: parentWidth,
            child: Text(
              "GENERATE CODE",
              style: appTheme.textTheme.button,
            ),
            onPressed: () {
              if (!_formKey.currentState.validate()) {
                return;
              }
              _formKey.currentState.save();
            },
          ),
        ],
      ),
    );
  }
}
