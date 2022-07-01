.class public Lccsansan/ck/pause;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/ck/pause$addDownloadListener;
    }
.end annotation


# instance fields
.field private final IncentiveDownloadUtils:Lccsansan/ck/pause$addDownloadListener;

.field private final addDownloadListener:Lccsansan/cr/addDownloadListener;

.field private getDownloadStatusByUrl:Lccsansan/cr/addDownloadListener$getDownloadedRecordByUrl;

.field private final getDownloadedList:Lccsansan/cr/addDownloadListener$removeDownloadListener;

.field private final getDownloadingList:Lccsanandroid/os/Handler;

.field private final removeDownloadListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lccsanandroid/view/View;",
            "Lccsansan/ck/getDownloadStatusByUrl;",
            ">;"
        }
    .end annotation
.end field

.field private final unifiedDownload:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lccsanandroid/view/View;",
            "Lccsansan/ck/resume<",
            "Lccsansan/ck/getDownloadStatusByUrl;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 6

    .line 1
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    new-instance v3, Lccsansan/cr/addDownloadListener$removeDownloadListener;

    invoke-direct {v3}, Lccsansan/cr/addDownloadListener$removeDownloadListener;-><init>()V

    new-instance v4, Lccsansan/cr/addDownloadListener;

    invoke-direct {v4, p1}, Lccsansan/cr/addDownloadListener;-><init>(Lccsanandroid/content/Context;)V

    new-instance v5, Lccsanandroid/os/Handler;

    .line 5
    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object p1

    invoke-direct {v5, p1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    .line 6
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lccsansan/ck/pause;-><init>(Ljava/util/Map;Ljava/util/Map;Lccsansan/cr/addDownloadListener$removeDownloadListener;Lccsansan/cr/addDownloadListener;Lccsanandroid/os/Handler;)V

    return-void
.end method

.method constructor <init>(Ljava/util/Map;Ljava/util/Map;Lccsansan/cr/addDownloadListener$removeDownloadListener;Lccsansan/cr/addDownloadListener;Lccsanandroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lccsanandroid/view/View;",
            "Lccsansan/ck/getDownloadStatusByUrl;",
            ">;",
            "Ljava/util/Map<",
            "Lccsanandroid/view/View;",
            "Lccsansan/ck/resume<",
            "Lccsansan/ck/getDownloadStatusByUrl;",
            ">;>;",
            "Lccsansan/cr/addDownloadListener$removeDownloadListener;",
            "Lccsansan/cr/addDownloadListener;",
            "Lccsanandroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lccsansan/ck/pause;->removeDownloadListener:Ljava/util/Map;

    .line 9
    iput-object p2, p0, Lccsansan/ck/pause;->unifiedDownload:Ljava/util/Map;

    .line 10
    iput-object p3, p0, Lccsansan/ck/pause;->getDownloadedList:Lccsansan/cr/addDownloadListener$removeDownloadListener;

    .line 11
    iput-object p4, p0, Lccsansan/ck/pause;->addDownloadListener:Lccsansan/cr/addDownloadListener;

    .line 13
    new-instance p1, Lccsansan/ck/pause$unifiedDownload;

    invoke-direct {p1, p0}, Lccsansan/ck/pause$unifiedDownload;-><init>(Lccsansan/ck/pause;)V

    iput-object p1, p0, Lccsansan/ck/pause;->getDownloadStatusByUrl:Lccsansan/cr/addDownloadListener$getDownloadedRecordByUrl;

    .line 42
    invoke-virtual {p4, p1}, Lccsansan/cr/addDownloadListener;->getDownloadingList(Lccsansan/cr/addDownloadListener$getDownloadedRecordByUrl;)V

    .line 44
    iput-object p5, p0, Lccsansan/ck/pause;->getDownloadingList:Lccsanandroid/os/Handler;

    .line 45
    new-instance p1, Lccsansan/ck/pause$addDownloadListener;

    invoke-direct {p1, p0}, Lccsansan/ck/pause$addDownloadListener;-><init>(Lccsansan/ck/pause;)V

    iput-object p1, p0, Lccsansan/ck/pause;->IncentiveDownloadUtils:Lccsansan/ck/pause$addDownloadListener;

    return-void
.end method

.method static synthetic getDownloadingList(Lccsansan/ck/pause;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/ck/pause;->unifiedDownload:Ljava/util/Map;

    return-object p0
.end method

.method private getDownloadingList(Lccsanandroid/view/View;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lccsansan/ck/pause;->unifiedDownload:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic removeDownloadListener(Lccsansan/ck/pause;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/ck/pause;->removeDownloadListener:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic unifiedDownload(Lccsansan/ck/pause;)Lccsansan/cr/addDownloadListener$removeDownloadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/ck/pause;->getDownloadedList:Lccsansan/cr/addDownloadListener$removeDownloadListener;

    return-object p0
.end method


# virtual methods
.method public addDownloadListener()V
    .locals 2

    .line 17
    iget-object v0, p0, Lccsansan/ck/pause;->removeDownloadListener:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 18
    iget-object v0, p0, Lccsansan/ck/pause;->unifiedDownload:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 19
    iget-object v0, p0, Lccsansan/ck/pause;->addDownloadListener:Lccsansan/cr/addDownloadListener;

    invoke-virtual {v0}, Lccsansan/cr/addDownloadListener;->removeDownloadListener()V

    .line 20
    iget-object v0, p0, Lccsansan/ck/pause;->getDownloadingList:Lccsanandroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method getDownloadingList()V
    .locals 4

    .line 2
    iget-object v0, p0, Lccsansan/ck/pause;->getDownloadingList:Lccsanandroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lccsansan/ck/pause;->getDownloadingList:Lccsanandroid/os/Handler;

    iget-object v1, p0, Lccsansan/ck/pause;->IncentiveDownloadUtils:Lccsansan/ck/pause$addDownloadListener;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public removeDownloadListener(Lccsanandroid/view/View;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lccsansan/ck/pause;->removeDownloadListener:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0, p1}, Lccsansan/ck/pause;->getDownloadingList(Lccsanandroid/view/View;)V

    .line 4
    iget-object v0, p0, Lccsansan/ck/pause;->addDownloadListener:Lccsansan/cr/addDownloadListener;

    invoke-virtual {v0, p1}, Lccsansan/cr/addDownloadListener;->getDownloadingList(Lccsanandroid/view/View;)V

    return-void
.end method

.method public unifiedDownload()V
    .locals 1

    .line 5
    invoke-virtual {p0}, Lccsansan/ck/pause;->addDownloadListener()V

    .line 6
    iget-object v0, p0, Lccsansan/ck/pause;->addDownloadListener:Lccsansan/cr/addDownloadListener;

    invoke-virtual {v0}, Lccsansan/cr/addDownloadListener;->getDownloadingList()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lccsansan/ck/pause;->getDownloadStatusByUrl:Lccsansan/cr/addDownloadListener$getDownloadedRecordByUrl;

    return-void
.end method

.method public unifiedDownload(Lccsanandroid/view/View;Lccsansan/ck/getDownloadStatusByUrl;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lccsansan/ck/pause;->removeDownloadListener:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lccsansan/ck/pause;->removeDownloadListener(Lccsanandroid/view/View;)V

    .line 9
    invoke-interface {p2}, Lccsansan/ck/getDownloadStatusByUrl;->getDownloadingList()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 13
    :cond_1
    iget-object v0, p0, Lccsansan/ck/pause;->removeDownloadListener:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lccsansan/ck/pause;->addDownloadListener:Lccsansan/cr/addDownloadListener;

    invoke-interface {p2}, Lccsansan/ck/getDownloadStatusByUrl;->unifiedDownload()I

    move-result v1

    .line 15
    invoke-interface {p2}, Lccsansan/ck/getDownloadStatusByUrl;->IncentiveDownloadUtils()Ljava/lang/Integer;

    move-result-object p2

    .line 16
    invoke-virtual {v0, p1, v1, p2}, Lccsansan/cr/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/view/View;ILjava/lang/Integer;)V

    return-void
.end method
