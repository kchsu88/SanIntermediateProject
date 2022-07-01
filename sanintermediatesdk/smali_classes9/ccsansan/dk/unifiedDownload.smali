.class public Lccsansan/dk/unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/google/android/exoplayer2/Player$Listener;
.implements Lccsansan/dd/getDownloadingList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/dk/unifiedDownload$getDownloadingList;
    }
.end annotation


# static fields
.field private static unifiedDownload:Ljava/lang/String; = "Ad.ExoPlayerWrapper"


# instance fields
.field private IncentiveDownloadUtils:Lccsanandroid/os/HandlerThread;

.field private addDownloadListener:Lccsansan/dk/unifiedDownload$getDownloadingList;

.field private deleteDownItem:Lccsanandroid/os/Handler;

.field private deleteDownList:Z

.field private getDownloadStatusByUrl:Lccsansan/dd/getDownloadingList$addDownloadListener;

.field private getDownloadedList:Lccsansan/dd/getDownloadingList$removeDownloadListener;

.field private getDownloadedRecordByUrl:Z

.field private getDownloadingList:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

.field private getDownloadingRecordByUrl:Lccsansan/dd/getDownloadingList$IncentiveDownloadUtils;

.field private pause:Ljava/lang/String;

.field private removeDownloadListener:Lccsanandroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$5hdH2_WUKHlVyyGW86rgHSKhqmk(Lccsansan/dk/unifiedDownload;)V
    .locals 0

    invoke-direct {p0}, Lccsansan/dk/unifiedDownload;->getThumbPathByRecord()V

    return-void
.end method

.method public static synthetic $r8$lambda$Fb6vj1crJm8nGcK2oB95M_QLMQs(Lccsansan/dk/unifiedDownload;)V
    .locals 0

    invoke-direct {p0}, Lccsansan/dk/unifiedDownload;->trackReportClick()V

    return-void
.end method

.method public static synthetic $r8$lambda$G0NIVqHUmypfpx2xoDg0kt2Dt9U(Lccsansan/dk/unifiedDownload;)V
    .locals 0

    invoke-direct {p0}, Lccsansan/dk/unifiedDownload;->trackReportShow()V

    return-void
.end method

.method public static synthetic $r8$lambda$K2bMSHhxfHtpH5Rjx6zejur-Uls(Lccsansan/dk/unifiedDownload;Lccsancom/google/android/exoplayer2/video/VideoSize;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsansan/dk/unifiedDownload;->addDownloadListener(Lccsancom/google/android/exoplayer2/video/VideoSize;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cA67rOVANeogTMiRKm93jtQWcO0(Lccsansan/dk/unifiedDownload;)V
    .locals 0

    invoke-direct {p0}, Lccsansan/dk/unifiedDownload;->IncentiveSDK()V

    return-void
.end method

.method public static synthetic $r8$lambda$ggNJJdQV2haxLmLWaAmyCHguM6M(Lccsansan/dk/unifiedDownload;)V
    .locals 0

    invoke-direct {p0}, Lccsansan/dk/unifiedDownload;->ActionTypeDetailPage()V

    return-void
.end method

.method public static synthetic $r8$lambda$pdZ2JUJI4tg3E8u7c-2W4snzXyM(Lccsansan/dk/unifiedDownload;)V
    .locals 0

    invoke-direct {p0}, Lccsansan/dk/unifiedDownload;->resolveUrl()V

    return-void
.end method

.method public static synthetic $r8$lambda$qM_OIeaxTiXazLnqXPvwMTf2Jdg(Lccsansan/dk/unifiedDownload;)V
    .locals 0

    invoke-direct {p0}, Lccsansan/dk/unifiedDownload;->getPackageNameByRecord()V

    return-void
.end method

.method public static synthetic $r8$lambda$sbyujLivFioWTUEDHpRad1Guy0k(Lccsansan/dk/unifiedDownload;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lccsansan/dk/unifiedDownload;->addDownloadListener(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lccsansan/dk/unifiedDownload;->removeDownloadListener:Lccsanandroid/content/Context;

    return-void
.end method

.method private synthetic ActionTypeDetailPage()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->getDownloadedList:Lccsansan/dd/getDownloadingList$removeDownloadListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lccsansan/dk/unifiedDownload;->getDownloadingList:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->getBufferedPercentage()I

    move-result v1

    invoke-interface {v0, v1}, Lccsansan/dd/getDownloadingList$removeDownloadListener;->addDownloadListener(I)V

    :cond_0
    return-void
.end method

.method private synthetic IncentiveSDK()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->getDownloadingRecordByUrl:Lccsansan/dd/getDownloadingList$IncentiveDownloadUtils;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lccsansan/dd/getDownloadingList$IncentiveDownloadUtils;->unifiedDownload()V

    :cond_0
    return-void
.end method

.method private addDownloadListener(ILjava/lang/Object;J)V
    .locals 1

    .line 72
    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->addDownloadListener:Lccsansan/dk/unifiedDownload$getDownloadingList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->IncentiveDownloadUtils:Lccsanandroid/os/HandlerThread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsanandroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->addDownloadListener:Lccsansan/dk/unifiedDownload$getDownloadingList;

    invoke-virtual {v0, p1}, Lccsanandroid/os/Handler;->removeMessages(I)V

    .line 76
    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->addDownloadListener:Lccsansan/dk/unifiedDownload$getDownloadingList;

    invoke-virtual {v0}, Lccsanandroid/os/Handler;->obtainMessage()Lccsanandroid/os/Message;

    move-result-object v0

    .line 77
    iput p1, v0, Lccsanandroid/os/Message;->what:I

    .line 78
    iput-object p2, v0, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    .line 79
    iget-object p1, p0, Lccsansan/dk/unifiedDownload;->addDownloadListener:Lccsansan/dk/unifiedDownload$getDownloadingList;

    invoke-virtual {p1, v0, p3, p4}, Lccsanandroid/os/Handler;->sendMessageDelayed(Lccsanandroid/os/Message;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic addDownloadListener(Lccsancom/google/android/exoplayer2/video/VideoSize;)V
    .locals 2

    .line 70
    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->getDownloadStatusByUrl:Lccsansan/dd/getDownloadingList$addDownloadListener;

    if-eqz v0, :cond_0

    .line 71
    iget v1, p1, Lccsancom/google/android/exoplayer2/video/VideoSize;->width:I

    iget p1, p1, Lccsancom/google/android/exoplayer2/video/VideoSize;->height:I

    invoke-interface {v0, v1, p1, v1, p1}, Lccsansan/dd/getDownloadingList$addDownloadListener;->IncentiveDownloadUtils(IIII)V

    :cond_0
    return-void
.end method

.method private synthetic addDownloadListener(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->getDownloadingRecordByUrl:Lccsansan/dd/getDownloadingList$IncentiveDownloadUtils;

    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v0, p1, p2}, Lccsansan/dd/getDownloadingList$IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method static synthetic addDownloadListener(Lccsansan/dk/unifiedDownload;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsansan/dk/unifiedDownload;->resume()V

    return-void
.end method

.method private deleteDownList()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->deleteDownItem:Lccsanandroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v1, Lccsansan/dk/unifiedDownload$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lccsansan/dk/unifiedDownload$$ExternalSyntheticLambda3;-><init>(Lccsansan/dk/unifiedDownload;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getDownloadedCount()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->deleteDownItem:Lccsanandroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v1, Lccsansan/dk/unifiedDownload$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lccsansan/dk/unifiedDownload$$ExternalSyntheticLambda6;-><init>(Lccsansan/dk/unifiedDownload;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getDownloadingCount()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->deleteDownItem:Lccsanandroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v1, Lccsansan/dk/unifiedDownload$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lccsansan/dk/unifiedDownload$$ExternalSyntheticLambda1;-><init>(Lccsansan/dk/unifiedDownload;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getDownloadingList(I)V
    .locals 1

    .line 15
    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->getDownloadedList:Lccsansan/dd/getDownloadingList$removeDownloadListener;

    if-eqz v0, :cond_0

    .line 16
    invoke-interface {v0, p1}, Lccsansan/dd/getDownloadingList$removeDownloadListener;->getDownloadingList(I)V

    :cond_0
    return-void
.end method

.method private getDownloadingList(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "rtmp://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private synthetic getPackageNameByRecord()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->getDownloadingRecordByUrl:Lccsansan/dd/getDownloadingList$IncentiveDownloadUtils;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lccsansan/dd/getDownloadingList$IncentiveDownloadUtils;->removeDownloadListener()V

    :cond_0
    return-void
.end method

.method private synthetic getThumbPathByRecord()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->getDownloadingRecordByUrl:Lccsansan/dd/getDownloadingList$IncentiveDownloadUtils;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lccsansan/dd/getDownloadingList$IncentiveDownloadUtils;->addDownloadListener()V

    :cond_0
    return-void
.end method

.method private pause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->deleteDownItem:Lccsanandroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v1, Lccsansan/dk/unifiedDownload$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lccsansan/dk/unifiedDownload$$ExternalSyntheticLambda0;-><init>(Lccsansan/dk/unifiedDownload;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private removeDownloadListener(Ljava/lang/Object;)V
    .locals 3

    .line 41
    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->getDownloadingList:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    .line 42
    sget-object p1, Lccsansan/dk/unifiedDownload;->unifiedDownload:Ljava/lang/String;

    const-string v0, "doSetDisplay(): No player."

    invoke-static {p1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 48
    :cond_0
    :try_start_0
    sget-object v0, Lccsansan/dk/unifiedDownload;->unifiedDownload:Ljava/lang/String;

    const-string v1, "doSetDisplay():"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    instance-of v0, p1, Lccsanandroid/view/Surface;

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->getDownloadingList:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    check-cast p1, Lccsanandroid/view/Surface;

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurface(Lccsanandroid/view/Surface;)V

    goto :goto_0

    .line 51
    :cond_1
    instance-of v0, p1, Lccsanandroid/view/TextureView;

    if-eqz v0, :cond_2

    .line 52
    new-instance v0, Lccsanandroid/view/Surface;

    check-cast p1, Lccsanandroid/view/TextureView;

    invoke-virtual {p1}, Lccsanandroid/view/TextureView;->getSurfaceTexture()Lccsanandroid/graphics/SurfaceTexture;

    move-result-object p1

    invoke-direct {v0, p1}, Lccsanandroid/view/Surface;-><init>(Lccsanandroid/graphics/SurfaceTexture;)V

    .line 53
    iget-object p1, p0, Lccsansan/dk/unifiedDownload;->getDownloadingList:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurface(Lccsanandroid/view/Surface;)V

    goto :goto_0

    .line 55
    :cond_2
    iget-object p1, p0, Lccsansan/dk/unifiedDownload;->getDownloadingList:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->clearVideoSurface()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 58
    sget-object v0, Lccsansan/dk/unifiedDownload;->unifiedDownload:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSetDisplay(): Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private removeDownloadListener(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->deleteDownItem:Lccsanandroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    new-instance v1, Lccsansan/dk/unifiedDownload$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2}, Lccsansan/dk/unifiedDownload$$ExternalSyntheticLambda8;-><init>(Lccsansan/dk/unifiedDownload;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    sget-object p2, Lccsansan/dk/unifiedDownload;->unifiedDownload:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private removeDownloadListener(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private synthetic resolveUrl()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->getDownloadedList:Lccsansan/dd/getDownloadingList$removeDownloadListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lccsansan/dk/unifiedDownload;->getDownloadStatusByUrl()I

    move-result v1

    invoke-interface {v0, v1}, Lccsansan/dd/getDownloadingList$removeDownloadListener;->unifiedDownload(I)V

    :cond_0
    return-void
.end method

.method private resume()V
    .locals 4

    .line 1
    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->getDownloadingList:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->deleteDownItem:Lccsanandroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lccsansan/dk/unifiedDownload$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lccsansan/dk/unifiedDownload$$ExternalSyntheticLambda2;-><init>(Lccsansan/dk/unifiedDownload;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/16 v0, 0xa

    const/4 v1, 0x0

    const-wide/16 v2, 0x1f4

    .line 9
    invoke-direct {p0, v0, v1, v2, v3}, Lccsansan/dk/unifiedDownload;->addDownloadListener(ILjava/lang/Object;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic trackReportClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->getDownloadingRecordByUrl:Lccsansan/dd/getDownloadingList$IncentiveDownloadUtils;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lccsansan/dd/getDownloadingList$IncentiveDownloadUtils;->getDownloadingList()V

    :cond_0
    return-void
.end method

.method private synthetic trackReportShow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->getDownloadingList:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-direct {p0, v1}, Lccsansan/dk/unifiedDownload;->getDownloadingList(I)V

    :cond_0
    return-void
.end method

.method private unifiedDownload(I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->addDownloadListener:Lccsansan/dk/unifiedDownload$getDownloadingList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->IncentiveDownloadUtils:Lccsanandroid/os/HandlerThread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsanandroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->addDownloadListener:Lccsansan/dk/unifiedDownload$getDownloadingList;

    invoke-virtual {v0, p1}, Lccsanandroid/os/Handler;->removeMessages(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private unifiedDownload(Ljava/lang/String;)Z
    .locals 2

    .line 34
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 35
    const-string v0, "file_path_null"

    invoke-direct {p0, v0, p1}, Lccsansan/dk/unifiedDownload;->removeDownloadListener(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1

    .line 37
    :cond_0
    invoke-direct {p0, p1}, Lccsansan/dk/unifiedDownload;->getDownloadingList(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 39
    :cond_1
    invoke-direct {p0, p1}, Lccsansan/dk/unifiedDownload;->removeDownloadListener(Ljava/lang/String;)Z

    return v1
.end method


# virtual methods
.method public IncentiveDownloadUtils()V
    .locals 4

    const/16 v0, 0xa

    .line 2
    :try_start_0
    invoke-direct {p0, v0}, Lccsansan/dk/unifiedDownload;->unifiedDownload(I)V

    .line 4
    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->getDownloadingList:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lccsansan/dk/unifiedDownload;->getDownloadingList:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    sget-object v1, Lccsansan/dk/unifiedDownload;->unifiedDownload:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doReleasePlayer(): Release occure exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public IncentiveDownloadUtils(Ljava/lang/String;I)V
    .locals 3

    .line 11
    invoke-static {p1}, Lccsansan/cv/getDownloadStatusByUrl;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    sget-object v0, Lccsansan/dk/unifiedDownload;->unifiedDownload:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPlay(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1}, Lccsansan/dk/unifiedDownload;->unifiedDownload(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 16
    :cond_0
    iget-object p2, p0, Lccsansan/dk/unifiedDownload;->getDownloadingList:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez p2, :cond_1

    .line 17
    sget-object p1, Lccsansan/dk/unifiedDownload;->unifiedDownload:Ljava/lang/String;

    const-string p2, "setDataSource(): No player."

    invoke-static {p1, p2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 21
    :cond_1
    iput-object p1, p0, Lccsansan/dk/unifiedDownload;->pause:Ljava/lang/String;

    .line 23
    :try_start_0
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/MediaItem;->fromUri(Ljava/lang/String;)Lccsancom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    .line 24
    iget-object p2, p0, Lccsansan/dk/unifiedDownload;->getDownloadingList:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p2, p1}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->setMediaItem(Lccsancom/google/android/exoplayer2/MediaItem;)V

    .line 25
    sget-object p1, Lccsansan/dk/unifiedDownload;->unifiedDownload:Ljava/lang/String;

    const-string p2, "prepare"

    invoke-static {p1, p2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object p1, p0, Lccsansan/dk/unifiedDownload;->getDownloadingList:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->prepare()V

    .line 27
    sget-object p1, Lccsansan/dk/unifiedDownload;->unifiedDownload:Ljava/lang/String;

    const-string p2, "start play"

    invoke-static {p1, p2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-boolean p1, p0, Lccsansan/dk/unifiedDownload;->getDownloadedRecordByUrl:Z

    if-eqz p1, :cond_2

    .line 29
    iget-object p1, p0, Lccsansan/dk/unifiedDownload;->getDownloadingList:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 32
    const-string p2, "prepare_failed"

    invoke-direct {p0, p2, p1}, Lccsansan/dk/unifiedDownload;->removeDownloadListener(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    sget-object p2, Lccsansan/dk/unifiedDownload;->unifiedDownload:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDataSource(): Exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public IncentiveDownloadUtils(Lccsansan/dd/getDownloadingList$removeDownloadListener;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lccsansan/dk/unifiedDownload;->getDownloadedList:Lccsansan/dd/getDownloadingList$removeDownloadListener;

    return-void
.end method

.method public addDownloadListener()V
    .locals 3

    .line 1
    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->IncentiveDownloadUtils:Lccsanandroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->addDownloadListener:Lccsansan/dk/unifiedDownload$getDownloadingList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->deleteDownItem:Lccsanandroid/os/Handler;

    if-nez v0, :cond_2

    .line 2
    :cond_0
    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->IncentiveDownloadUtils:Lccsanandroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lccsanandroid/os/HandlerThread;->quit()Z

    .line 5
    :cond_1
    new-instance v0, Lccsanandroid/os/HandlerThread;

    sget-object v1, Lccsansan/dk/unifiedDownload;->unifiedDownload:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccsanandroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lccsansan/dk/unifiedDownload;->IncentiveDownloadUtils:Lccsanandroid/os/HandlerThread;

    .line 6
    invoke-virtual {v0}, Lccsanandroid/os/HandlerThread;->start()V

    .line 7
    new-instance v0, Lccsansan/dk/unifiedDownload$getDownloadingList;

    iget-object v1, p0, Lccsansan/dk/unifiedDownload;->IncentiveDownloadUtils:Lccsanandroid/os/HandlerThread;

    invoke-virtual {v1}, Lccsanandroid/os/HandlerThread;->getLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lccsansan/dk/unifiedDownload$getDownloadingList;-><init>(Lccsansan/dk/unifiedDownload;Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsansan/dk/unifiedDownload;->addDownloadListener:Lccsansan/dk/unifiedDownload$getDownloadingList;

    .line 8
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsansan/dk/unifiedDownload;->deleteDownItem:Lccsanandroid/os/Handler;

    .line 11
    :cond_2
    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->getDownloadingList:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_3

    return-void

    .line 14
    :cond_3
    sget-object v0, Lccsansan/dk/unifiedDownload;->unifiedDownload:Ljava/lang/String;

    const-string v1, "doCreatePlayer()"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;

    iget-object v1, p0, Lccsansan/dk/unifiedDownload;->removeDownloadListener:Lccsanandroid/content/Context;

    invoke-direct {v0, v1}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;-><init>(Lccsanandroid/content/Context;)V

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer$Builder;->build()Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lccsansan/dk/unifiedDownload;->getDownloadingList:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->setRepeatMode(I)V

    .line 18
    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->getDownloadingList:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lccsancom/google/android/exoplayer2/Player$Listener;)V

    .line 19
    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->getDownloadingList:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    new-instance v1, Lccsancom/google/android/exoplayer2/util/EventLogger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lccsancom/google/android/exoplayer2/util/EventLogger;-><init>(Lccsancom/google/android/exoplayer2/trackselection/MappingTrackSelector;)V

    invoke-virtual {v0, v1}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->addAnalyticsListener(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    return-void
.end method

.method public addDownloadListener(I)V
    .locals 3

    .line 59
    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->getDownloadingList:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 62
    :cond_0
    sget-object v0, Lccsansan/dk/unifiedDownload;->unifiedDownload:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolume(): Current volume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    if-gez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x64

    .line 63
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    int-to-float p1, p1

    const v0, 0x3c23d70a    # 0.01f

    mul-float p1, p1, v0

    .line 65
    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->getDownloadingList:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    return-void
.end method

.method public addDownloadListener(Ljava/lang/String;)V
    .locals 1

    .line 20
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lccsansan/dk/unifiedDownload;->IncentiveDownloadUtils(Ljava/lang/String;I)V

    return-void
.end method

.method public deleteDownItem()I
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->getDownloadingList:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getDownloadStatusByUrl()I
    .locals 2

    .line 2
    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->getDownloadingList:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v0

    long-to-int v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getDownloadedList()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lccsansan/dk/unifiedDownload;->deleteDownList:Z

    return v0
.end method

.method public getDownloadedRecordByUrl()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->getDownloadingList:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lccsansan/dk/unifiedDownload;->unifiedDownload:Ljava/lang/String;

    const-string v1, "reStart(): No media data or no media player."

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lccsansan/dk/unifiedDownload;->getDownloadedRecordByUrl:Z

    .line 7
    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->pause:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lccsansan/dk/unifiedDownload;->addDownloadListener(Ljava/lang/String;)V

    return-void
.end method

.method public getDownloadingList()V
    .locals 4

    .line 2
    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->getDownloadingList:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lccsansan/dk/unifiedDownload;->unifiedDownload:Ljava/lang/String;

    const-string v1, "stopPlay(): No player."

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    sget-object v0, Lccsansan/dk/unifiedDownload;->unifiedDownload:Ljava/lang/String;

    const-string v1, "stopPlay(): "

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :try_start_0
    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->getDownloadingList:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->stop()V

    const/16 v0, 0xa

    .line 11
    invoke-direct {p0, v0}, Lccsansan/dk/unifiedDownload;->unifiedDownload(I)V

    .line 12
    invoke-direct {p0}, Lccsansan/dk/unifiedDownload;->getDownloadedCount()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 14
    sget-object v1, Lccsansan/dk/unifiedDownload;->unifiedDownload:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopPlay(): Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getDownloadingList(Lccsansan/dd/getDownloadingList$IncentiveDownloadUtils;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lccsansan/dk/unifiedDownload;->getDownloadingRecordByUrl:Lccsansan/dd/getDownloadingList$IncentiveDownloadUtils;

    return-void
.end method

.method public getDownloadingRecordByUrl()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->getDownloadingList:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic onAudioAttributesChanged(Lccsancom/google/android/exoplayer2/audio/AudioAttributes;)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/Player$Listener$-CC;->$default$onAudioAttributesChanged(Lccsancom/google/android/exoplayer2/Player$Listener;Lccsancom/google/android/exoplayer2/audio/AudioAttributes;)V

    return-void
.end method

.method public synthetic onAudioSessionIdChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/Player$Listener$-CC;->$default$onAudioSessionIdChanged(Lccsancom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public synthetic onAvailableCommandsChanged(Lccsancom/google/android/exoplayer2/Player$Commands;)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/Player$Listener$-CC;->$default$onAvailableCommandsChanged(Lccsancom/google/android/exoplayer2/Player$Listener;Lccsancom/google/android/exoplayer2/Player$Commands;)V

    return-void
.end method

.method public synthetic onCues(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/Player$Listener$-CC;->$default$onCues(Lccsancom/google/android/exoplayer2/Player$Listener;Ljava/util/List;)V

    return-void
.end method

.method public synthetic onDeviceInfoChanged(Lccsancom/google/android/exoplayer2/DeviceInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/Player$Listener$-CC;->$default$onDeviceInfoChanged(Lccsancom/google/android/exoplayer2/Player$Listener;Lccsancom/google/android/exoplayer2/DeviceInfo;)V

    return-void
.end method

.method public synthetic onDeviceVolumeChanged(IZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lccsancom/google/android/exoplayer2/Player$Listener$-CC;->$default$onDeviceVolumeChanged(Lccsancom/google/android/exoplayer2/Player$Listener;IZ)V

    return-void
.end method

.method public synthetic onEvents(Lccsancom/google/android/exoplayer2/Player;Lccsancom/google/android/exoplayer2/Player$Events;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lccsancom/google/android/exoplayer2/Player$Listener$-CC;->$default$onEvents(Lccsancom/google/android/exoplayer2/Player$Listener;Lccsancom/google/android/exoplayer2/Player;Lccsancom/google/android/exoplayer2/Player$Events;)V

    return-void
.end method

.method public synthetic onIsLoadingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/Player$Listener$-CC;->$default$onIsLoadingChanged(Lccsancom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onIsPlayingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/Player$Listener$-CC;->$default$onIsPlayingChanged(Lccsancom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onLoadingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onLoadingChanged(Lccsancom/google/android/exoplayer2/Player$EventListener;Z)V

    return-void
.end method

.method public synthetic onMaxSeekToPreviousPositionChanged(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lccsancom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onMaxSeekToPreviousPositionChanged(Lccsancom/google/android/exoplayer2/Player$EventListener;J)V

    return-void
.end method

.method public synthetic onMediaItemTransition(Lccsancom/google/android/exoplayer2/MediaItem;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lccsancom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMediaItemTransition(Lccsancom/google/android/exoplayer2/Player$Listener;Lccsancom/google/android/exoplayer2/MediaItem;I)V

    return-void
.end method

.method public synthetic onMediaMetadataChanged(Lccsancom/google/android/exoplayer2/MediaMetadata;)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMediaMetadataChanged(Lccsancom/google/android/exoplayer2/Player$Listener;Lccsancom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public synthetic onMetadata(Lccsancom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMetadata(Lccsancom/google/android/exoplayer2/Player$Listener;Lccsancom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method public synthetic onPlayWhenReadyChanged(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lccsancom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlayWhenReadyChanged(Lccsancom/google/android/exoplayer2/Player$Listener;ZI)V

    return-void
.end method

.method public synthetic onPlaybackParametersChanged(Lccsancom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlaybackParametersChanged(Lccsancom/google/android/exoplayer2/Player$Listener;Lccsancom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->getDownloadingList:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->deleteDownItem:Lccsanandroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    .line 4
    new-instance p1, Lccsansan/dk/unifiedDownload$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lccsansan/dk/unifiedDownload$$ExternalSyntheticLambda4;-><init>(Lccsansan/dk/unifiedDownload;)V

    invoke-virtual {v0, p1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8
    iput-boolean v2, p0, Lccsansan/dk/unifiedDownload;->deleteDownList:Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 10
    new-instance p1, Lccsansan/dk/unifiedDownload$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lccsansan/dk/unifiedDownload$$ExternalSyntheticLambda5;-><init>(Lccsansan/dk/unifiedDownload;)V

    invoke-virtual {v0, p1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    invoke-direct {p0}, Lccsansan/dk/unifiedDownload;->getDownloadingCount()V

    const/16 p1, 0xa

    const/4 v0, 0x0

    const-wide/16 v3, 0x0

    .line 15
    invoke-direct {p0, p1, v0, v3, v4}, Lccsansan/dk/unifiedDownload;->addDownloadListener(ILjava/lang/Object;J)V

    .line 16
    iput-boolean v2, p0, Lccsansan/dk/unifiedDownload;->deleteDownList:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 18
    invoke-direct {p0}, Lccsansan/dk/unifiedDownload;->deleteDownList()V

    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lccsansan/dk/unifiedDownload;->deleteDownList:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlaybackSuppressionReasonChanged(Lccsancom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public onPlayerError(Lccsancom/google/android/exoplayer2/PlaybackException;)V
    .locals 3

    .line 1
    iget v0, p1, Lccsancom/google/android/exoplayer2/PlaybackException;->errorCode:I

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lccsansan/dk/unifiedDownload;->getDownloadedRecordByUrl()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lccsancom/google/android/exoplayer2/PlaybackException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-direct {p0, v0, p1}, Lccsansan/dk/unifiedDownload;->removeDownloadListener(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->getDownloadingList:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lccsansan/dk/unifiedDownload;->getDownloadingList:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    .line 10
    :cond_1
    :goto_0
    sget-object v0, Lccsansan/dk/unifiedDownload;->unifiedDownload:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError(): Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xa

    .line 11
    invoke-direct {p0, p1}, Lccsansan/dk/unifiedDownload;->unifiedDownload(I)V

    return-void
.end method

.method public synthetic onPlayerErrorChanged(Lccsancom/google/android/exoplayer2/PlaybackException;)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlayerErrorChanged(Lccsancom/google/android/exoplayer2/Player$Listener;Lccsancom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public synthetic onPlayerStateChanged(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lccsancom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPlayerStateChanged(Lccsancom/google/android/exoplayer2/Player$EventListener;ZI)V

    return-void
.end method

.method public synthetic onPlaylistMetadataChanged(Lccsancom/google/android/exoplayer2/MediaMetadata;)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlaylistMetadataChanged(Lccsancom/google/android/exoplayer2/Player$Listener;Lccsancom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(I)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPositionDiscontinuity(Lccsancom/google/android/exoplayer2/Player$EventListener;I)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(Lccsancom/google/android/exoplayer2/Player$PositionInfo;Lccsancom/google/android/exoplayer2/Player$PositionInfo;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lccsancom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPositionDiscontinuity(Lccsancom/google/android/exoplayer2/Player$Listener;Lccsancom/google/android/exoplayer2/Player$PositionInfo;Lccsancom/google/android/exoplayer2/Player$PositionInfo;I)V

    return-void
.end method

.method public synthetic onRenderedFirstFrame()V
    .locals 0

    invoke-static {p0}, Lccsancom/google/android/exoplayer2/Player$Listener$-CC;->$default$onRenderedFirstFrame(Lccsancom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public synthetic onRepeatModeChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/Player$Listener$-CC;->$default$onRepeatModeChanged(Lccsancom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public synthetic onSeekBackIncrementChanged(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lccsancom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSeekBackIncrementChanged(Lccsancom/google/android/exoplayer2/Player$Listener;J)V

    return-void
.end method

.method public synthetic onSeekForwardIncrementChanged(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lccsancom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSeekForwardIncrementChanged(Lccsancom/google/android/exoplayer2/Player$Listener;J)V

    return-void
.end method

.method public synthetic onSeekProcessed()V
    .locals 0

    invoke-static {p0}, Lccsancom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onSeekProcessed(Lccsancom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method

.method public synthetic onShuffleModeEnabledChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/Player$Listener$-CC;->$default$onShuffleModeEnabledChanged(Lccsancom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onSkipSilenceEnabledChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSkipSilenceEnabledChanged(Lccsancom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onSurfaceSizeChanged(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lccsancom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSurfaceSizeChanged(Lccsancom/google/android/exoplayer2/Player$Listener;II)V

    return-void
.end method

.method public synthetic onTimelineChanged(Lccsancom/google/android/exoplayer2/Timeline;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lccsancom/google/android/exoplayer2/Player$Listener$-CC;->$default$onTimelineChanged(Lccsancom/google/android/exoplayer2/Player$Listener;Lccsancom/google/android/exoplayer2/Timeline;I)V

    return-void
.end method

.method public synthetic onTrackSelectionParametersChanged(Lccsancom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onTrackSelectionParametersChanged(Lccsancom/google/android/exoplayer2/Player$EventListener;Lccsancom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    return-void
.end method

.method public synthetic onTracksChanged(Lccsancom/google/android/exoplayer2/source/TrackGroupArray;Lccsancom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lccsancom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onTracksChanged(Lccsancom/google/android/exoplayer2/Player$EventListener;Lccsancom/google/android/exoplayer2/source/TrackGroupArray;Lccsancom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V

    return-void
.end method

.method public synthetic onTracksInfoChanged(Lccsancom/google/android/exoplayer2/TracksInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/Player$Listener$-CC;->$default$onTracksInfoChanged(Lccsancom/google/android/exoplayer2/Player$Listener;Lccsancom/google/android/exoplayer2/TracksInfo;)V

    return-void
.end method

.method public onVideoSizeChanged(Lccsancom/google/android/exoplayer2/video/VideoSize;)V
    .locals 3

    .line 1
    sget-object v0, Lccsansan/dk/unifiedDownload;->unifiedDownload:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoSizeChanged width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lccsancom/google/android/exoplayer2/video/VideoSize;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lccsancom/google/android/exoplayer2/video/VideoSize;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget v0, p1, Lccsancom/google/android/exoplayer2/video/VideoSize;->width:I

    if-eqz v0, :cond_1

    iget v0, p1, Lccsancom/google/android/exoplayer2/video/VideoSize;->height:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->deleteDownItem:Lccsanandroid/os/Handler;

    new-instance v1, Lccsansan/dk/unifiedDownload$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lccsansan/dk/unifiedDownload$$ExternalSyntheticLambda7;-><init>(Lccsansan/dk/unifiedDownload;Lccsancom/google/android/exoplayer2/video/VideoSize;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 10
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lccsansan/dk/unifiedDownload;->IncentiveDownloadUtils()V

    const/4 p1, 0x0

    .line 12
    const-string v0, "invalid_video_size"

    invoke-direct {p0, v0, p1}, Lccsansan/dk/unifiedDownload;->removeDownloadListener(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic onVolumeChanged(F)V
    .locals 0

    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/Player$Listener$-CC;->$default$onVolumeChanged(Lccsancom/google/android/exoplayer2/Player$Listener;F)V

    return-void
.end method

.method public removeDownloadListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->getDownloadingList:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lccsansan/dk/unifiedDownload;->unifiedDownload:Ljava/lang/String;

    const-string v1, "resumePlay(): No media player."

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    sget-object v0, Lccsansan/dk/unifiedDownload;->unifiedDownload:Ljava/lang/String;

    const-string v1, "resumePlay():"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsansan/dk/unifiedDownload;->getDownloadedRecordByUrl:Z

    .line 8
    iget-object v1, p0, Lccsansan/dk/unifiedDownload;->getDownloadingList:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1, v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public removeDownloadListener(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lccsansan/dk/unifiedDownload;->getDownloadedRecordByUrl:Z

    return-void
.end method

.method public unifiedDownload()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->getDownloadingList:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lccsansan/dk/unifiedDownload;->unifiedDownload:Ljava/lang/String;

    const-string v1, "resumePlay(): No media player."

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    sget-object v0, Lccsansan/dk/unifiedDownload;->unifiedDownload:Ljava/lang/String;

    const-string v1, "pausePlay():"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lccsansan/dk/unifiedDownload;->getDownloadingList:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->pause()V

    .line 8
    invoke-direct {p0}, Lccsansan/dk/unifiedDownload;->pause()V

    return-void
.end method

.method public unifiedDownload(Lccsanandroid/view/TextureView;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lccsansan/dk/unifiedDownload;->removeDownloadListener(Ljava/lang/Object;)V

    return-void
.end method

.method public unifiedDownload(Lccsansan/dd/getDownloadingList$addDownloadListener;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lccsansan/dk/unifiedDownload;->getDownloadStatusByUrl:Lccsansan/dd/getDownloadingList$addDownloadListener;

    return-void
.end method
