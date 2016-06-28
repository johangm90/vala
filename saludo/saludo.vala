using Gtk;

class Saludo : Gtk.Window {
    private Gtk.Entry txt_nombre;
    private Gtk.Label lbl_saludo;
    public Saludo () {
        this.set_title("Saludo");
        this.window_position = Gtk.WindowPosition.CENTER;
        this.set_default_size(400, 150);
        this.border_width = 10;
        this.destroy.connect(Gtk.main_quit);
        Gtk.Box main_box = new Gtk.Box(Gtk.Orientation.VERTICAL, 0);
        Gtk.Box top_box = new Gtk.Box(Gtk.Orientation.HORIZONTAL, 10);
        Gtk.Box bot_box = new Gtk.Box(Gtk.Orientation.VERTICAL, 0);
        txt_nombre = new Gtk.Entry();
        Gtk.Button btn_saludar = new Gtk.Button.with_label("Saludar");
        lbl_saludo = new Gtk.Label("");
        main_box.pack_start(top_box, false, false, 0);
        main_box.pack_start(bot_box, true, true, 0);
        top_box.pack_start(txt_nombre, true, true, 0);
        top_box.pack_start(btn_saludar, false, false, 0);
        bot_box.pack_start(lbl_saludo, true, true, 0);
        btn_saludar.clicked.connect(saludar);
        this.add(main_box);
        this.show_all();
    }

    public void saludar() {
        string nombre = txt_nombre.get_text();
        lbl_saludo.set_text(@"Hola $nombre Bienvenido al magico mundo de Vala");
    }
}

int main(string[] args) {
    Gtk.init(ref args);
    new Saludo();
    Gtk.main();
    return 0;
}
