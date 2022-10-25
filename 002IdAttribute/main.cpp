#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <omp.h>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url(u"qrc:/002IdAttribute/main.qml"_qs);
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);


    qDebug()<<"gnuc openmp"<<_OPENMP;

    int thread_count = omp_get_num_procs();

    qDebug()<<"thread count is : "<< thread_count;

    return app.exec();
}
