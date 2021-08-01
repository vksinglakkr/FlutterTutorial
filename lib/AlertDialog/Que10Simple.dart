import 'package:flutter/material.dart';

class Que10Simple extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Dialog Box'),
      ),
      body: Center(
        child: ////// Simple Dialog.
            ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.red),
          onPressed: () {
            showDialog<String>(
              context: context,
              builder: (BuildContext context) => SimpleDialog(
                title: const Text('Dialog Title'),
                children: <Widget>[
                  ListTile(
                    leading: const Icon(Icons.account_circle),
                    title: const Text('diokrk@gov.in'),
                    onTap: () => Navigator.pop(context, 'diokrk@gov.in'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.account_circle),
                    title: const Text('vksinglakkr@gmail.com'),
                    onTap: () =>
                        Navigator.pop(context, 'vksinglakkr@gmail.com'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.add_circle),
                    title: const Text('Add account'),
                    onTap: () => Navigator.pop(context, 'Add account'),
                  ),
                ],
              ),
            ).then((returnVal) {
              if (returnVal != null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('You clicked: $returnVal'),
                    action: SnackBarAction(label: 'OK', onPressed: () {}),
                  ),
                );
              }
            });
          },
          child: const Text('Simple dialog'),
        ),
      ),
    );
  }
}
