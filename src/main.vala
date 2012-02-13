using Gtk;

int main (string[] args) {
    Gtk.init (ref args);

    var window = new SyncSample1 ();
    window.show_all ();

    var window2 = new SyncSample2 ();
    window2.show_all ();

    Gtk.main ();
    return 0;
}
