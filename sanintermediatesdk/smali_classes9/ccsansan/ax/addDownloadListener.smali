.class public Lccsansan/ax/addDownloadListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final removeDownloadListener:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lccsansan/ax/addDownloadListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private addDownloadListener:Lccsanandroid/os/PowerManager$WakeLock;

.field private final unifiedDownload:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lccsansan/ax/addDownloadListener;->removeDownloadListener:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lccsansan/ax/addDownloadListener;->unifiedDownload:Ljava/lang/String;

    .line 3
    sget-object v0, Lccsansan/ax/addDownloadListener;->removeDownloadListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addDownloadListener(Ljava/lang/String;)Lccsansan/ax/addDownloadListener;
    .locals 3

    .line 1
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "default"

    .line 4
    :cond_0
    sget-object v0, Lccsansan/ax/addDownloadListener;->removeDownloadListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    const-class v1, Lccsansan/ax/addDownloadListener;

    monitor-enter v1

    .line 6
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    new-instance v0, Lccsansan/ax/addDownloadListener;

    invoke-direct {v0, p0}, Lccsansan/ax/addDownloadListener;-><init>(Ljava/lang/String;)V

    monitor-exit v1

    return-object v0

    .line 8
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 10
    :cond_2
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsansan/ax/addDownloadListener;

    return-object p0
.end method


# virtual methods
.method public addDownloadListener(Lccsanandroid/content/Context;J)V
    .locals 2

    .line 12
    :try_start_0
    iget-object v0, p0, Lccsansan/ax/addDownloadListener;->addDownloadListener:Lccsanandroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    const-string v0, "power"

    .line 13
    invoke-virtual {p1, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/os/PowerManager;

    const/4 v0, 0x1

    .line 14
    iget-object v1, p0, Lccsansan/ax/addDownloadListener;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lccsanandroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Lccsanandroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lccsansan/ax/addDownloadListener;->addDownloadListener:Lccsanandroid/os/PowerManager$WakeLock;

    .line 16
    :cond_0
    iget-object p1, p0, Lccsansan/ax/addDownloadListener;->addDownloadListener:Lccsanandroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lccsanandroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-nez p1, :cond_1

    .line 17
    iget-object p1, p0, Lccsansan/ax/addDownloadListener;->addDownloadListener:Lccsanandroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, p2, p3}, Lccsanandroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 20
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getDownloadingList()V
    .locals 1

    .line 21
    iget-object v0, p0, Lccsansan/ax/addDownloadListener;->addDownloadListener:Lccsanandroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    return-void

    .line 25
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lccsanandroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lccsansan/ax/addDownloadListener;->addDownloadListener:Lccsanandroid/os/PowerManager$WakeLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public unifiedDownload(Lccsanandroid/content/Context;)V
    .locals 2

    .line 11
    const-wide/32 v0, 0x927c0

    invoke-virtual {p0, p1, v0, v1}, Lccsansan/ax/addDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;J)V

    return-void
.end method
