.class final Lccsansan/ap/unifiedDownload$removeDownloadListener;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/ap/unifiedDownload;->addDownloadListener(Lccsanandroid/content/Context;Lccsansan/cs/unifiedDownload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Lccsansan/cs/unifiedDownload;

.field final synthetic unifiedDownload:Lccsanandroid/content/Context;


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;Lccsansan/cs/unifiedDownload;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/ap/unifiedDownload$removeDownloadListener;->unifiedDownload:Lccsanandroid/content/Context;

    iput-object p2, p0, Lccsansan/ap/unifiedDownload$removeDownloadListener;->addDownloadListener:Lccsansan/cs/unifiedDownload;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 3

    .line 1
    iget-object v0, p0, Lccsansan/ap/unifiedDownload$removeDownloadListener;->unifiedDownload:Lccsanandroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/NotificationManager;

    .line 2
    iget-object v1, p0, Lccsansan/ap/unifiedDownload$removeDownloadListener;->addDownloadListener:Lccsansan/cs/unifiedDownload;

    invoke-static {v1}, Lccsansan/ap/unifiedDownload;->getDownloadingList(Lccsansan/cs/unifiedDownload;)I

    move-result v1

    if-eqz v0, :cond_0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Lccsanandroid/app/NotificationManager;->cancel(I)V

    :cond_0
    return-void
.end method
