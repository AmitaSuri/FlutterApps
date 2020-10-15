import 'file:///C:/flutter/flutter_training/theming/bmi_theming_complete/lib/screens/result_screen.dart';
import 'package:bmi_calculator/widgets/bottom_button.dart';
import 'package:bmi_calculator/widgets/image_container.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_slider.dart';
import '../widgets/small_icon_button.dart';
import '../calculate_bmi.dart';

enum Gender {
  male,
  female,
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Gender _selectedGender = Gender.male;
  double _height = 120;
  double _weight = 70;
  String _userName = '';
  int _age = 26;

  void _genderChangedHandler(Gender gender) {
    setState(() {
      _selectedGender = gender;
    });
  }

  // Calculate BMI
  void _calculateBMIHandler() {
    //Create instance of CalculatBMI class which has the application logic
    CalculatBMI calc = CalculatBMI(height: _height, weight: _weight);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultScreen(
          userName: _userName,
          bmiResult: calc.getBMI(),
          resultText: calc.getResult(),
          interpretation: calc.getInterpretation(),
        ),
      ),
    );
  }

  // Builder method to create Textfield widget for name
  Widget _builderName() {
    return TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: "Name",
      ),
      onChanged: (String value) {
        setState(
          () {
            try {
              _userName = value;
            } catch (exception) {
              _userName = '';
            }
          },
        );
      },
    );
  }

  // Builder method to create Age Increment Decrement buttons
  Widget _builderAge() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text("Age(years)"),
        Row(
          children: <Widget>[
            //Reusable age button widget
            SmallIconButton(
              icon: Icons.remove,
              onTapHandler: () {
                setState(() {
                  _age--;
                });
              },
            ),
            Text("$_age"),
            //Reusable age button widget
            SmallIconButton(
              icon: Icons.add,
              onTapHandler: () {
                setState(() {
                  _age++;
                });
              },
            ),
          ],
        )
      ],
    );
  }

  Widget _builderHeight() {
    return CustomSlider(
      min: 60,
      max: 220,
      parameterValue: _height,
      parameterName: 'Height(cm)',
      onChangedHandler: (double newValue) {
        setState(() {
          _height = newValue;
        });
      },
    );
  }

  Widget _builderWeight() {
    return CustomSlider(
      min: 20,
      max: 120,
      parameterValue: _weight,
      parameterName: 'Weight(kg)',
      onChangedHandler: (double newValue) {
        setState(() {
          _weight = newValue;
        });
      },
    );
  }

  // Builder method to create Gender buttons
  Widget _builderGender() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("Gender"),
          Row(children: [
            RaisedButton(
              onPressed: () {
                _genderChangedHandler(Gender.male);
              },
              padding: EdgeInsets.all(10.0),
              highlightColor: Theme.of(context).primaryColorDark,
              highlightElevation: 5.0,
              child: Text("Male", style: Theme.of(context).textTheme.caption),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 2.0,
                  color: (_selectedGender == Gender.male)
                      ? Theme.of(context).accentColor
                      : Theme.of(context).primaryColor,
                ),
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(20.0),
                  right: Radius.circular(4.0),
                ),
              ),
            ),

           // Customizing at instance level
            RaisedButton(
              onPressed: () {
                _genderChangedHandler(Gender.female);
              },
              color: Theme.of(context).accentColor,
              padding: EdgeInsets.all(10.0),
              highlightColor: Theme.of(context).colorScheme.secondaryVariant,
              highlightElevation: 10.0,
              child: Text(
                "Female",
                style: Theme.of(context).textTheme.caption.copyWith(
                  color:  Theme.of(context).colorScheme.onSecondary,
                ),
              ),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 2.0,
                  color: (_selectedGender == Gender.female)
                      ? Theme.of(context).primaryColorDark
                      : Theme.of(context).accentColor,
                ),
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(4.0),
                  right: Radius.circular(20.0),
                ),
              ),
            ),
             ]),
        ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ImageContainer(),
                 Expanded(child: _builderName()),
                  SizedBox(height: 10.0),
                  Expanded(child: _builderGender()),
                  SizedBox(height: 10.0),
                  Expanded(
                    child: _builderAge(),
                  ),
                  SizedBox(height: 10.0),
                  //Widget to render height slider
                  Expanded(child: _builderHeight()),
                  SizedBox(height: 10.0),
                  //Widget to render weight slider
                  Expanded(
                    child: _builderWeight(),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
              left: 40.0,
              right: 40.0,
              bottom: 20.0,
            ),
            child: BottomButton(
              buttonTitle: 'CALCULATE',
              onPressedHandler: _calculateBMIHandler,
            ),
          ),
        ],
      ),
    );
  }
}
