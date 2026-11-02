from qtpy.QtCore import QStandardPaths


def main() -> None:
    QStandardPaths.setTestModeEnabled(True)

    from spektrafilm_gui.persistence import clear_saved_default_gui_state

    clear_saved_default_gui_state()

    from spektrafilm_gui.app import main as run_app

    run_app()


if __name__ == "__main__":
    main()
