.class public abstract Lccsansan/cq/removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private addDownloadListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsancom/san/mads/banner/removeDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private getDownloadingList:Lccsansan/ck/getDownloadedCount;

.field private removeDownloadListener:Lccsansan/dt/removeDownloadListener;

.field private unifiedDownload:Lccsansan/ck/getDownloadedList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/cq/removeDownloadListener;)Lccsansan/dt/removeDownloadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/cq/removeDownloadListener;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    return-object p0
.end method

.method private unifiedDownload()V
    .locals 4

    .line 1
    iget-object v0, p0, Lccsansan/cq/removeDownloadListener;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-static {v0}, Lccsansan/dt/getDownloadedList;->IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lccsansan/ck/getDownloadedCount;

    iget-object v1, p0, Lccsansan/cq/removeDownloadListener;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-direct {v0, v1}, Lccsansan/ck/getDownloadedCount;-><init>(Lccsansan/dt/removeDownloadListener;)V

    iput-object v0, p0, Lccsansan/cq/removeDownloadListener;->getDownloadingList:Lccsansan/ck/getDownloadedCount;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lccsansan/ck/getDownloadedList;

    iget-object v1, p0, Lccsansan/cq/removeDownloadListener;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    new-instance v2, Lccsansan/cq/removeDownloadListener$addDownloadListener;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lccsansan/cq/removeDownloadListener$addDownloadListener;-><init>(Lccsansan/cq/removeDownloadListener;Lccsanandroid/os/Looper;)V

    invoke-direct {v0, v1, v2}, Lccsansan/ck/getDownloadedList;-><init>(Lccsansan/dt/removeDownloadListener;Lccsanandroid/os/Handler;)V

    iput-object v0, p0, Lccsansan/cq/removeDownloadListener;->unifiedDownload:Lccsansan/ck/getDownloadedList;

    :goto_0
    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils()V
    .locals 0

    return-void
.end method

.method public IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 9
    iget-object v0, p0, Lccsansan/cq/removeDownloadListener;->unifiedDownload:Lccsansan/ck/getDownloadedList;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0, p1, p2, p3}, Lccsansan/ck/getDownloadedList;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public addDownloadListener(Lccsanandroid/content/Context;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lccsansan/cq/removeDownloadListener;->unifiedDownload:Lccsansan/ck/getDownloadedList;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1}, Lccsansan/ck/getDownloadedList;->addDownloadListener(Lccsanandroid/content/Context;Lccsanandroid/graphics/Rect;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "ActionTrigger is Null!!!"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string v0, "AbsBaseBanner"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lccsansan/cq/removeDownloadListener;->getDownloadingList:Lccsansan/ck/getDownloadedCount;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0, p1, p2}, Lccsansan/ck/getDownloadedCount;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "WebActionTrigger is Null!!!"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string p2, "AbsBaseBanner"

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public removeDownloadListener()Lccsancom/san/mads/banner/removeDownloadListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/cq/removeDownloadListener;->addDownloadListener:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/san/mads/banner/removeDownloadListener;

    :goto_0
    return-object v0
.end method

.method public abstract removeDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/ads/AdSize;Lccsancom/san/mads/banner/getDownloadingList;Lccsansan/dt/removeDownloadListener;Lccsancom/san/mads/banner/removeDownloadListener;)V
.end method

.method protected unifiedDownload(Lccsansan/dt/removeDownloadListener;Lccsancom/san/mads/banner/removeDownloadListener;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lccsansan/cq/removeDownloadListener;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lccsansan/cq/removeDownloadListener;->addDownloadListener:Ljava/lang/ref/WeakReference;

    .line 4
    invoke-direct {p0}, Lccsansan/cq/removeDownloadListener;->unifiedDownload()V

    return-void
.end method
