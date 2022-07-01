.class public Lccsansan/cr/addDownloadListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/cr/addDownloadListener$getDownloadingList;,
        Lccsansan/cr/addDownloadListener$removeDownloadListener;,
        Lccsansan/cr/addDownloadListener$IncentiveDownloadUtils;,
        Lccsansan/cr/addDownloadListener$addDownloadListener;,
        Lccsansan/cr/addDownloadListener$getDownloadedRecordByUrl;
    }
.end annotation


# instance fields
.field private final IncentiveDownloadUtils:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsanandroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field addDownloadListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroid/view/ViewTreeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private deleteDownItem:Lccsansan/cr/addDownloadListener$getDownloadedRecordByUrl;

.field private final getDownloadStatusByUrl:Lccsansan/cr/addDownloadListener$IncentiveDownloadUtils;

.field private getDownloadedList:Z

.field private final getDownloadedRecordByUrl:Lccsansan/cr/addDownloadListener$removeDownloadListener;

.field private final getDownloadingList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lccsanandroid/view/View;",
            "Lccsansan/cr/addDownloadListener$addDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private final getDownloadingRecordByUrl:Lccsanandroid/os/Handler;

.field private removeDownloadListener:J

.field final unifiedDownload:Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    new-instance v1, Lccsansan/cr/addDownloadListener$removeDownloadListener;

    invoke-direct {v1}, Lccsansan/cr/addDownloadListener$removeDownloadListener;-><init>()V

    new-instance v2, Lccsanandroid/os/Handler;

    invoke-direct {v2}, Lccsanandroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, v0, v1, v2}, Lccsansan/cr/addDownloadListener;-><init>(Lccsanandroid/content/Context;Ljava/util/Map;Lccsansan/cr/addDownloadListener$removeDownloadListener;Lccsanandroid/os/Handler;)V

    return-void
.end method

.method constructor <init>(Lccsanandroid/content/Context;Ljava/util/Map;Lccsansan/cr/addDownloadListener$removeDownloadListener;Lccsanandroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/util/Map<",
            "Lccsanandroid/view/View;",
            "Lccsansan/cr/addDownloadListener$addDownloadListener;",
            ">;",
            "Lccsansan/cr/addDownloadListener$removeDownloadListener;",
            "Lccsanandroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccsansan/cr/addDownloadListener;->removeDownloadListener:J

    .line 67
    iput-object p2, p0, Lccsansan/cr/addDownloadListener;->getDownloadingList:Ljava/util/Map;

    .line 68
    iput-object p3, p0, Lccsansan/cr/addDownloadListener;->getDownloadedRecordByUrl:Lccsansan/cr/addDownloadListener$removeDownloadListener;

    .line 69
    iput-object p4, p0, Lccsansan/cr/addDownloadListener;->getDownloadingRecordByUrl:Lccsanandroid/os/Handler;

    .line 70
    new-instance p2, Lccsansan/cr/addDownloadListener$IncentiveDownloadUtils;

    invoke-direct {p2, p0}, Lccsansan/cr/addDownloadListener$IncentiveDownloadUtils;-><init>(Lccsansan/cr/addDownloadListener;)V

    iput-object p2, p0, Lccsansan/cr/addDownloadListener;->getDownloadStatusByUrl:Lccsansan/cr/addDownloadListener$IncentiveDownloadUtils;

    .line 71
    new-instance p2, Ljava/util/ArrayList;

    const/16 p3, 0x32

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lccsansan/cr/addDownloadListener;->IncentiveDownloadUtils:Ljava/util/ArrayList;

    .line 73
    new-instance p2, Lccsansan/cr/addDownloadListener$unifiedDownload;

    invoke-direct {p2, p0}, Lccsansan/cr/addDownloadListener$unifiedDownload;-><init>(Lccsansan/cr/addDownloadListener;)V

    iput-object p2, p0, Lccsansan/cr/addDownloadListener;->unifiedDownload:Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 81
    new-instance p2, Ljava/lang/ref/WeakReference;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lccsansan/cr/addDownloadListener;->addDownloadListener:Ljava/lang/ref/WeakReference;

    .line 82
    invoke-direct {p0, p1, p3}, Lccsansan/cr/addDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Lccsanandroid/view/View;)V

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/cr/addDownloadListener;)Lccsansan/cr/addDownloadListener$removeDownloadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/cr/addDownloadListener;->getDownloadedRecordByUrl:Lccsansan/cr/addDownloadListener$removeDownloadListener;

    return-object p0
.end method

.method private addDownloadListener(J)V
    .locals 5

    .line 48
    iget-object v0, p0, Lccsansan/cr/addDownloadListener;->getDownloadingList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 49
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsansan/cr/addDownloadListener$addDownloadListener;

    iget-wide v2, v2, Lccsansan/cr/addDownloadListener$addDownloadListener;->getDownloadingList:J

    cmp-long v4, v2, p1

    if-gez v4, :cond_0

    .line 50
    iget-object v2, p0, Lccsansan/cr/addDownloadListener;->IncentiveDownloadUtils:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 54
    :cond_1
    iget-object p1, p0, Lccsansan/cr/addDownloadListener;->IncentiveDownloadUtils:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsanandroid/view/View;

    .line 55
    invoke-virtual {p0, p2}, Lccsansan/cr/addDownloadListener;->getDownloadingList(Lccsanandroid/view/View;)V

    goto :goto_1

    .line 57
    :cond_2
    iget-object p1, p0, Lccsansan/cr/addDownloadListener;->IncentiveDownloadUtils:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method static synthetic removeDownloadListener(Lccsansan/cr/addDownloadListener;)Ljava/util/Map;
    .locals 0

    .line 2
    iget-object p0, p0, Lccsansan/cr/addDownloadListener;->getDownloadingList:Ljava/util/Map;

    return-object p0
.end method

.method private removeDownloadListener(Lccsanandroid/content/Context;Lccsanandroid/view/View;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lccsansan/cr/addDownloadListener;->addDownloadListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lccsanandroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-static {p1, p2}, Lccsansan/cr/addDownloadListener$getDownloadingList;->addDownloadListener(Lccsanandroid/content/Context;Lccsanandroid/view/View;)Lccsanandroid/view/View;

    move-result-object p1

    const-string p2, "VisibilityTracker"

    if-nez p1, :cond_1

    .line 10
    const-string p1, "Unable to set Visibility Tracker due to no available root view."

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 14
    :cond_1
    invoke-virtual {p1}, Lccsanandroid/view/View;->getViewTreeObserver()Lccsanandroid/view/ViewTreeObserver;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lccsanandroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 16
    const-string p1, "Visibility Tracker was unable to track views because the root view tree observer was not alive"

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 21
    :cond_2
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lccsansan/cr/addDownloadListener;->addDownloadListener:Ljava/lang/ref/WeakReference;

    .line 22
    iget-object p2, p0, Lccsansan/cr/addDownloadListener;->unifiedDownload:Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, p2}, Lccsanandroid/view/ViewTreeObserver;->addOnPreDrawListener(Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method static synthetic unifiedDownload(Lccsansan/cr/addDownloadListener;)Lccsansan/cr/addDownloadListener$getDownloadedRecordByUrl;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/cr/addDownloadListener;->deleteDownItem:Lccsansan/cr/addDownloadListener$getDownloadedRecordByUrl;

    return-object p0
.end method

.method static synthetic unifiedDownload(Lccsansan/cr/addDownloadListener;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lccsansan/cr/addDownloadListener;->getDownloadedList:Z

    return p1
.end method


# virtual methods
.method public IncentiveDownloadUtils(Lccsanandroid/view/View;ILjava/lang/Integer;)V
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p1, p2, p3}, Lccsansan/cr/addDownloadListener;->getDownloadingList(Lccsanandroid/view/View;Lccsanandroid/view/View;ILjava/lang/Integer;)V

    return-void
.end method

.method public getDownloadingList()V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lccsansan/cr/addDownloadListener;->removeDownloadListener()V

    .line 3
    iget-object v0, p0, Lccsansan/cr/addDownloadListener;->addDownloadListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lccsanandroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lccsansan/cr/addDownloadListener;->unifiedDownload:Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewTreeObserver;->removeOnPreDrawListener(Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lccsansan/cr/addDownloadListener;->addDownloadListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lccsansan/cr/addDownloadListener;->deleteDownItem:Lccsansan/cr/addDownloadListener$getDownloadedRecordByUrl;

    return-void
.end method

.method public getDownloadingList(Lccsanandroid/view/View;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lccsansan/cr/addDownloadListener;->getDownloadingList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getDownloadingList(Lccsanandroid/view/View;Lccsanandroid/view/View;ILjava/lang/Integer;)V
    .locals 6

    .line 25
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lccsansan/cr/addDownloadListener;->unifiedDownload(Lccsanandroid/view/View;Lccsanandroid/view/View;IILjava/lang/Integer;)V

    return-void
.end method

.method public getDownloadingList(Lccsansan/cr/addDownloadListener$getDownloadedRecordByUrl;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lccsansan/cr/addDownloadListener;->deleteDownItem:Lccsansan/cr/addDownloadListener$getDownloadedRecordByUrl;

    return-void
.end method

.method public removeDownloadListener()V
    .locals 2

    .line 59
    iget-object v0, p0, Lccsansan/cr/addDownloadListener;->getDownloadingList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 60
    iget-object v0, p0, Lccsansan/cr/addDownloadListener;->getDownloadingRecordByUrl:Lccsanandroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeMessages(I)V

    .line 61
    iput-boolean v1, p0, Lccsansan/cr/addDownloadListener;->getDownloadedList:Z

    return-void
.end method

.method public unifiedDownload()V
    .locals 4

    .line 2
    iget-boolean v0, p0, Lccsansan/cr/addDownloadListener;->getDownloadedList:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lccsansan/cr/addDownloadListener;->getDownloadedList:Z

    .line 7
    iget-object v0, p0, Lccsansan/cr/addDownloadListener;->getDownloadingRecordByUrl:Lccsanandroid/os/Handler;

    iget-object v1, p0, Lccsansan/cr/addDownloadListener;->getDownloadStatusByUrl:Lccsansan/cr/addDownloadListener$IncentiveDownloadUtils;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public unifiedDownload(Lccsanandroid/view/View;Lccsanandroid/view/View;IILjava/lang/Integer;)V
    .locals 4

    .line 26
    invoke-virtual {p2}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lccsansan/cr/addDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Lccsanandroid/view/View;)V

    .line 29
    iget-object v0, p0, Lccsansan/cr/addDownloadListener;->getDownloadingList:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsansan/cr/addDownloadListener$addDownloadListener;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lccsansan/cr/addDownloadListener$addDownloadListener;

    invoke-direct {v0}, Lccsansan/cr/addDownloadListener$addDownloadListener;-><init>()V

    .line 32
    iget-object v1, p0, Lccsansan/cr/addDownloadListener;->getDownloadingList:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {p0}, Lccsansan/cr/addDownloadListener;->unifiedDownload()V

    .line 36
    :cond_0
    invoke-static {p4, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 38
    iput-object p1, v0, Lccsansan/cr/addDownloadListener$addDownloadListener;->removeDownloadListener:Lccsanandroid/view/View;

    .line 39
    iput p3, v0, Lccsansan/cr/addDownloadListener$addDownloadListener;->IncentiveDownloadUtils:I

    .line 40
    iput p2, v0, Lccsansan/cr/addDownloadListener$addDownloadListener;->addDownloadListener:I

    .line 41
    iget-wide p1, p0, Lccsansan/cr/addDownloadListener;->removeDownloadListener:J

    iput-wide p1, v0, Lccsansan/cr/addDownloadListener$addDownloadListener;->getDownloadingList:J

    .line 42
    iput-object p5, v0, Lccsansan/cr/addDownloadListener$addDownloadListener;->unifiedDownload:Ljava/lang/Integer;

    const-wide/16 p3, 0x1

    add-long/2addr p1, p3

    .line 45
    iput-wide p1, p0, Lccsansan/cr/addDownloadListener;->removeDownloadListener:J

    .line 46
    const-wide/16 p3, 0x32

    rem-long v0, p1, p3

    const-wide/16 v2, 0x0

    cmp-long p5, v0, v2

    if-nez p5, :cond_1

    sub-long/2addr p1, p3

    .line 47
    invoke-direct {p0, p1, p2}, Lccsansan/cr/addDownloadListener;->addDownloadListener(J)V

    :cond_1
    return-void
.end method
