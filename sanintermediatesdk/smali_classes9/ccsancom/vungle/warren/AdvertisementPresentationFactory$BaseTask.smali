.class abstract Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask;
.super Lccsanandroid/os/AsyncTask;
.source "AdvertisementPresentationFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/AdvertisementPresentationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BaseTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask$OnModelLoadListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private adRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lccsancom/vungle/warren/model/Advertisement;",
            ">;"
        }
    .end annotation
.end field

.field private onDataLoadedListener:Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask$OnModelLoadListener;

.field private plRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lccsancom/vungle/warren/model/Placement;",
            ">;"
        }
    .end annotation
.end field

.field protected final repository:Lccsancom/vungle/warren/persistence/Repository;

.field protected final vungleStaticApi:Lccsancom/vungle/warren/VungleStaticApi;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/VungleStaticApi;Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask$OnModelLoadListener;)V
    .locals 1
    .param p1, "repository"    # Lccsancom/vungle/warren/persistence/Repository;
    .param p2, "vungleStaticApi"    # Lccsancom/vungle/warren/VungleStaticApi;
    .param p3, "onModelLoadListener"    # Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask$OnModelLoadListener;

    .line 479
    invoke-direct {p0}, Lccsanandroid/os/AsyncTask;-><init>()V

    .line 476
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->adRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 477
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->plRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 480
    iput-object p1, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->repository:Lccsancom/vungle/warren/persistence/Repository;

    .line 481
    iput-object p2, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->vungleStaticApi:Lccsancom/vungle/warren/VungleStaticApi;

    .line 482
    iput-object p3, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->onDataLoadedListener:Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask$OnModelLoadListener;

    .line 483
    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .line 541
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->onDataLoadedListener:Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask$OnModelLoadListener;

    .line 542
    return-void
.end method

.method loadPresentationData(Lccsancom/vungle/warren/AdRequest;Lccsanandroid/os/Bundle;)Lccsanandroid/util/Pair;
    .locals 6
    .param p1, "request"    # Lccsancom/vungle/warren/AdRequest;
    .param p2, "savedInstanceState"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/vungle/warren/AdRequest;",
            "Lccsanandroid/os/Bundle;",
            ")",
            "Lccsanandroid/util/Pair<",
            "Lccsancom/vungle/warren/model/Advertisement;",
            "Lccsancom/vungle/warren/model/Placement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/vungle/warren/error/VungleException;
        }
    .end annotation

    .line 486
    iget-object v0, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->vungleStaticApi:Lccsancom/vungle/warren/VungleStaticApi;

    invoke-interface {v0}, Lccsancom/vungle/warren/VungleStaticApi;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 490
    const/16 v0, 0xa

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lccsancom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 494
    iget-object v1, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {p1}, Lccsancom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lccsancom/vungle/warren/model/Placement;

    invoke-virtual {v1, v2, v3}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/model/Placement;

    .line 495
    .local v1, "placement":Lccsancom/vungle/warren/model/Placement;
    if-eqz v1, :cond_6

    .line 500
    invoke-virtual {v1}, Lccsancom/vungle/warren/model/Placement;->isMultipleHBPEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lccsancom/vungle/warren/AdRequest;->getEventId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 501
    :cond_0
    new-instance v0, Lccsancom/vungle/warren/error/VungleException;

    const/16 v2, 0x24

    invoke-direct {v0, v2}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    throw v0

    .line 504
    :cond_1
    :goto_0
    iget-object v2, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->plRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 506
    const/4 v2, 0x0

    .line 507
    .local v2, "advertisement":Lccsancom/vungle/warren/model/Advertisement;
    if-nez p2, :cond_2

    .line 508
    iget-object v3, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {p1}, Lccsancom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lccsancom/vungle/warren/AdRequest;->getEventId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lccsancom/vungle/warren/persistence/Repository;->findValidAdvertisementForPlacement(Ljava/lang/String;Ljava/lang/String;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lccsancom/vungle/warren/model/Advertisement;

    goto :goto_1

    .line 511
    :cond_2
    const-string v3, "ADV_FACTORY_ADVERTISEMENT"

    invoke-virtual {p2, v3}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 512
    .local v3, "adId":Ljava/lang/String;
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 513
    iget-object v4, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->repository:Lccsancom/vungle/warren/persistence/Repository;

    const-class v5, Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v4, v3, v5}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Lccsancom/vungle/warren/model/Advertisement;

    .line 517
    .end local v3    # "adId":Ljava/lang/String;
    :cond_3
    :goto_1
    if-eqz v2, :cond_5

    .line 521
    iget-object v0, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->adRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 523
    iget-object v0, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v2}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lccsancom/vungle/warren/persistence/Repository;->getAdvertisementAssetDirectory(Ljava/lang/String;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 524
    .local v0, "assetDir":Ljava/io/File;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 529
    new-instance v3, Lccsanandroid/util/Pair;

    invoke-direct {v3, v2, v1}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 525
    :cond_4
    invoke-static {}, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Advertisement assets dir is missing"

    invoke-static {v3, v4}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    new-instance v3, Lccsancom/vungle/warren/error/VungleException;

    const/16 v4, 0x1a

    invoke-direct {v3, v4}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    throw v3

    .line 518
    .end local v0    # "assetDir":Ljava/io/File;
    :cond_5
    new-instance v3, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v3, v0}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    throw v3

    .line 496
    .end local v2    # "advertisement":Lccsancom/vungle/warren/model/Advertisement;
    :cond_6
    invoke-static {}, Lccsancom/vungle/warren/AdvertisementPresentationFactory;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "No Placement for ID"

    invoke-static {v0, v2}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    new-instance v0, Lccsancom/vungle/warren/error/VungleException;

    const/16 v2, 0xd

    invoke-direct {v0, v2}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    throw v0

    .line 491
    .end local v1    # "placement":Lccsancom/vungle/warren/model/Placement;
    :cond_7
    new-instance v1, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v1, v0}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    throw v1

    .line 487
    :cond_8
    new-instance v0, Lccsancom/vungle/warren/error/VungleException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    throw v0
.end method

.method protected onPostExecute(Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)V
    .locals 3
    .param p1, "presentationResultHolder"    # Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    .line 534
    invoke-super {p0, p1}, Lccsanandroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 535
    iget-object v0, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->onDataLoadedListener:Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask$OnModelLoadListener;

    if-eqz v0, :cond_0

    .line 536
    iget-object v1, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->adRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/model/Advertisement;

    iget-object v2, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->plRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/vungle/warren/model/Placement;

    invoke-interface {v0, v1, v2}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask$OnModelLoadListener;->onLoad(Lccsancom/vungle/warren/model/Advertisement;Lccsancom/vungle/warren/model/Placement;)V

    .line 538
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 471
    check-cast p1, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/AdvertisementPresentationFactory$BaseTask;->onPostExecute(Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)V

    return-void
.end method
