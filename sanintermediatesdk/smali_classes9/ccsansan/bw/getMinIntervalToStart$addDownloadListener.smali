.class public Lccsansan/bw/getMinIntervalToStart$addDownloadListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/bw/getMinIntervalToStart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "addDownloadListener"
.end annotation


# static fields
.field private static addDownloadListener:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static declared-synchronized IncentiveDownloadUtils()Ljava/lang/String;
    .locals 2

    const-class v0, Lccsansan/bw/getMinIntervalToStart$addDownloadListener;

    monitor-enter v0

    :try_start_0
    const-string v1, "ro.miui.ui.version.code"

    .line 1
    invoke-static {v1}, Lccsansan/bw/getMinIntervalToStart;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 1
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized removeDownloadListener()Ljava/lang/String;
    .locals 3

    const-class v0, Lccsansan/bw/getMinIntervalToStart$addDownloadListener;

    monitor-enter v0

    :try_start_0
    const-string v1, "ro.miui.ui.version.name"

    .line 1
    invoke-static {v1}, Lccsansan/bw/getMinIntervalToStart;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-object v1

    .line 0
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized unifiedDownload()Z
    .locals 2

    const-class v0, Lccsansan/bw/getMinIntervalToStart$addDownloadListener;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lccsansan/bw/getMinIntervalToStart$addDownloadListener;->addDownloadListener:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    const-string v1, "MIUI"

    .line 2
    invoke-static {v1}, Lccsansan/bw/ActionTypeDownload;->getDownloadingList(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lccsansan/bw/getMinIntervalToStart$addDownloadListener;->addDownloadListener:Ljava/lang/Boolean;

    .line 4
    :cond_0
    sget-object v1, Lccsansan/bw/getMinIntervalToStart$addDownloadListener;->addDownloadListener:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 0
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
