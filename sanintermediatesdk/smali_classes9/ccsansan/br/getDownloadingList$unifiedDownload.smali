.class Lccsansan/br/getDownloadingList$unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/br/getDownloadingList;->onJsAlert(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lccsanandroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/br/getDownloadingList;

.field final synthetic unifiedDownload:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsansan/br/getDownloadingList;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/br/getDownloadingList$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/br/getDownloadingList;

    iput-object p2, p0, Lccsansan/br/getDownloadingList$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lccsansan/br/getDownloadingList$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/br/getDownloadingList;

    invoke-static {v0}, Lccsansan/br/getDownloadingList;->IncentiveDownloadUtils(Lccsansan/br/getDownloadingList;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsansan/br/getDownloadingList$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lccsanandroid/widget/Toast;->makeText(Lccsanandroid/content/Context;Ljava/lang/CharSequence;I)Lccsanandroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/widget/Toast;->show()V

    return-void
.end method
