.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task$InternalState;
    }
.end annotation


# static fields
.field public static final STATE_QUEUED_CANCELING:I = 0x5

.field public static final STATE_STARTED_CANCELING:I = 0x6

.field public static final STATE_STARTED_STOPPING:I = 0x7


# instance fields
.field private final action:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;

.field private volatile currentState:I

.field private final downloadManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;

.field private volatile downloader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/Downloader;

.field private error:Ljava/lang/Throwable;

.field private final id:I

.field private final minRetryCount:I

.field private thread:Ljava/lang/Thread;


# direct methods
.method private constructor <init>(ILccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;I)V
    .locals 0

    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 661
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->id:I

    .line 662
    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->downloadManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;

    .line 663
    iput-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->action:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;

    .line 664
    const/4 p1, 0x0

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->currentState:I

    .line 665
    iput p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->minRetryCount:I

    .line 666
    return-void
.end method

.method synthetic constructor <init>(ILccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;ILccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$1;)V
    .locals 0

    .line 612
    invoke-direct {p0, p1, p2, p3, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;-><init>(ILccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;I)V

    return-void
.end method

.method static synthetic access$000(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;)V
    .locals 0

    .line 612
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->stop()V

    return-void
.end method

.method static synthetic access$100(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;)I
    .locals 0

    .line 612
    iget p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->currentState:I

    return p0
.end method

.method static synthetic access$200(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;)I
    .locals 0

    .line 612
    iget p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->id:I

    return p0
.end method

.method static synthetic access$2100(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;II)Z
    .locals 0

    .line 612
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->changeStateAndNotify(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;IILjava/lang/Throwable;)Z
    .locals 0

    .line 612
    invoke-direct {p0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->changeStateAndNotify(IILjava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;
    .locals 0

    .line 612
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->action:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;

    return-object p0
.end method

.method static synthetic access$500(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;)Z
    .locals 0

    .line 612
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->canStart()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;)V
    .locals 0

    .line 612
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->cancel()V

    return-void
.end method

.method static synthetic access$700(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;)V
    .locals 0

    .line 612
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->start()V

    return-void
.end method

.method private canStart()Z
    .locals 1

    .line 756
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->currentState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private cancel()V
    .locals 2

    .line 760
    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->changeStateAndNotify(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->downloadManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->access$1900(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;)Lccsanandroid/os/Handler;

    move-result-object v0

    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task$1;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task$1;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 768
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->changeStateAndNotify(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 769
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->cancelDownload()V

    .line 771
    :cond_1
    :goto_0
    return-void
.end method

.method private cancelDownload()V
    .locals 1

    .line 799
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->downloader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/Downloader;

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->downloader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/Downloader;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/Downloader;->cancel()V

    .line 802
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 803
    return-void
.end method

.method private changeStateAndNotify(II)Z
    .locals 1

    .line 781
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->changeStateAndNotify(IILjava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method private changeStateAndNotify(IILjava/lang/Throwable;)Z
    .locals 2

    .line 786
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->currentState:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    .line 787
    return v1

    .line 789
    :cond_0
    iput p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->currentState:I

    .line 790
    iput-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->error:Ljava/lang/Throwable;

    .line 791
    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->currentState:I

    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->getExternalState()I

    move-result p2

    const/4 p3, 0x1

    if-eq p1, p2, :cond_1

    const/4 v1, 0x1

    .line 792
    :cond_1
    if-nez v1, :cond_2

    .line 793
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->downloadManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;

    invoke-static {p1, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->access$2300(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;)V

    .line 795
    :cond_2
    return p3
.end method

.method private getExternalState()I
    .locals 1

    .line 737
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->currentState:I

    packed-switch v0, :pswitch_data_0

    .line 744
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->currentState:I

    return v0

    .line 742
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 739
    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getRetryDelayMillis(I)I
    .locals 1

    .line 859
    add-int/lit8 p1, p1, -0x1

    mul-int/lit16 p1, p1, 0x3e8

    const/16 v0, 0x1388

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private getStateString()Ljava/lang/String;
    .locals 1

    .line 725
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->currentState:I

    packed-switch v0, :pswitch_data_0

    .line 732
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->currentState:I

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$TaskState;->getStateString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 730
    :pswitch_0
    const-string v0, "STOPPING"

    return-object v0

    .line 728
    :pswitch_1
    const-string v0, "CANCELING"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private start()V
    .locals 2

    .line 749
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->changeStateAndNotify(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->thread:Ljava/lang/Thread;

    .line 751
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 753
    :cond_0
    return-void
.end method

.method private stop()V
    .locals 2

    .line 774
    const/4 v0, 0x1

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->changeStateAndNotify(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    const-string v0, "Stopping"

    invoke-static {v0, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->access$2200(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;)V

    .line 776
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 778
    :cond_0
    return-void
.end method

.method private static toString([B)Ljava/lang/String;
    .locals 2

    .line 717
    array-length v0, p0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 718
    const-string p0, "<data is too long>"

    return-object p0

    .line 720
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->fromUtf8Bytes([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getDownloadPercentage()F
    .locals 1

    .line 694
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->downloader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/Downloader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->downloader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/Downloader;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/Downloader;->getDownloadPercentage()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    return v0
.end method

.method public final getDownloadState()Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$TaskState;
    .locals 10

    .line 669
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->getExternalState()I

    move-result v3

    .line 670
    new-instance v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$TaskState;

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->id:I

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->action:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;

    .line 671
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->getDownloadPercentage()F

    move-result v4

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->getDownloadedBytes()J

    move-result-wide v5

    iget-object v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->error:Ljava/lang/Throwable;

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$TaskState;-><init>(ILccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;IFJLjava/lang/Throwable;Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$1;)V

    .line 670
    return-object v9
.end method

.method public final getDownloadedBytes()J
    .locals 2

    .line 699
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->downloader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/Downloader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->downloader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/Downloader;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/Downloader;->getDownloadedBytes()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final isActive()Z
    .locals 3

    .line 683
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->currentState:I

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->currentState:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->currentState:I

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->currentState:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final isFinished()Z
    .locals 2

    .line 676
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->currentState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->currentState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->currentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final run()V
    .locals 8

    .line 809
    const-string v0, "Task is started"

    invoke-static {v0, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->access$2200(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;)V

    .line 810
    nop

    .line 812
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->action:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->downloadManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->access$2400(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloaderConstructorHelper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;->createDownloader(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloaderConstructorHelper;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/Downloader;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->downloader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/Downloader;

    .line 813
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->action:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;

    iget-boolean v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;->isRemoveAction:Z

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->downloader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/Downloader;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/Downloader;->remove()V

    goto :goto_1

    .line 816
    :cond_0
    nop

    .line 817
    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 818
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_3

    .line 820
    :try_start_1
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->downloader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/Downloader;

    invoke-interface {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/Downloader;->download()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 821
    goto :goto_1

    .line 822
    :catch_0
    move-exception v4

    .line 823
    :try_start_2
    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->downloader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/Downloader;

    invoke-interface {v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/Downloader;->getDownloadedBytes()J

    move-result-wide v5

    .line 824
    cmp-long v7, v5, v0

    if-eqz v7, :cond_1

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reset error count. downloadedBytes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->access$2200(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;)V

    .line 826
    nop

    .line 827
    move-wide v0, v5

    const/4 v3, 0x0

    .line 829
    :cond_1
    iget v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->currentState:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    add-int/2addr v3, v6

    iget v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->minRetryCount:I

    if-gt v3, v5, :cond_2

    .line 832
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Download error. Retry "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->access$2200(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;)V

    .line 833
    invoke-direct {p0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->getRetryDelayMillis(I)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 834
    goto :goto_0

    .line 830
    :cond_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 839
    :cond_3
    :goto_1
    const/4 v0, 0x0

    goto :goto_2

    .line 837
    :catchall_0
    move-exception v0

    .line 838
    nop

    .line 840
    :goto_2
    nop

    .line 841
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->downloadManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->access$1900(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;)Lccsanandroid/os/Handler;

    move-result-object v1

    new-instance v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task$2;

    invoke-direct {v2, p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task$2;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 856
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 705
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
