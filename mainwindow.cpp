#include "mainwindow.h"
#include <QVBoxLayout>

#include "QGISVisualizationWidget.h"

MainWindow::MainWindow(QWidget *parent): QMainWindow(parent)
{

    auto theVisualizationWidget = new QGISVisualizationWidget(this);

    this->setCentralWidget(theVisualizationWidget);

//    QVBoxLayout* mainLayout = new QVBoxLayout(this);

//    mainLayout->addWidget(theVisualizationWidget);

}

MainWindow::~MainWindow()
{
   // delete ui;
}

