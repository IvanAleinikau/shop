import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/core/bloc/bloc_vinyl_record/vinyl_record_bloc.dart';
import 'package:shop/core/bloc/bloc_vinyl_record/vinyl_record_event.dart';
import 'package:shop/core/bloc/bloc_vinyl_record/vinyl_record_state.dart';
import 'package:shop/core/localization/app_localization.dart';

class MakeVinylRecord extends StatelessWidget {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _author = TextEditingController();
  final TextEditingController _year = TextEditingController();
  final TextEditingController _description = TextEditingController();
  final TextEditingController _cost = TextEditingController();
  final TextEditingController _image = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<VinylRecordBloc>(
      create: (context) => VinylRecordBloc(),
      child: BlocBuilder<VinylRecordBloc, VinylRecordState>(
        builder: (context, state) {
          return AlertDialog(
            backgroundColor: Colors.grey.shade200,
            title: Text(AppLocalization.of(context)!.addVinylRecord),
            content: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: _name,
                    decoration: InputDecoration(
                      labelText: AppLocalization.of(context)!.name,
                      hintText: AppLocalization.of(context)!.enterName,
                    ),
                  ),
                  TextField(
                    controller: _author,
                    decoration: InputDecoration(
                      labelText: AppLocalization.of(context)!.author,
                      hintText: AppLocalization.of(context)!.enterAuthor,
                    ),
                  ),
                  TextField(
                    controller: _year,
                    decoration: InputDecoration(
                      labelText: AppLocalization.of(context)!.year,
                      hintText: AppLocalization.of(context)!.enterYear,
                    ),
                  ),
                  TextField(
                    controller: _description,
                    decoration: InputDecoration(
                      labelText: AppLocalization.of(context)!.description,
                      hintText: AppLocalization.of(context)!.enterDescription,
                    ),
                  ),
                  TextField(
                    controller: _cost,
                    decoration: InputDecoration(
                      labelText: AppLocalization.of(context)!.cost,
                      hintText: AppLocalization.of(context)!.enterCost,
                    ),
                  ),
                  TextField(
                    controller: _image,
                    decoration: InputDecoration(
                      labelText: AppLocalization.of(context)!.imageNumber,
                      hintText: AppLocalization.of(context)!.enterImage,
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(AppLocalization.of(context)!.cancel),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.red,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  BlocProvider.of<VinylRecordBloc>(context).add(
                    CreateVinylRecord(
                      name: _name.text.trim(),
                      author: _author.text.trim(),
                      year: _year.text.trim(),
                      description: _description.text.trim(),
                      cost: _cost.text.trim(),
                      image: _image.text.trim(),
                    ),
                  );
                  _name.text = '';
                  _author.text = '';
                  _year.text = '';
                  _description.text = '';
                  _cost.text = '';
                  _image.text = '';
                  Navigator.of(context).pop();
                },
                child: Text(AppLocalization.of(context)!.add),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.blue,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
