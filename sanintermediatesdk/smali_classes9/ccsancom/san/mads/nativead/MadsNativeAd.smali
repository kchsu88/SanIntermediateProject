.class public Lccsancom/san/mads/nativead/MadsNativeAd;
.super Lccsancom/san/mads/base/BaseMadsAd;
.source ""

# interfaces
.implements Lccsancom/san/ads/base/INativeAd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/san/mads/nativead/MadsNativeAd$removeDownloadListener;,
        Lccsancom/san/mads/nativead/MadsNativeAd$getDownloadingList;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mads.NativeAd"

.field private static final sViewBasedAdCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lccsanandroid/view/View;",
            "Ljava/lang/ref/WeakReference<",
            "Lccsancom/san/mads/nativead/MadsNativeAd;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mActionTrigger:Lccsansan/ck/getDownloadedList;

.field private mAdData:Lccsansan/dt/removeDownloadListener;

.field private mBoundView:Lccsanandroid/view/View;

.field private final mBoundViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lccsanandroid/os/Handler;

.field private mImpressionRecorded:Z

.field private mImpressionTracker:Lccsansan/ck/pause;

.field private mMediaView:Lccsancom/san/ads/MediaView;

.field private mNativeLoader:Lccsancom/san/mads/nativead/unifiedDownload;

.field private mViewListener:Lccsancom/san/mads/nativead/MadsNativeAd$getDownloadingList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lccsancom/san/mads/nativead/MadsNativeAd;->sViewBasedAdCache:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsancom/san/mads/base/BaseMadsAd;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lccsancom/san/mads/nativead/MadsNativeAd;->mBoundViews:Ljava/util/List;

    .line 7
    iput-object v0, p0, Lccsancom/san/mads/nativead/MadsNativeAd;->mAdData:Lccsansan/dt/removeDownloadListener;

    return-void
.end method

.method static synthetic access$000(Lccsancom/san/mads/nativead/MadsNativeAd;)Lccsansan/dt/removeDownloadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/mads/nativead/MadsNativeAd;->mAdData:Lccsansan/dt/removeDownloadListener;

    return-object p0
.end method

.method static synthetic access$002(Lccsancom/san/mads/nativead/MadsNativeAd;Lccsansan/dt/removeDownloadListener;)Lccsansan/dt/removeDownloadListener;
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/nativead/MadsNativeAd;->mAdData:Lccsansan/dt/removeDownloadListener;

    return-object p1
.end method

.method static synthetic access$100(Lccsancom/san/mads/nativead/MadsNativeAd;)Lccsansan/ck/getDownloadedList;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/mads/nativead/MadsNativeAd;->mActionTrigger:Lccsansan/ck/getDownloadedList;

    return-object p0
.end method

.method static synthetic access$1000(Lccsancom/san/mads/nativead/MadsNativeAd;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lccsancom/san/mads/nativead/MadsNativeAd;->mImpressionRecorded:Z

    return p0
.end method

.method static synthetic access$1002(Lccsancom/san/mads/nativead/MadsNativeAd;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lccsancom/san/mads/nativead/MadsNativeAd;->mImpressionRecorded:Z

    return p1
.end method

.method static synthetic access$102(Lccsancom/san/mads/nativead/MadsNativeAd;Lccsansan/ck/getDownloadedList;)Lccsansan/ck/getDownloadedList;
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/nativead/MadsNativeAd;->mActionTrigger:Lccsansan/ck/getDownloadedList;

    return-object p1
.end method

.method static synthetic access$200(Lccsancom/san/mads/nativead/MadsNativeAd;)Lccsanandroid/os/Handler;
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsancom/san/mads/nativead/MadsNativeAd;->initHandler()Lccsanandroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lccsancom/san/mads/nativead/MadsNativeAd;Lccsancom/san/ads/base/AdWrapper;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lccsancom/san/ads/base/SANBaseAd;->onAdLoaded(Lccsancom/san/ads/base/AdWrapper;)V

    return-void
.end method

.method static synthetic access$400(Lccsancom/san/mads/nativead/MadsNativeAd;Lccsancom/san/ads/AdError;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lccsancom/san/ads/base/SANBaseAd;->onAdLoadError(Lccsancom/san/ads/AdError;)V

    return-void
.end method

.method static synthetic access$700(Lccsancom/san/mads/nativead/MadsNativeAd;Lccsancom/san/ads/base/IAdListener$AdAction;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lccsancom/san/ads/base/SANBaseAd;->notifyAdAction(Lccsancom/san/ads/base/IAdListener$AdAction;)V

    return-void
.end method

.method static synthetic access$800(Lccsancom/san/mads/nativead/MadsNativeAd;Lccsancom/san/ads/base/IAdListener$AdAction;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lccsancom/san/ads/base/SANBaseAd;->notifyAdAction(Lccsancom/san/ads/base/IAdListener$AdAction;)V

    return-void
.end method

.method static synthetic access$900(Lccsancom/san/mads/nativead/MadsNativeAd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsancom/san/mads/nativead/MadsNativeAd;->fireImpression()V

    return-void
.end method

.method private bindClickEvent(Lccsanandroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lccsancom/san/mads/nativead/MadsNativeAd;->mBoundViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/nativead/MadsNativeAd;->mViewListener:Lccsancom/san/mads/nativead/MadsNativeAd$getDownloadingList;

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    return-void
.end method

.method private collectChildView(Ljava/util/List;Lccsanandroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;",
            "Lccsanandroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    instance-of v0, p2, Lccsanandroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 3
    check-cast p2, Lccsanandroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p2}, Lccsanandroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 5
    invoke-virtual {p2, v0}, Lccsanandroid/view/ViewGroup;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lccsancom/san/mads/nativead/MadsNativeAd;->collectChildView(Ljava/util/List;Lccsanandroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private creativeOMSession(Lccsanandroid/view/View;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/view/View;",
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#registerViewForInteraction Start, cache size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lccsancom/san/mads/nativead/MadsNativeAd;->sViewBasedAdCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/san/ads/base/SANBaseAd;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Mads.NativeAd"

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    .line 5
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 8
    invoke-virtual {p0}, Lccsancom/san/mads/nativead/MadsNativeAd;->getAdData()Lccsansan/dt/removeDownloadListener;

    move-result-object p2

    invoke-virtual {p2}, Lccsansan/dt/removeDownloadListener;->IncentiveSDK$1()Z

    move-result p2

    if-nez p2, :cond_0

    .line 9
    const-string p1, "Ad not loaded"

    invoke-static {v2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 13
    :cond_0
    iget-object p2, p0, Lccsancom/san/mads/nativead/MadsNativeAd;->mBoundView:Lccsanandroid/view/View;

    if-eqz p2, :cond_1

    .line 14
    const-string p2, "Native Ad was already registered with a View. Auto unregister and proceeding."

    invoke-static {v2, p2}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Lccsancom/san/mads/nativead/MadsNativeAd;->unregisterView()V

    .line 18
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 19
    const-string p2, "View already registered with a NativeAd. Auto unregister and proceeding."

    invoke-static {v2, p2}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/san/mads/nativead/MadsNativeAd;

    if-eqz p1, :cond_2

    .line 22
    invoke-direct {p1}, Lccsancom/san/mads/nativead/MadsNativeAd;->unregisterView()V

    :cond_2
    const/4 p1, 0x1

    return p1

    .line 23
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid set of clickable views"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must provide a View"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private fireImpression()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lccsancom/san/mads/nativead/MadsNativeAd;->getAdData()Lccsansan/dt/removeDownloadListener;

    move-result-object v0

    invoke-static {v0}, Lccsansan/ck/deleteDownList;->IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;)V

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/nativead/MadsNativeAd;->mAdData:Lccsansan/dt/removeDownloadListener;

    invoke-static {v0}, Lccsansan/di/IncentiveDownloadUtils;->removeDownloadListener(Lccsansan/dt/removeDownloadListener;)V

    .line 3
    iget-object v0, p0, Lccsancom/san/mads/nativead/MadsNativeAd;->mAdData:Lccsansan/dt/removeDownloadListener;

    invoke-static {v0}, Lccsansan/bn/getDownloadingRecordByUrl;->getDownloadingList(Lccsansan/dt/removeDownloadListener;)V

    .line 4
    invoke-virtual {p0}, Lccsancom/san/mads/nativead/MadsNativeAd;->getAdData()Lccsansan/dt/removeDownloadListener;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->setNetworkId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lccsancom/san/mads/nativead/MadsNativeAd;->mHandler:Lccsanandroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->obtainMessage(I)Lccsanandroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private getCreativeData()Lccsansan/dt/getDownloadStatusByUrl;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lccsancom/san/mads/nativead/MadsNativeAd;->getAdData()Lccsansan/dt/removeDownloadListener;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    return-object v0
.end method

.method private hasCreativeData()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lccsancom/san/mads/nativead/MadsNativeAd;->getAdData()Lccsansan/dt/removeDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lccsancom/san/mads/nativead/MadsNativeAd;->getAdData()Lccsansan/dt/removeDownloadListener;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initHandler()Lccsanandroid/os/Handler;
    .locals 2

    .line 1
    new-instance v0, Lccsancom/san/mads/nativead/MadsNativeAd$addDownloadListener;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lccsancom/san/mads/nativead/MadsNativeAd$addDownloadListener;-><init>(Lccsancom/san/mads/nativead/MadsNativeAd;Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsancom/san/mads/nativead/MadsNativeAd;->mHandler:Lccsanandroid/os/Handler;

    return-object v0
.end method

.method private registerViewAndAddClick(Lccsanandroid/view/View;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/view/View;",
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lccsansan/ck/pause;

    invoke-virtual {p1}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsansan/ck/pause;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsancom/san/mads/nativead/MadsNativeAd;->mImpressionTracker:Lccsansan/ck/pause;

    .line 2
    new-instance v1, Lccsancom/san/mads/nativead/MadsNativeAd$removeDownloadListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lccsancom/san/mads/nativead/MadsNativeAd$removeDownloadListener;-><init>(Lccsancom/san/mads/nativead/MadsNativeAd;Lccsancom/san/mads/nativead/MadsNativeAd$IncentiveDownloadUtils;)V

    invoke-virtual {v0, p1, v1}, Lccsansan/ck/pause;->unifiedDownload(Lccsanandroid/view/View;Lccsansan/ck/getDownloadStatusByUrl;)V

    .line 3
    new-instance v0, Lccsancom/san/mads/nativead/MadsNativeAd$getDownloadingList;

    invoke-direct {v0, p0, v2}, Lccsancom/san/mads/nativead/MadsNativeAd$getDownloadingList;-><init>(Lccsancom/san/mads/nativead/MadsNativeAd;Lccsancom/san/mads/nativead/MadsNativeAd$IncentiveDownloadUtils;)V

    iput-object v0, p0, Lccsancom/san/mads/nativead/MadsNativeAd;->mViewListener:Lccsancom/san/mads/nativead/MadsNativeAd$getDownloadingList;

    .line 4
    iput-object p1, p0, Lccsancom/san/mads/nativead/MadsNativeAd;->mBoundView:Lccsanandroid/view/View;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#registerViewAndAddClick , view size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/san/ads/base/SANBaseAd;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Mads.NativeAd"

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    .line 8
    invoke-direct {p0, v0}, Lccsancom/san/mads/nativead/MadsNativeAd;->bindClickEvent(Lccsanandroid/view/View;)V

    goto :goto_0

    .line 10
    :cond_0
    sget-object p2, Lccsancom/san/mads/nativead/MadsNativeAd;->sViewBasedAdCache:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#registerViewAndAddClick End, cache size = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/WeakHashMap;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/san/ads/base/SANBaseAd;->getPlacementId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private unbindClickEvent()V
    .locals 3

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/nativead/MadsNativeAd;->mBoundViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/View;

    .line 2
    invoke-virtual {v1, v2}, Lccsanandroid/view/View;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lccsancom/san/mads/nativead/MadsNativeAd;->mBoundViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iput-object v2, p0, Lccsancom/san/mads/nativead/MadsNativeAd;->mViewListener:Lccsancom/san/mads/nativead/MadsNativeAd$getDownloadingList;

    return-void
.end method

.method private unregisterView()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterView [Start], cache size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lccsancom/san/mads/nativead/MadsNativeAd;->sViewBasedAdCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "   |  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/san/ads/base/SANBaseAd;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Mads.NativeAd"

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/nativead/MadsNativeAd;->mBoundView:Lccsanandroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/san/mads/nativead/MadsNativeAd;->mBoundView:Lccsanandroid/view/View;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 3
    iget-object v0, p0, Lccsancom/san/mads/nativead/MadsNativeAd;->mBoundView:Lccsanandroid/view/View;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lccsancom/san/mads/nativead/MadsNativeAd;->mImpressionTracker:Lccsansan/ck/pause;

    if-eqz v0, :cond_0

    .line 5
    iget-object v3, p0, Lccsancom/san/mads/nativead/MadsNativeAd;->mBoundView:Lccsanandroid/view/View;

    invoke-virtual {v0, v3}, Lccsansan/ck/pause;->removeDownloadListener(Lccsanandroid/view/View;)V

    .line 6
    :cond_0
    invoke-direct {p0}, Lccsancom/san/mads/nativead/MadsNativeAd;->unbindClickEvent()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lccsancom/san/mads/nativead/MadsNativeAd;->mBoundView:Lccsanandroid/view/View;

    .line 10
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterView [End], cache size = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  |  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/san/ads/base/SANBaseAd;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/nativead/MadsNativeAd;->mImpressionTracker:Lccsansan/ck/pause;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lccsansan/ck/pause;->unifiedDownload()V

    .line 3
    :cond_0
    iget-object v0, p0, Lccsancom/san/mads/nativead/MadsNativeAd;->mNativeLoader:Lccsancom/san/mads/nativead/unifiedDownload;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadedList()V

    :cond_1
    return-void
.end method

.method public getAdData()Lccsansan/dt/removeDownloadListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/nativead/MadsNativeAd;->mAdData:Lccsansan/dt/removeDownloadListener;

    return-object v0
.end method

.method public getAdFormat()Lccsancom/san/ads/AdFormat;
    .locals 1

    .line 1
    sget-object v0, Lccsancom/san/ads/AdFormat;->NATIVE:Lccsancom/san/ads/AdFormat;

    return-object v0
.end method

.method public getAdIconView()Lccsanandroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs getAdMediaView([Ljava/lang/Object;)Lccsanandroid/view/View;
    .locals 1

    .line 1
    :try_start_0
    new-instance p1, Lccsancom/san/ads/MediaView;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lccsancom/san/ads/MediaView;-><init>(Lccsanandroid/content/Context;)V

    iput-object p1, p0, Lccsancom/san/mads/nativead/MadsNativeAd;->mMediaView:Lccsancom/san/ads/MediaView;

    .line 2
    invoke-virtual {p1, p0}, Lccsancom/san/ads/MediaView;->loadMadsMediaView(Lccsancom/san/ads/base/INativeAd;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    const-string v0, "Mads.NativeAd"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    :goto_0
    iget-object p1, p0, Lccsancom/san/mads/nativead/MadsNativeAd;->mMediaView:Lccsancom/san/ads/MediaView;

    return-object p1
.end method

.method public getCallToAction()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lccsancom/san/mads/nativead/MadsNativeAd;->hasCreativeData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lccsancom/san/mads/nativead/MadsNativeAd;->getCreativeData()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadedCount()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lccsancom/san/mads/nativead/MadsNativeAd;->hasCreativeData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lccsancom/san/mads/nativead/MadsNativeAd;->getCreativeData()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadedRecordByUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCustomAdContainer()Lccsanandroid/view/ViewGroup;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lccsancom/san/mads/nativead/MadsNativeAd;->hasCreativeData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lccsancom/san/mads/nativead/MadsNativeAd;->getCreativeData()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getNativeAd()Lccsancom/san/ads/base/SANBaseAd;
    .locals 0

    return-object p0
.end method

.method public getPosterUrl()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lccsancom/san/mads/nativead/MadsNativeAd;->hasCreativeData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lccsancom/san/mads/nativead/MadsNativeAd;->getCreativeData()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/getDownloadStatusByUrl;->deleteDownList()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lccsancom/san/mads/nativead/MadsNativeAd;->hasCreativeData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lccsancom/san/mads/nativead/MadsNativeAd;->getCreativeData()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadStatusByUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public innerLoad()V
    .locals 3

    .line 1
    const-string v0, "Mads.NativeAd"

    const-string v1, "#innerLoad"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lccsancom/san/mads/nativead/unifiedDownload;

    iget-object v1, p0, Lccsancom/san/mads/base/BaseMadsAd;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {p0}, Lccsancom/san/ads/base/SANBaseAd;->getAdInfo()Lccsancom/san/ads/AdInfo;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lccsancom/san/mads/nativead/unifiedDownload;-><init>(Lccsanandroid/content/Context;Lccsancom/san/ads/AdInfo;)V

    iput-object v0, p0, Lccsancom/san/mads/nativead/MadsNativeAd;->mNativeLoader:Lccsancom/san/mads/nativead/unifiedDownload;

    .line 3
    new-instance v1, Lccsancom/san/mads/nativead/MadsNativeAd$IncentiveDownloadUtils;

    invoke-direct {v1, p0}, Lccsancom/san/mads/nativead/MadsNativeAd$IncentiveDownloadUtils;-><init>(Lccsancom/san/mads/nativead/MadsNativeAd;)V

    invoke-virtual {v0, v1}, Lccsancom/san/mads/nativead/unifiedDownload;->getDownloadingList(Lccsancom/san/mads/nativead/removeDownloadListener;)V

    .line 19
    iget-object v0, p0, Lccsancom/san/mads/nativead/MadsNativeAd;->mNativeLoader:Lccsancom/san/mads/nativead/unifiedDownload;

    invoke-virtual {v0}, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadStatusByUrl()V

    return-void
.end method

.method public isAdReady()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lccsancom/san/mads/nativead/MadsNativeAd;->hasCreativeData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lccsancom/san/mads/nativead/MadsNativeAd;->getAdData()Lccsansan/dt/removeDownloadListener;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->updateLoadStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVideoAd()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lccsancom/san/mads/nativead/MadsNativeAd;->getAdData()Lccsansan/dt/removeDownloadListener;

    move-result-object v0

    invoke-static {v0}, Lccsansan/dt/getDownloadedList;->getDownloadingList(Lccsansan/dt/removeDownloadListener;)Z

    move-result v0

    return v0
.end method

.method public prepare(Lccsanandroid/view/View;Lccsanandroid/widget/FrameLayout$LayoutParams;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lccsancom/san/mads/nativead/MadsNativeAd;->prepare(Lccsanandroid/view/View;Ljava/util/List;Lccsanandroid/widget/FrameLayout$LayoutParams;)V

    return-void
.end method

.method public prepare(Lccsanandroid/view/View;Ljava/util/List;Lccsanandroid/widget/FrameLayout$LayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/view/View;",
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;",
            "Lccsanandroid/widget/FrameLayout$LayoutParams;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 2
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2}, Lccsancom/san/mads/nativead/MadsNativeAd;->registerViewForInteraction(Lccsanandroid/view/View;Ljava/util/List;)V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lccsancom/san/mads/nativead/MadsNativeAd;->registerViewForInteraction(Lccsanandroid/view/View;)V

    :goto_1
    return-void
.end method

.method public registerViewForInteraction(Lccsanandroid/view/View;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-direct {p0, v0, p1}, Lccsancom/san/mads/nativead/MadsNativeAd;->collectChildView(Ljava/util/List;Lccsanandroid/view/View;)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lccsancom/san/mads/nativead/MadsNativeAd;->registerViewForInteraction(Lccsanandroid/view/View;Ljava/util/List;)V

    return-void
.end method

.method public registerViewForInteraction(Lccsanandroid/view/View;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/view/View;",
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Lccsancom/san/mads/nativead/MadsNativeAd;->creativeOMSession(Lccsanandroid/view/View;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0, p1, p2}, Lccsancom/san/mads/nativead/MadsNativeAd;->registerViewAndAddClick(Lccsanandroid/view/View;Ljava/util/List;)V

    :cond_0
    return-void
.end method
