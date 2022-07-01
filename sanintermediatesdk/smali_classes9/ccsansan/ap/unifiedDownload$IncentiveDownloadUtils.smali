.class final Lccsansan/ap/unifiedDownload$IncentiveDownloadUtils;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/ap/unifiedDownload;->getDownloadingRecordByUrl(Lccsanandroid/content/Context;Lccsancom/san/xz/base/XzRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsanandroidx/core/app/NotificationCompat$Builder;

.field final synthetic getDownloadingList:Lccsanandroid/content/Context;

.field final synthetic removeDownloadListener:I


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;ILccsanandroidx/core/app/NotificationCompat$Builder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/ap/unifiedDownload$IncentiveDownloadUtils;->getDownloadingList:Lccsanandroid/content/Context;

    iput p2, p0, Lccsansan/ap/unifiedDownload$IncentiveDownloadUtils;->removeDownloadListener:I

    iput-object p3, p0, Lccsansan/ap/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsanandroidx/core/app/NotificationCompat$Builder;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 3

    .line 1
    iget-object v0, p0, Lccsansan/ap/unifiedDownload$IncentiveDownloadUtils;->getDownloadingList:Lccsanandroid/content/Context;

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

    .line 8
    :cond_0
    iget v1, p0, Lccsansan/ap/unifiedDownload$IncentiveDownloadUtils;->removeDownloadListener:I

    iget-object v2, p0, Lccsansan/ap/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsanandroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Lccsanandroidx/core/app/NotificationCompat$Builder;->build()Lccsanandroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/app/NotificationManager;->notify(ILccsanandroid/app/Notification;)V

    :cond_1
    return-void
.end method
