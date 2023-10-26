function capicua() {
  let capicuaArray = [];

  db.phones.find().forEach(function (doc) {
    let n = doc["components"]["number"].toString();

    for (i = 0; i < Math.floor(n.length / 2); i++) {
      if (n[i] != n[n.length - i - 1]) {
        break;
      }
      if (i == Math.floor(n.length / 2) - 1) {
        capicuaArray.push(n);
      }
    }
  });

  return capicuaArray;
}
