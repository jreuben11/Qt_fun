#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QStackedWidget>

namespace Ui {
class MainWindow;
}
class GallaryWidget;
class PictureWidget;

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

public slots:
    void displayGallary();
    void displayPicture(const QModelIndex& index);

private:
    Ui::MainWindow *ui;
    GallaryWidget* mGallaryWidget;
    PictureWidget* mPictureWidget;
    QStackedWidget* mStackedWidget;
};

#endif // MAINWINDOW_H
