.class Lccsancom/san/mads/webview/WebViewActivity$addDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mads/webview/WebViewActivity;->addDownloadListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Lccsancom/san/mads/webview/WebViewActivity;


# direct methods
.method constructor <init>(Lccsancom/san/mads/webview/WebViewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/webview/WebViewActivity$addDownloadListener;->addDownloadListener:Lccsancom/san/mads/webview/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lccsancom/san/mads/webview/WebViewActivity$addDownloadListener;->addDownloadListener:Lccsancom/san/mads/webview/WebViewActivity;

    invoke-virtual {p1}, Lccsanandroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method
