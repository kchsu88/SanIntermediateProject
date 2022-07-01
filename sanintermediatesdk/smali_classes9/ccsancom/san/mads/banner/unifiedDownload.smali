.class public Lccsancom/san/mads/banner/unifiedDownload;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/san/mads/banner/unifiedDownload$getDownloadingList;,
        Lccsancom/san/mads/banner/unifiedDownload$IncentiveDownloadUtils;,
        Lccsancom/san/mads/banner/unifiedDownload$unifiedDownload;
    }
.end annotation


# instance fields
.field final IncentiveDownloadUtils:Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;

.field private final addDownloadListener:Lccsanandroid/view/View;

.field private deleteDownItem:Lccsancom/san/mads/banner/unifiedDownload$unifiedDownload;

.field private final getDownloadStatusByUrl:Lccsanandroid/os/Handler;

.field private getDownloadedList:Z

.field private final getDownloadedRecordByUrl:Lccsancom/san/mads/banner/unifiedDownload$getDownloadingList;

.field private final getDownloadingList:Lccsancom/san/mads/banner/unifiedDownload$IncentiveDownloadUtils;

.field private getDownloadingRecordByUrl:Z

.field removeDownloadListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroid/view/ViewTreeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final unifiedDownload:Lccsanandroid/view/View;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/view/View;Lccsanandroid/view/View;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lccsancom/san/mads/banner/unifiedDownload;->addDownloadListener:Lccsanandroid/view/View;

    .line 3
    iput-object p3, p0, Lccsancom/san/mads/banner/unifiedDownload;->unifiedDownload:Lccsanandroid/view/View;

    .line 5
    new-instance p2, Lccsancom/san/mads/banner/unifiedDownload$IncentiveDownloadUtils;

    invoke-direct {p2, p4, p5}, Lccsancom/san/mads/banner/unifiedDownload$IncentiveDownloadUtils;-><init>(II)V

    iput-object p2, p0, Lccsancom/san/mads/banner/unifiedDownload;->getDownloadingList:Lccsancom/san/mads/banner/unifiedDownload$IncentiveDownloadUtils;

    .line 6
    new-instance p2, Lccsanandroid/os/Handler;

    invoke-direct {p2}, Lccsanandroid/os/Handler;-><init>()V

    iput-object p2, p0, Lccsancom/san/mads/banner/unifiedDownload;->getDownloadStatusByUrl:Lccsanandroid/os/Handler;

    .line 7
    new-instance p2, Lccsancom/san/mads/banner/unifiedDownload$getDownloadingList;

    invoke-direct {p2, p0}, Lccsancom/san/mads/banner/unifiedDownload$getDownloadingList;-><init>(Lccsancom/san/mads/banner/unifiedDownload;)V

    iput-object p2, p0, Lccsancom/san/mads/banner/unifiedDownload;->getDownloadedRecordByUrl:Lccsancom/san/mads/banner/unifiedDownload$getDownloadingList;

    .line 9
    new-instance p2, Lccsancom/san/mads/banner/unifiedDownload$removeDownloadListener;

    invoke-direct {p2, p0}, Lccsancom/san/mads/banner/unifiedDownload$removeDownloadListener;-><init>(Lccsancom/san/mads/banner/unifiedDownload;)V

    iput-object p2, p0, Lccsancom/san/mads/banner/unifiedDownload;->IncentiveDownloadUtils:Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 17
    new-instance p2, Ljava/lang/ref/WeakReference;

    const/4 p4, 0x0

    invoke-direct {p2, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lccsancom/san/mads/banner/unifiedDownload;->removeDownloadListener:Ljava/lang/ref/WeakReference;

    .line 18
    invoke-direct {p0, p1, p3}, Lccsancom/san/mads/banner/unifiedDownload;->unifiedDownload(Lccsanandroid/content/Context;Lccsanandroid/view/View;)V

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsancom/san/mads/banner/unifiedDownload;)Lccsancom/san/mads/banner/unifiedDownload$unifiedDownload;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/mads/banner/unifiedDownload;->deleteDownItem:Lccsancom/san/mads/banner/unifiedDownload$unifiedDownload;

    return-object p0
.end method

.method static synthetic addDownloadListener(Lccsancom/san/mads/banner/unifiedDownload;)Lccsanandroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/mads/banner/unifiedDownload;->unifiedDownload:Lccsanandroid/view/View;

    return-object p0
.end method

.method static synthetic addDownloadListener(Lccsancom/san/mads/banner/unifiedDownload;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lccsancom/san/mads/banner/unifiedDownload;->getDownloadingRecordByUrl:Z

    return p1
.end method

.method static synthetic getDownloadingList(Lccsancom/san/mads/banner/unifiedDownload;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lccsancom/san/mads/banner/unifiedDownload;->getDownloadingRecordByUrl:Z

    return p0
.end method

.method static synthetic removeDownloadListener(Lccsancom/san/mads/banner/unifiedDownload;)Lccsanandroid/view/View;
    .locals 0

    .line 2
    iget-object p0, p0, Lccsancom/san/mads/banner/unifiedDownload;->addDownloadListener:Lccsanandroid/view/View;

    return-object p0
.end method

.method static synthetic removeDownloadListener(Lccsancom/san/mads/banner/unifiedDownload;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lccsancom/san/mads/banner/unifiedDownload;->getDownloadedList:Z

    return p1
.end method

.method static synthetic unifiedDownload(Lccsancom/san/mads/banner/unifiedDownload;)Lccsancom/san/mads/banner/unifiedDownload$IncentiveDownloadUtils;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/mads/banner/unifiedDownload;->getDownloadingList:Lccsancom/san/mads/banner/unifiedDownload$IncentiveDownloadUtils;

    return-object p0
.end method

.method private unifiedDownload(Lccsanandroid/content/Context;Lccsanandroid/view/View;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lccsancom/san/mads/banner/unifiedDownload;->removeDownloadListener:Ljava/lang/ref/WeakReference;

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
    invoke-static {p1, p2}, Lccsancom/san/mads/banner/getDownloadStatusByUrl;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsanandroid/view/View;)Lccsanandroid/view/View;

    move-result-object p1

    const-string p2, "Mads.VisibilityTracker"

    if-nez p1, :cond_1

    .line 10
    const-string p1, "Unable to set Visibility Tracker due to no available root view."

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 21
    :cond_2
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lccsancom/san/mads/banner/unifiedDownload;->removeDownloadListener:Ljava/lang/ref/WeakReference;

    .line 22
    iget-object p2, p0, Lccsancom/san/mads/banner/unifiedDownload;->IncentiveDownloadUtils:Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, p2}, Lccsanandroid/view/ViewTreeObserver;->addOnPreDrawListener(Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method


# virtual methods
.method IncentiveDownloadUtils()V
    .locals 4

    .line 24
    iget-boolean v0, p0, Lccsancom/san/mads/banner/unifiedDownload;->getDownloadedList:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lccsancom/san/mads/banner/unifiedDownload;->getDownloadedList:Z

    .line 29
    iget-object v0, p0, Lccsancom/san/mads/banner/unifiedDownload;->getDownloadStatusByUrl:Lccsanandroid/os/Handler;

    iget-object v1, p0, Lccsancom/san/mads/banner/unifiedDownload;->getDownloadedRecordByUrl:Lccsancom/san/mads/banner/unifiedDownload$getDownloadingList;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method addDownloadListener(Lccsancom/san/mads/banner/unifiedDownload$unifiedDownload;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lccsancom/san/mads/banner/unifiedDownload;->deleteDownItem:Lccsancom/san/mads/banner/unifiedDownload$unifiedDownload;

    return-void
.end method
