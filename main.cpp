#include "mainwindow.h"

#include <qgsapplication.h>

int main(int argc, char *argv[])
{
#ifdef Q_OS_WIN
    QApplication::setAttribute(Qt::AA_UseOpenGLES);
#endif

    QGuiApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QCoreApplication::setAttribute( Qt::AA_UseHighDpiPixmaps );

    QgsApplication a( argc, argv, true );
    MainWindow w;
    w.show();
    return a.exec();
}
