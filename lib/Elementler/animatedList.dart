import 'package:flutter/material.dart';

class Animatedlists extends StatefulWidget {
  const Animatedlists({super.key});

  @override
  State<Animatedlists> createState() => _AnimatedlistsState();
}

class _AnimatedlistsState extends State<Animatedlists> {
  final _items = [];
  final GlobalKey<AnimatedListState> _key = GlobalKey();

  void _addItem() {
    _items.insert(0, "Liste Elemanı ${_items.length + 1}");
    _key.currentState!.insertItem(0, duration: const Duration(seconds: 1));
  }

  void _removeItem(int index) {
    _key.currentState!.removeItem(index, (_, animation) {
      return SizeTransition(
          sizeFactor: animation,
          child: const Card(
            margin: EdgeInsets.all(10),
            color: Colors.amberAccent,
            child: ListTile(
              title: Text(
                "Silindi",
                style: TextStyle(fontSize: 24),
              ),
            ),
          ));
    }, duration: const Duration(milliseconds: 300));
    _items.removeAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          IconButton(
            onPressed: _addItem,
            icon: const Icon(Icons.add),
          ),
          Expanded(
              child: AnimatedList(
                  key: _key,
                  initialItemCount: 0,
                  padding: EdgeInsets.all(10),
                  itemBuilder: ((
                    context,
                    index,
                    animation,
                  ) {
                    return SizeTransition(
                      key: UniqueKey(),
                      sizeFactor: animation,
                      child: Card(
                        margin: EdgeInsets.all(10),
                        color: Colors.yellowAccent,
                        child: ListTile(
                            title: Text(
                              _items[index],
                              style: const TextStyle(fontSize: 24),
                            ),
                            trailing: IconButton(
                              icon: Icon(Icons.delete),
                              onPressed: () {
                                _removeItem(index);
                              },
                            )),
                      ),
                    );
                  })))
        ],
      ),
    );
  }
}
