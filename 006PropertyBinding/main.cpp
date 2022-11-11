#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickView>
#include <QLoggingCategory>

int main(int argc, char *argv[])
{


    QGuiApplication app(argc, argv);

    QLoggingCategory::setFilterRules("*.debug=true");
    //QLoggingCategory::setFilterRules("qt.qml.*=true");

    QQmlApplicationEngine engine;
    const QUrl url(u"qrc:/006PropertyBinding/main.qml"_qs);
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    /*
    QQuickView view;
    view.setSource(QUrl(u"qrc:/006PropertyBinding/main.qml"_qs));
    view.setResizeMode(QQuickView::SizeRootObjectToView);
    //view.setResizeMode(QQuickView::SizeViewToRootObject);
    view.show();
*/
    //QLoggingCategory::setFilterRules(QStringLiteral("qt.qml.binding.removal.info=true "));

    return app.exec();
}
