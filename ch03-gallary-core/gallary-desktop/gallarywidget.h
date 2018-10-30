#ifndef GALLARYWIDGET_H
#define GALLARYWIDGET_H

#include <QWidget>

namespace Ui {
class GallaryWidget;
}

class QItemSelectionModel;
class AlbumModel;
class PictureModel;
class ThumbnailProxyModel;

class GallaryWidget : public QWidget
{
    Q_OBJECT

public:
    explicit GallaryWidget(QWidget *parent = nullptr);
    ~GallaryWidget();

    void setAlbumModel(AlbumModel* albumModel);
    void setAlbumSelectionModel(QItemSelectionModel* albumSelectionModel);

    void setPictureModel(ThumbnailProxyModel* pictureModel);
    void setPictureSelectionModel(QItemSelectionModel* pictureSelectionModel);

signals:
    void pictureActivated(const QModelIndex& index);
private:
    Ui::GallaryWidget *ui;
};

#endif // GALLARYWIDGET_H
