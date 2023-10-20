function capicua() {
  let capicuaArray = [];

  db.phones.find().forEach(function (doc) {
    let n = doc["components"]["number"].toString();

    for (i = 0; i < n.length / 2; i++) {
      if (n[i] != n[-1 - i]) {
        console.log(n, "false");
        continue;
      }
    }
    capicuaArray.push(n);
  });

  return capicuaArray
}
