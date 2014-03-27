package webviewsample;

import javafx.application.Application;
import javafx.scene.Scene;
import javafx.stage.Stage;
import javafx.scene.web.WebEngine;
import javafx.scene.web.WebView;

public class WebViewSample extends Application {

    public static void main(String[] args) {
        launch(args);
    }

    @Override
    public void start(Stage primaryStage) {
        WebView view = new WebView();
        WebEngine engine = view.getEngine();
        engine.load("http://octane-benchmark.googlecode.com/svn/latest/index.html");
        primaryStage.setScene(new Scene(view, 1024, 768));
        primaryStage.show();
    }
}
