import 'package:flutter/material.dart';import 'package:intl/intl.dart';import 'package:note_pulse/Core/Resources/icon.dart';import 'package:note_pulse/Core/Resources/string.dart';import '../../../../../Core/Widgets/custom_text_form_field.dart';class FormAddNote extends StatefulWidget {  final TextEditingController time;  final TextEditingController date;  final TextEditingController name;  final TextEditingController note;  final dynamic ketForm;  const FormAddNote(      {super.key,      required this.time,      required this.date,      required this.name,      required this.note,      this.ketForm});  @override  State<FormAddNote> createState() => _FormAddNoteState();}class _FormAddNoteState extends State<FormAddNote>    with SingleTickerProviderStateMixin {  late AnimationController _controller;  @override  void initState() {    super.initState();    _controller = AnimationController(vsync: this);  }  @override  void dispose() {    _controller.dispose();    super.dispose();  }  @override  Widget build(BuildContext context) {    return SingleChildScrollView(        child: Form(      key: widget.ketForm,      child: Padding(        padding: const EdgeInsets.only(          bottom: 20,          right: 20,          left: 20,        ),        child: Column(          mainAxisSize: MainAxisSize.min,          children: [            Padding(              padding: const EdgeInsets.all(8.0),              child: Row(                children: [                  Expanded(                    child: DefaultTextFormField(                        text: AppStrings.time,                        type: TextInputType.none,                        tap: () {                          showTimePicker(                                  context: context,                                  initialTime: TimeOfDay.now())                              .then((value) {                            widget.time.text =                                value!.format(context).toString();                          });                        },                        controller: widget.time,                        prefix: AppIcons.iconClock,                        inputValidator: (value) {                          if (value!.isEmpty) {                            return AppStrings.timeValidate;                          }                          return null;                        }),                  ),                  Expanded(                    child: DefaultTextFormField(                        text: AppStrings.date,                        type: TextInputType.none,                        tap: () {                          showDatePicker(                                  context: context,                                  initialDate: DateTime.now(),                                  firstDate: DateTime.now(),                                  lastDate: DateTime(2100))                              .then((value) {                            widget.date.text =                                DateFormat('yyyy-MM-dd').format(value!);                          });                        },                        controller: widget.date,                        prefix: AppIcons.iconDate,                        inputValidator: (value) {                          if (value!.isEmpty) {                            return AppStrings.dateValidate;                          }                          return null;                        }),                  ),                ],              ),            ),            DefaultTextFormField(                title: true,                text: AppStrings.title,                type: TextInputType.name,                controller: widget.name,                prefix: AppIcons.iconTitle,                inputValidator: (value) {                  if (value!.isEmpty) {                    return AppStrings.titleValidate;                  }                  return null;                }),            const SizedBox(              height: 10,            ),            DefaultTextFormField(                maxLine: 8,                text: AppStrings.description,                type: TextInputType.text,                controller: widget.note,                inputValidator: (value) {                  if (value!.isEmpty) {                    return AppStrings.descriptionValidate;                  }                  return null;                }),          ],        ),      ),    ));  }}