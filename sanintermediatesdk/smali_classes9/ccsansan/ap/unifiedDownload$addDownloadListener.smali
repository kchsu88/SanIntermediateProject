.class final Lccsansan/ap/unifiedDownload$addDownloadListener;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/ap/unifiedDownload;->deleteDownItem(Lccsanandroid/content/Context;Lccsancom/san/xz/base/XzRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Lccsanandroid/content/Context;

.field final synthetic getDownloadingList:I

.field final synthetic removeDownloadListener:Lccsanandroidx/core/app/NotificationCompat$Builder;


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;Lccsanandroidx/core/app/NotificationCompat$Builder;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/ap/unifiedDownload$addDownloadListener;->addDownloadListener:Lccsanandroid/content/Context;

    iput-object p2, p0, Lccsansan/ap/unifiedDownload$addDownloadListener;->removeDownloadListener:Lccsanandroidx/core/app/NotificationCompat$Builder;

    iput p3, p0, Lccsansan/ap/unifiedDownload$addDownloadListener;->getDownloadingList:I

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 3

    .line 1
    iget-object v0, p0, Lccsansan/ap/unifiedDownload$addDownloadListener;->addDownloadListener:Lccsanandroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/NotificationManager;

    if-eqz v0, :cond_1

    .line 3
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 4
    const-string v1, "xzai"

    const-string v2, "XZ Notifications"

    invoke-static {v1, v2}, Lccsansan/bz/addDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/app/NotificationChannel;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lccsanandroid/app/NotificationManager;->createNotificationChannel(Lccsanandroid/app/NotificationChannel;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lccsansan/ap/unifiedDownload$addDownloadListener;->removeDownloadListener:Lccsanandroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Lccsanandroidx/core/app/NotificationCompat$Builder;->build()Lccsanandroid/app/Notification;

    move-result-object v0

    const/16 v1, 0x62

    .line 8
    iput v1, v0, Lccsanandroid/app/Notification;->flags:I

    .line 10
    iget-object v1, p0, Lccsansan/ap/unifiedDownload$addDownloadListener;->addDownloadListener:Lccsanandroid/content/Context;

    check-cast v1, Lccsansan/f/removeDownloadListener;

    iget v2, p0, Lccsansan/ap/unifiedDownload$addDownloadListener;->getDownloadingList:I

    invoke-virtual {v1, v2, v0}, Lccsanandroid/app/Service;->startForeground(ILccsanandroid/app/Notification;)V

    :cond_1
    return-void
.end method
