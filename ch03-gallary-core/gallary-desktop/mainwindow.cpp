#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QItemSelectionModel>

#include "gallarywidget.h"
#include "picturewidget.h"
#include "albummodel.h"
#include "picturemodel.h"
#include "thumbnailproxymodel.h"

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow),
    mGallaryWidget(new GallaryWidget(this)),
       mPictureWidget(new PictureWidget(this)),
       mStackedWidget(new QStackedWidget(this))
{
    ui->setupUi(this);
    AlbumModel* albumModel = new AlbumModel(this);
    QItemSelectionModel* albumSelectionModel = new QItemSelectionModel(albumModel, this);
    mGallaryWidget->setAlbumModel(albumModel);
    mGallaryWidget->setAlbumSelectionModel(albumSelectionModel);

    PictureModel* pictureModel = new PictureModel(*albumModel, this);
    ThumbnailProxyModel* thumbnailModel = new ThumbnailProxyModel(this);
    thumbnailModel->setSourceModel(pictureModel);

    QItemSelectionModel* pictureSelectionModel = new QItemSelectionModel(thumbnailModel, this);
    mGallaryWidget->setPictureModel(thumbnailModel);
    mGallaryWidget->setPictureSelectionModel(pictureSelectionModel);
    mPictureWidget->setModel(thumbnailModel);
    mPictureWidget->setSelectionModel(pictureSelectionModel);

    connect(mGallaryWidget, &GallaryWidget::pictureActivated,
            this, &MainWindow::displayPicture);

    connect(mPictureWidget, &PictureWidget::backToGallery,
            this, &MainWindow::displayGallary);

    mStackedWidget->addWidget(mGallaryWidget);
    mStackedWidget->addWidget(mPictureWidget);
    displayGallary();

    setCentralWidget(mStackedWidget);
}

MainWindow::~MainWindow()
{
    delete ui;
}


void MainWindow::displayGallary()
{
    mStackedWidget->setCurrentWidget(mGallaryWidget);
}

void MainWindow::displayPicture(const QModelIndex& /*index*/)
{
    mStackedWidget->setCurrentWidget(mPictureWidget);

}
