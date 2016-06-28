using Gtk;

int main(string[] args) {
    Gtk.init(ref args);
    Gtk.Window window = new Gtk.Window();
    window.set_title("Hola Mundo");
    window.window_position = Gtk.WindowPosition.CENTER;
    window.set_default_size(300, 150);
    window.destroy.connect(Gtk.main_quit);
    Gtk.Label lbl_mensaje = new Gtk.Label("Hola Mundo");
    window.add(lbl_mensaje);
    window.show_all();
    Gtk.main();
    return 0;
}
