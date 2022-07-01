.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$TaskState;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Listener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_MAX_SIMULTANEOUS_DOWNLOADS:I = 0x1

.field public static final DEFAULT_MIN_RETRY_COUNT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "DownloadManager"


# instance fields
.field private final actionFile:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ActionFile;

.field private final activeDownloadTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;",
            ">;"
        }
    .end annotation
.end field

.field private final deserializers:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction$Deserializer;

.field private final downloaderConstructorHelper:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloaderConstructorHelper;

.field private downloadsStopped:Z

.field private final fileIOHandler:Lccsanandroid/os/Handler;

.field private final fileIOThread:Lccsanandroid/os/HandlerThread;

.field private final handler:Lccsanandroid/os/Handler;

.field private initialized:Z

.field private final listeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final maxActiveDownloadTasks:I

.field private final minRetryCount:I

.field private nextTaskId:I

.field private released:Z

.field private final tasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloaderConstructorHelper;IILjava/io/File;[Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction$Deserializer;)V
    .locals 3

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    array-length v0, p5

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "At least one Deserializer is required."

    invoke-static {v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 162
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->downloaderConstructorHelper:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloaderConstructorHelper;

    .line 163
    iput p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->maxActiveDownloadTasks:I

    .line 164
    iput p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->minRetryCount:I

    .line 165
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ActionFile;

    invoke-direct {p1, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ActionFile;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->actionFile:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ActionFile;

    .line 166
    iput-object p5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->deserializers:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction$Deserializer;

    .line 167
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->downloadsStopped:Z

    .line 169
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    .line 170
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->activeDownloadTasks:Ljava/util/ArrayList;

    .line 172
    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object p1

    .line 173
    if-nez p1, :cond_1

    .line 174
    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object p1

    .line 176
    :cond_1
    new-instance p2, Lccsanandroid/os/Handler;

    invoke-direct {p2, p1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->handler:Lccsanandroid/os/Handler;

    .line 178
    new-instance p1, Lccsanandroid/os/HandlerThread;

    const-string p2, "DownloadManager file i/o"

    invoke-direct {p1, p2}, Lccsanandroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->fileIOThread:Lccsanandroid/os/HandlerThread;

    .line 179
    invoke-virtual {p1}, Lccsanandroid/os/HandlerThread;->start()V

    .line 180
    new-instance p2, Lccsanandroid/os/Handler;

    invoke-virtual {p1}, Lccsanandroid/os/HandlerThread;->getLooper()Lccsanandroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->fileIOHandler:Lccsanandroid/os/Handler;

    .line 182
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 184
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->loadActions()V

    .line 185
    const-string p1, "Created"

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->logd(Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public varargs constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloaderConstructorHelper;Ljava/io/File;[Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction$Deserializer;)V
    .locals 6

    .line 136
    const/4 v2, 0x1

    const/4 v3, 0x5

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloaderConstructorHelper;IILjava/io/File;[Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction$Deserializer;)V

    .line 142
    return-void
.end method

.method public varargs constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;Ljava/io/File;[Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction$Deserializer;)V
    .locals 1

    .line 118
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloaderConstructorHelper;

    invoke-direct {v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloaderConstructorHelper;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;)V

    invoke-direct {p0, v0, p3, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloaderConstructorHelper;Ljava/io/File;[Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction$Deserializer;)V

    .line 122
    return-void
.end method

.method static synthetic access$1000(Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->released:Z

    return p0
.end method

.method static synthetic access$1200(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;)Ljava/util/ArrayList;
    .locals 0

    .line 53
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1300(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->addTaskForAction(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1402(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->initialized:Z

    return p1
.end method

.method static synthetic access$1500(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 53
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic access$1600(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->saveActions()V

    return-void
.end method

.method static synthetic access$1700(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->maybeStartTasks()V

    return-void
.end method

.method static synthetic access$1800(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->notifyListenersTaskStateChange(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;)V

    return-void
.end method

.method static synthetic access$1900(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;)Lccsanandroid/os/Handler;
    .locals 0

    .line 53
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->handler:Lccsanandroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2200(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;)V
    .locals 0

    .line 53
    invoke-static {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->logd(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;)V

    return-void
.end method

.method static synthetic access$2300(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->onTaskStateChange(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;)V

    return-void
.end method

.method static synthetic access$2400(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloaderConstructorHelper;
    .locals 0

    .line 53
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->downloaderConstructorHelper:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloaderConstructorHelper;

    return-object p0
.end method

.method static synthetic access$800(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;)[Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction$Deserializer;
    .locals 0

    .line 53
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->deserializers:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction$Deserializer;

    return-object p0
.end method

.method static synthetic access$900(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ActionFile;
    .locals 0

    .line 53
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->actionFile:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ActionFile;

    return-object p0
.end method

.method private addTaskForAction(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;
    .locals 7

    .line 349
    new-instance v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->nextTaskId:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->nextTaskId:I

    iget v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->minRetryCount:I

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;-><init>(ILccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;ILccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$1;)V

    .line 350
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    const-string p1, "Task is added"

    invoke-static {p1, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->logd(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;)V

    .line 352
    return-object v6
.end method

.method private loadActions()V
    .locals 2

    .line 451
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->fileIOHandler:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$2;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$2;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 498
    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 0

    .line 525
    return-void
.end method

.method private static logd(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;)V
    .locals 1

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->logd(Ljava/lang/String;)V

    .line 529
    return-void
.end method

.method private maybeNotifyListenersIdle()V
    .locals 2

    .line 414
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 415
    return-void

    .line 417
    :cond_0
    const-string v0, "Notify idle state"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->logd(Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Listener;

    .line 419
    invoke-interface {v1, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Listener;->onIdle(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;)V

    .line 420
    goto :goto_0

    .line 421
    :cond_1
    return-void
.end method

.method private maybeStartTasks()V
    .locals 11

    .line 368
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->initialized:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->released:Z

    if-eqz v0, :cond_0

    goto/16 :goto_7

    .line 372
    :cond_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->downloadsStopped:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->activeDownloadTasks:Ljava/util/ArrayList;

    .line 373
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->maxActiveDownloadTasks:I

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 374
    :goto_1
    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    .line 375
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;

    .line 376
    invoke-static {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->access$500(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 377
    goto/16 :goto_6

    .line 380
    :cond_3
    invoke-static {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->access$300(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;

    move-result-object v5

    .line 381
    iget-boolean v6, v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;->isRemoveAction:Z

    .line 382
    if-nez v6, :cond_4

    if-eqz v0, :cond_4

    .line 383
    goto :goto_6

    .line 386
    :cond_4
    nop

    .line 387
    const/4 v7, 0x0

    const/4 v8, 0x1

    :goto_3
    if-ge v7, v3, :cond_7

    .line 388
    iget-object v9, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;

    .line 389
    invoke-static {v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->access$300(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;

    move-result-object v10

    invoke-virtual {v10, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;->isSameMedia(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 390
    if-eqz v6, :cond_5

    .line 391
    nop

    .line 392
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " clashes with "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->logd(Ljava/lang/String;)V

    .line 393
    invoke-static {v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->access$600(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;)V

    const/4 v8, 0x0

    goto :goto_4

    .line 395
    :cond_5
    invoke-static {v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->access$300(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;

    move-result-object v9

    iget-boolean v9, v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;->isRemoveAction:Z

    if-eqz v9, :cond_6

    .line 396
    nop

    .line 397
    nop

    .line 398
    const/4 v0, 0x1

    const/4 v8, 0x0

    goto :goto_5

    .line 387
    :cond_6
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 403
    :cond_7
    :goto_5
    if-eqz v8, :cond_9

    .line 404
    invoke-static {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->access$700(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;)V

    .line 405
    if-nez v6, :cond_9

    .line 406
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->activeDownloadTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->activeDownloadTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->maxActiveDownloadTasks:I

    if-ne v0, v4, :cond_8

    const/4 v0, 0x1

    goto :goto_6

    :cond_8
    const/4 v0, 0x0

    .line 374
    :cond_9
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 411
    :cond_a
    return-void

    .line 369
    :cond_b
    :goto_7
    return-void
.end method

.method private notifyListenersTaskStateChange(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;)V
    .locals 2

    .line 443
    const-string v0, "Task state is changed"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->logd(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;)V

    .line 444
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->getDownloadState()Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$TaskState;

    move-result-object p1

    .line 445
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Listener;

    .line 446
    invoke-interface {v1, p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Listener;->onTaskStateChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$TaskState;)V

    .line 447
    goto :goto_0

    .line 448
    :cond_0
    return-void
.end method

.method private onTaskStateChange(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;)V
    .locals 2

    .line 424
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->released:Z

    if-eqz v0, :cond_0

    .line 425
    return-void

    .line 427
    :cond_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->isActive()Z

    move-result v0

    .line 428
    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 429
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->activeDownloadTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 431
    :cond_1
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->notifyListenersTaskStateChange(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;)V

    .line 432
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 433
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 434
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->saveActions()V

    .line 436
    :cond_2
    if-eqz v0, :cond_3

    .line 437
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->maybeStartTasks()V

    .line 438
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->maybeNotifyListenersIdle()V

    .line 440
    :cond_3
    return-void
.end method

.method private saveActions()V
    .locals 3

    .line 501
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->released:Z

    if-eqz v0, :cond_0

    .line 502
    return-void

    .line 504
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;

    .line 505
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 506
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;

    invoke-static {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->access$300(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;

    move-result-object v2

    aput-object v2, v0, v1

    .line 505
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 508
    :cond_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->fileIOHandler:Lccsanandroid/os/Handler;

    new-instance v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$3;

    invoke-direct {v2, p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$3;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;[Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;)V

    invoke-virtual {v1, v2}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 519
    return-void
.end method


# virtual methods
.method public final addListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Listener;)V
    .locals 1

    .line 194
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 195
    return-void
.end method

.method public final getAllTaskStates()[Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$TaskState;
    .locals 4

    .line 296
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->released:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 297
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$TaskState;

    .line 298
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 299
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->getDownloadState()Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$TaskState;

    move-result-object v3

    aput-object v3, v1, v2

    .line 298
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 301
    :cond_0
    return-object v1
.end method

.method public final getDownloadCount()I
    .locals 3

    .line 273
    nop

    .line 274
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 275
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;

    invoke-static {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->access$300(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;

    move-result-object v2

    iget-boolean v2, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;->isRemoveAction:Z

    if-nez v2, :cond_0

    .line 276
    add-int/lit8 v1, v1, 0x1

    .line 274
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 279
    :cond_1
    return v1
.end method

.method public final getTaskCount()I
    .locals 1

    .line 267
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->released:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 268
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getTaskState(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$TaskState;
    .locals 3

    .line 284
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->released:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 285
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 286
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;

    .line 287
    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->access$200(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 288
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->getDownloadState()Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$TaskState;

    move-result-object p1

    return-object p1

    .line 285
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final handleAction(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;)I
    .locals 1

    .line 251
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->released:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 252
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->addTaskForAction(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;

    move-result-object p1

    .line 253
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->initialized:Z

    if-eqz v0, :cond_0

    .line 254
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->saveActions()V

    .line 255
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->maybeStartTasks()V

    .line 256
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->access$100(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;)I

    move-result v0

    if-nez v0, :cond_0

    .line 259
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->notifyListenersTaskStateChange(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;)V

    .line 262
    :cond_0
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->access$200(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;)I

    move-result p1

    return p1
.end method

.method public final handleAction([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->released:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 238
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 239
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->deserializers:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction$Deserializer;

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;->deserializeFromStream([Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction$Deserializer;Ljava/io/InputStream;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;

    move-result-object p1

    .line 240
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->handleAction(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;)I

    move-result p1

    return p1
.end method

.method public final isIdle()Z
    .locals 4

    .line 312
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->released:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 313
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->initialized:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 314
    return v2

    .line 316
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 317
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->isActive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 318
    return v2

    .line 316
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 321
    :cond_2
    return v1
.end method

.method public final isInitialized()Z
    .locals 1

    .line 306
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->released:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 307
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->initialized:Z

    return v0
.end method

.method public final release()V
    .locals 3

    .line 329
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->released:Z

    if-eqz v0, :cond_0

    .line 330
    return-void

    .line 332
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->released:Z

    .line 333
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 334
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->access$000(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;)V

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 336
    :cond_1
    new-instance v0, Lccsanandroid/os/ConditionVariable;

    invoke-direct {v0}, Lccsanandroid/os/ConditionVariable;-><init>()V

    .line 337
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->fileIOHandler:Lccsanandroid/os/Handler;

    new-instance v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$1;

    invoke-direct {v2, p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$1;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;Lccsanandroid/os/ConditionVariable;)V

    invoke-virtual {v1, v2}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 343
    invoke-virtual {v0}, Lccsanandroid/os/ConditionVariable;->block()V

    .line 344
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->fileIOThread:Lccsanandroid/os/HandlerThread;

    invoke-virtual {v0}, Lccsanandroid/os/HandlerThread;->quit()Z

    .line 345
    const-string v0, "Released"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->logd(Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method public final removeListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Listener;)V
    .locals 1

    .line 203
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 204
    return-void
.end method

.method public final startDownloads()V
    .locals 1

    .line 208
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->released:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 209
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->downloadsStopped:Z

    if-eqz v0, :cond_0

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->downloadsStopped:Z

    .line 211
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->maybeStartTasks()V

    .line 212
    const-string v0, "Downloads are started"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->logd(Ljava/lang/String;)V

    .line 214
    :cond_0
    return-void
.end method

.method public final stopDownloads()V
    .locals 2

    .line 218
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->released:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 219
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->downloadsStopped:Z

    if-nez v0, :cond_1

    .line 220
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->downloadsStopped:Z

    .line 221
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->activeDownloadTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 222
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->activeDownloadTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;->access$000(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager$Task;)V

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_0
    const-string v0, "Downloads are stopping"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadManager;->logd(Ljava/lang/String;)V

    .line 226
    :cond_1
    return-void
.end method
