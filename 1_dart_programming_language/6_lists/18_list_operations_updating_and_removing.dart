void main() {
  // List Operations: Updating
  var list = [10, 20, 30];
  list[1] = 99;
  print(list);
  // [10, 99, 30]
  list.replaceRange(0, 2, [5, 6]);
  /*  
    Parameter	Meaning
      - start	Starting index
      - end	Ending index (NOT included)
      - newValues:	New elements to insert
  */
  print(list);
  // [5, 6, 30]

  // Update Using setAll(): Replace values starting from an index.
  List<int> nums = [1, 2, 3, 4, 5];
  nums.setAll(1, [10, 20, 30]);

  List<int> nums1 = [10, 20, 30];

  List<int> updated = nums1.map((e) => e * 2).toList();
  print(updated);

  List<int> removeList = [1, 2, 3, 4];
  removeList.remove(3);
  print(removeList);
  removeList.removeAt(0);
  print(removeList);
}
