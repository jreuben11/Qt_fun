#include "gallarywidget.h"
#include "ui_gallarywidget.h"


#include <QItemSelectionModel>

GallaryWidget::GallaryWidget(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::GallaryWidget)
{
    ui->setupUi(this);
    ui->albumListWidget->setMaximumWidth(250);
    connect(ui->albumWidget, &AlbumWidget::pictureActivated, this, &GallaryWidget::pictureActivated);
}

GallaryWidget::~GallaryWidget()
{
    delete ui;
}

void GallaryWidget::setAlbumModel(AlbumModel* albumModel)
{
    ui->albumListWidget->setModel(albumModel);
    ui->albumWidget->setAlbumModel(albumModel);
}

void GallaryWidget::setAlbumSelectionModel(QItemSelectionModel* albumSelectionModel)
{
    ui->albumListWidget->setSelectionModel(albumSelectionModel);
    ui->albumWidget->setAlbumSelectionModel(albumSelectionModel);
}

void GallaryWidget::setPictureModel(ThumbnailProxyModel* pictureModel)
{
    ui->albumWidget->setPictureModel(pictureModel);
}

void GallaryWidget::setPictureSelectionModel(QItemSelectionModel* pictureSelectionModel)
{
    ui->albumWidget->setPictureSelectionModel(pictureSelectionModel);
}
