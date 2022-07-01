.class public Lccsansan/ao/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static getDownloadingList:Lccsansan/ao/getDownloadingList;


# instance fields
.field private removeDownloadListener:Lccsanandroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IncentiveDownloadUtils()Lccsansan/ao/getDownloadingList;
    .locals 2

    .line 1
    sget-object v0, Lccsansan/ao/getDownloadingList;->getDownloadingList:Lccsansan/ao/getDownloadingList;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lccsansan/ao/getDownloadingList;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lccsansan/ao/getDownloadingList;->getDownloadingList:Lccsansan/ao/getDownloadingList;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lccsansan/ao/getDownloadingList;

    invoke-direct {v1}, Lccsansan/ao/getDownloadingList;-><init>()V

    sput-object v1, Lccsansan/ao/getDownloadingList;->getDownloadingList:Lccsansan/ao/getDownloadingList;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lccsansan/ao/getDownloadingList;->getDownloadingList:Lccsansan/ao/getDownloadingList;

    return-object v0
.end method


# virtual methods
.method public getDownloadingList(Lccsanandroid/content/Context;)V
    .locals 1

    .line 9
    :try_start_0
    iget-object v0, p0, Lccsansan/ao/getDownloadingList;->removeDownloadListener:Lccsanandroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const-string v0, "san_silent"

    .line 10
    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadingRecordByUrl(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lccsanandroid/media/MediaPlayer;->create(Lccsanandroid/content/Context;I)Lccsanandroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lccsansan/ao/getDownloadingList;->removeDownloadListener:Lccsanandroid/media/MediaPlayer;

    .line 12
    :cond_0
    iget-object p1, p0, Lccsansan/ao/getDownloadingList;->removeDownloadListener:Lccsanandroid/media/MediaPlayer;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 13
    invoke-virtual {p1, v0}, Lccsanandroid/media/MediaPlayer;->setLooping(Z)V

    .line 14
    iget-object p1, p0, Lccsansan/ao/getDownloadingList;->removeDownloadListener:Lccsanandroid/media/MediaPlayer;

    invoke-virtual {p1}, Lccsanandroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 17
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public removeDownloadListener()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/ao/getDownloadingList;->removeDownloadListener:Lccsanandroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lccsanandroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lccsansan/ao/getDownloadingList;->removeDownloadListener:Lccsanandroid/media/MediaPlayer;

    invoke-virtual {v0}, Lccsanandroid/media/MediaPlayer;->stop()V

    .line 9
    :cond_1
    iget-object v0, p0, Lccsansan/ao/getDownloadingList;->removeDownloadListener:Lccsanandroid/media/MediaPlayer;

    invoke-virtual {v0}, Lccsanandroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lccsansan/ao/getDownloadingList;->removeDownloadListener:Lccsanandroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
