class Libro {
  String id = '';
  String titolo = '';
  String autori = '';
  String descrizione = '';
  String editore = '';
  String immagineCopertina = '';

  Libro(this.id, this.titolo, this.autori, this.descrizione, this.editore,
      this.immagineCopertina);

  Libro.FromMap(Map<String, dynamic> mappa) {
    this.id = mappa['id'];
    this.titolo = mappa['volumeInfo']['title'];
    this.autori = (mappa['volumeInfo']['authors'] == null)
        ? 'Non disponibile'
        : mappa['volumeInfo']['authors'].toString();
    this.descrizione = (mappa['volumeInfo']['description'] == null)
        ? 'Descrizione non disponibile'
        : mappa['volumeInfo']['description'].toString();
    this.editore = (mappa['volumeInfo']['publisher'] == null)
        ? 'Non disponibile'
        : mappa['volumeInfo']['publisher'].toString();
    try {
      this.immagineCopertina = (mappa['volumeInfo']['imageLinks']['smallThumbnail'] == null)
          ? 'https://www.iisgaeaulenti.it/wp-content/uploads/2016/09/libri-di-testo.jpg'
          : mappa['volumeInfo']['imageLinks']['smallThumbnail'].toString();
    }
    catch (errore) {
      this.immagineCopertina = 'https://www.iisgaeaulenti.it/wp-content/uploads/2016/09/libri-di-testo.jpg';
    }

  }
}
