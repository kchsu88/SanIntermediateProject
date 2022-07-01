.class final Lccsancom/san/mads/webview/getDownloadStatusByUrl$removeDownloadListener;
.super Lccsanandroid/webkit/WebChromeClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mads/webview/getDownloadStatusByUrl;->removeDownloadListener(Lccsanandroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsanandroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsAlert(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lccsanandroid/webkit/JsResult;)Z
    .locals 0

    .line 1
    invoke-virtual {p4}, Lccsanandroid/webkit/JsResult;->confirm()V

    const/4 p1, 0x1

    return p1
.end method

.method public onJsBeforeUnload(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lccsanandroid/webkit/JsResult;)Z
    .locals 0

    .line 1
    invoke-virtual {p4}, Lccsanandroid/webkit/JsResult;->confirm()V

    const/4 p1, 0x1

    return p1
.end method

.method public onJsConfirm(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lccsanandroid/webkit/JsResult;)Z
    .locals 0

    .line 1
    invoke-virtual {p4}, Lccsanandroid/webkit/JsResult;->confirm()V

    const/4 p1, 0x1

    return p1
.end method

.method public onJsPrompt(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsanandroid/webkit/JsPromptResult;)Z
    .locals 0

    .line 1
    invoke-virtual {p5}, Lccsanandroid/webkit/JsPromptResult;->confirm()V

    const/4 p1, 0x1

    return p1
.end method
