.class final Lccsansan/ap/unifiedDownload$getDownloadingList;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/ap/unifiedDownload;->addDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/xz/base/XzRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic getDownloadingList:Lccsancom/san/xz/base/XzRecord;

.field final synthetic removeDownloadListener:Lccsanandroid/content/Context;


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;Lccsancom/san/xz/base/XzRecord;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/ap/unifiedDownload$getDownloadingList;->removeDownloadListener:Lccsanandroid/content/Context;

    iput-object p2, p0, Lccsansan/ap/unifiedDownload$getDownloadingList;->getDownloadingList:Lccsancom/san/xz/base/XzRecord;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 4

    .line 1
    iget-object v0, p0, Lccsansan/ap/unifiedDownload$getDownloadingList;->removeDownloadListener:Lccsanandroid/content/Context;

    check-cast v0, Lccsansan/f/removeDownloadListener;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsanandroid/app/Service;->stopForeground(Z)V

    .line 2
    iget-object v0, p0, Lccsansan/ap/unifiedDownload$getDownloadingList;->removeDownloadListener:Lccsanandroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lccsansan/ap/unifiedDownload$getDownloadingList;->getDownloadingList:Lccsancom/san/xz/base/XzRecord;

    invoke-virtual {v1}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/app/NotificationManager;->cancel(I)V

    .line 6
    :cond_0
    invoke-static {}, Lccsansan/ap/unifiedDownload;->removeDownloadListener()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/cs/unifiedDownload;

    .line 7
    iget-object v2, p0, Lccsansan/ap/unifiedDownload$getDownloadingList;->removeDownloadListener:Lccsanandroid/content/Context;

    invoke-static {}, Lccsansan/ap/unifiedDownload;->removeDownloadListener()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/san/xz/base/XzRecord;

    invoke-static {v2, v1}, Lccsansan/ap/unifiedDownload;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsancom/san/xz/base/XzRecord;)V

    goto :goto_0

    :cond_1
    return-void
.end method
