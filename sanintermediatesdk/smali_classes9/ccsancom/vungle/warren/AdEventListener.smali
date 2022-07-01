.class public Lccsancom/vungle/warren/AdEventListener;
.super Ljava/lang/Object;
.source "AdEventListener.java"

# interfaces
.implements Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final adLoader:Lccsancom/vungle/warren/AdLoader;

.field private adRewarded:Z

.field private advertisement:Lccsancom/vungle/warren/model/Advertisement;

.field private final jobRunner:Lccsancom/vungle/warren/tasks/JobRunner;

.field private percentViewed:I

.field private placement:Lccsancom/vungle/warren/model/Placement;

.field private final playAdCallback:Lccsancom/vungle/warren/PlayAdCallback;

.field private final playOperations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final repository:Lccsancom/vungle/warren/persistence/Repository;

.field private final request:Lccsancom/vungle/warren/AdRequest;

.field private successfulView:Z

.field private final visionController:Lccsancom/vungle/warren/VisionController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lccsancom/vungle/warren/AdEventListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/AdEventListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lccsancom/vungle/warren/AdRequest;Ljava/util/Map;Lccsancom/vungle/warren/PlayAdCallback;Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/tasks/JobRunner;Lccsancom/vungle/warren/VisionController;Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/model/Advertisement;)V
    .locals 2
    .param p1, "request"    # Lccsancom/vungle/warren/AdRequest;
    .param p3, "playAdCallback"    # Lccsancom/vungle/warren/PlayAdCallback;
    .param p4, "repository"    # Lccsancom/vungle/warren/persistence/Repository;
    .param p5, "adLoader"    # Lccsancom/vungle/warren/AdLoader;
    .param p6, "jobRunner"    # Lccsancom/vungle/warren/tasks/JobRunner;
    .param p7, "visionController"    # Lccsancom/vungle/warren/VisionController;
    .param p8, "placement"    # Lccsancom/vungle/warren/model/Placement;
    .param p9, "advertisement"    # Lccsancom/vungle/warren/model/Advertisement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/vungle/warren/AdRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lccsancom/vungle/warren/PlayAdCallback;",
            "Lccsancom/vungle/warren/persistence/Repository;",
            "Lccsancom/vungle/warren/AdLoader;",
            "Lccsancom/vungle/warren/tasks/JobRunner;",
            "Lccsancom/vungle/warren/VisionController;",
            "Lccsancom/vungle/warren/model/Placement;",
            "Lccsancom/vungle/warren/model/Advertisement;",
            ")V"
        }
    .end annotation

    .line 62
    .local p2, "playOperations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/vungle/warren/AdEventListener;->percentViewed:I

    .line 63
    iput-object p1, p0, Lccsancom/vungle/warren/AdEventListener;->request:Lccsancom/vungle/warren/AdRequest;

    .line 64
    iput-object p2, p0, Lccsancom/vungle/warren/AdEventListener;->playOperations:Ljava/util/Map;

    .line 65
    iput-object p3, p0, Lccsancom/vungle/warren/AdEventListener;->playAdCallback:Lccsancom/vungle/warren/PlayAdCallback;

    .line 66
    iput-object p4, p0, Lccsancom/vungle/warren/AdEventListener;->repository:Lccsancom/vungle/warren/persistence/Repository;

    .line 67
    iput-object p5, p0, Lccsancom/vungle/warren/AdEventListener;->adLoader:Lccsancom/vungle/warren/AdLoader;

    .line 68
    iput-object p6, p0, Lccsancom/vungle/warren/AdEventListener;->jobRunner:Lccsancom/vungle/warren/tasks/JobRunner;

    .line 69
    iput-object p7, p0, Lccsancom/vungle/warren/AdEventListener;->visionController:Lccsancom/vungle/warren/VisionController;

    .line 70
    iput-object p8, p0, Lccsancom/vungle/warren/AdEventListener;->placement:Lccsancom/vungle/warren/model/Placement;

    .line 71
    iput-object p9, p0, Lccsancom/vungle/warren/AdEventListener;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    .line 72
    invoke-virtual {p1}, Lccsancom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method private loadAdvertisement()V
    .locals 3

    .line 220
    iget-object v0, p0, Lccsancom/vungle/warren/AdEventListener;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lccsancom/vungle/warren/AdEventListener;->repository:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lccsancom/vungle/warren/AdEventListener;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v1}, Lccsancom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsancom/vungle/warren/AdEventListener;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v2}, Lccsancom/vungle/warren/AdRequest;->getEventId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsancom/vungle/warren/persistence/Repository;->findValidAdvertisementForPlacement(Ljava/lang/String;Ljava/lang/String;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/model/Advertisement;

    iput-object v0, p0, Lccsancom/vungle/warren/AdEventListener;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    .line 223
    :cond_0
    return-void
.end method

.method private loadPlacement()V
    .locals 3

    .line 226
    iget-object v0, p0, Lccsancom/vungle/warren/AdEventListener;->placement:Lccsancom/vungle/warren/model/Placement;

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lccsancom/vungle/warren/AdEventListener;->repository:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lccsancom/vungle/warren/AdEventListener;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v1}, Lccsancom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lccsancom/vungle/warren/model/Placement;

    invoke-virtual {v0, v1, v2}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/model/Placement;

    iput-object v0, p0, Lccsancom/vungle/warren/AdEventListener;->placement:Lccsancom/vungle/warren/model/Placement;

    .line 229
    :cond_0
    return-void
.end method


# virtual methods
.method public onError(Lccsancom/vungle/warren/error/VungleException;Ljava/lang/String;)V
    .locals 5
    .param p1, "exception"    # Lccsancom/vungle/warren/error/VungleException;
    .param p2, "placementId"    # Ljava/lang/String;

    .line 184
    invoke-direct {p0}, Lccsancom/vungle/warren/AdEventListener;->loadAdvertisement()V

    .line 186
    iget-object v0, p0, Lccsancom/vungle/warren/AdEventListener;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lccsancom/vungle/warren/error/VungleException;->getExceptionCode()I

    move-result v0

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_0

    .line 187
    iget-object v0, p0, Lccsancom/vungle/warren/AdEventListener;->adLoader:Lccsancom/vungle/warren/AdLoader;

    iget-object v1, p0, Lccsancom/vungle/warren/AdEventListener;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v1}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/AdLoader;->dropCache(Ljava/lang/String;)V

    .line 188
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/AdEventListener;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    if-eqz v0, :cond_2

    .line 192
    invoke-virtual {p1}, Lccsancom/vungle/warren/error/VungleException;->getExceptionCode()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_2

    .line 193
    invoke-virtual {p1}, Lccsancom/vungle/warren/error/VungleException;->getExceptionCode()I

    move-result v0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_2

    .line 194
    invoke-virtual {p1}, Lccsancom/vungle/warren/error/VungleException;->getExceptionCode()I

    move-result v0

    const/16 v1, 0x24

    if-eq v0, v1, :cond_2

    .line 196
    :try_start_0
    iget-object v0, p0, Lccsancom/vungle/warren/AdEventListener;->repository:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lccsancom/vungle/warren/AdEventListener;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, p2, v2}, Lccsancom/vungle/warren/persistence/Repository;->saveAndApplyState(Lccsancom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V

    .line 197
    invoke-direct {p0}, Lccsancom/vungle/warren/AdEventListener;->loadPlacement()V

    .line 198
    iget-object v0, p0, Lccsancom/vungle/warren/AdEventListener;->placement:Lccsancom/vungle/warren/model/Placement;

    if-eqz v0, :cond_1

    .line 199
    iget-object v1, p0, Lccsancom/vungle/warren/AdEventListener;->adLoader:Lccsancom/vungle/warren/AdLoader;

    invoke-virtual {v0}, Lccsancom/vungle/warren/model/Placement;->getAdSize()Lccsancom/vungle/warren/AdConfig$AdSize;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lccsancom/vungle/warren/AdLoader;->loadEndlessIfNeeded(Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/AdConfig$AdSize;J)V
    :try_end_0
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :cond_1
    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    new-instance v1, Lccsancom/vungle/warren/error/VungleException;

    const/16 v2, 0x1a

    invoke-direct {v1, v2}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    move-object p1, v1

    .line 206
    .end local v0    # "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lccsancom/vungle/warren/AdEventListener;->onFinished()V

    .line 208
    iget-object v0, p0, Lccsancom/vungle/warren/AdEventListener;->playAdCallback:Lccsancom/vungle/warren/PlayAdCallback;

    if-eqz v0, :cond_3

    .line 209
    invoke-interface {v0, p2, p1}, Lccsancom/vungle/warren/PlayAdCallback;->onError(Ljava/lang/String;Lccsancom/vungle/warren/error/VungleException;)V

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    invoke-virtual {p1}, Lccsancom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    const-string v1, "AdEventListener#PlayAdCallback"

    invoke-static {v1, v0}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_3
    return-void
.end method

.method protected onFinished()V
    .locals 2

    .line 216
    iget-object v0, p0, Lccsancom/vungle/warren/AdEventListener;->playOperations:Ljava/util/Map;

    iget-object v1, p0, Lccsancom/vungle/warren/AdEventListener;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v1}, Lccsancom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    return-void
.end method

.method public onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;

    .line 76
    invoke-direct {p0}, Lccsancom/vungle/warren/AdEventListener;->loadAdvertisement()V

    .line 77
    iget-object v0, p0, Lccsancom/vungle/warren/AdEventListener;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    const-string v1, "AdEventListener#PlayAdCallback"

    if-nez v0, :cond_1

    .line 78
    sget-object v0, Lccsancom/vungle/warren/AdEventListener;->TAG:Ljava/lang/String;

    const-string v2, "No Advertisement for ID"

    invoke-static {v0, v2}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0}, Lccsancom/vungle/warren/AdEventListener;->onFinished()V

    .line 80
    iget-object v0, p0, Lccsancom/vungle/warren/AdEventListener;->playAdCallback:Lccsancom/vungle/warren/PlayAdCallback;

    if-eqz v0, :cond_0

    .line 81
    iget-object v2, p0, Lccsancom/vungle/warren/AdEventListener;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v2}, Lccsancom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lccsancom/vungle/warren/error/VungleException;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {v0, v2, v3}, Lccsancom/vungle/warren/PlayAdCallback;->onError(Ljava/lang/String;Lccsancom/vungle/warren/error/VungleException;)V

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": AD_UNABLE_TO_PLAY"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_0
    return-void

    .line 87
    :cond_1
    invoke-direct {p0}, Lccsancom/vungle/warren/AdEventListener;->loadPlacement()V

    .line 88
    iget-object v0, p0, Lccsancom/vungle/warren/AdEventListener;->placement:Lccsancom/vungle/warren/model/Placement;

    if-nez v0, :cond_3

    .line 89
    sget-object v0, Lccsancom/vungle/warren/AdEventListener;->TAG:Ljava/lang/String;

    const-string v2, "No Placement for ID"

    invoke-static {v0, v2}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0}, Lccsancom/vungle/warren/AdEventListener;->onFinished()V

    .line 91
    iget-object v0, p0, Lccsancom/vungle/warren/AdEventListener;->playAdCallback:Lccsancom/vungle/warren/PlayAdCallback;

    if-eqz v0, :cond_2

    .line 92
    iget-object v2, p0, Lccsancom/vungle/warren/AdEventListener;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v2}, Lccsancom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lccsancom/vungle/warren/error/VungleException;

    const/16 v4, 0xd

    invoke-direct {v3, v4}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {v0, v2, v3}, Lccsancom/vungle/warren/PlayAdCallback;->onError(Ljava/lang/String;Lccsancom/vungle/warren/error/VungleException;)V

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PLACEMENT_NOT_FOUND: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_2
    return-void

    .line 99
    :cond_3
    :try_start_0
    const-string v0, "start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 100
    iget-object v0, p0, Lccsancom/vungle/warren/AdEventListener;->repository:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v4, p0, Lccsancom/vungle/warren/AdEventListener;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v0, v4, p3, v2}, Lccsancom/vungle/warren/persistence/Repository;->saveAndApplyState(Lccsancom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V

    .line 102
    iget-object v0, p0, Lccsancom/vungle/warren/AdEventListener;->playAdCallback:Lccsancom/vungle/warren/PlayAdCallback;

    if-eqz v0, :cond_4

    .line 103
    invoke-interface {v0, p3}, Lccsancom/vungle/warren/PlayAdCallback;->onAdStart(Ljava/lang/String;)V

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdStart: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/vungle/warren/VungleLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_4
    iput v3, p0, Lccsancom/vungle/warren/AdEventListener;->percentViewed:I

    .line 108
    iget-object v0, p0, Lccsancom/vungle/warren/AdEventListener;->repository:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lccsancom/vungle/warren/AdEventListener;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v1}, Lccsancom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lccsancom/vungle/warren/model/Placement;

    invoke-virtual {v0, v1, v2}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/model/Placement;

    iput-object v0, p0, Lccsancom/vungle/warren/AdEventListener;->placement:Lccsancom/vungle/warren/model/Placement;

    .line 109
    if-eqz v0, :cond_5

    .line 111
    iget-object v1, p0, Lccsancom/vungle/warren/AdEventListener;->adLoader:Lccsancom/vungle/warren/AdLoader;

    invoke-virtual {v0}, Lccsancom/vungle/warren/model/Placement;->getAdSize()Lccsancom/vungle/warren/AdConfig$AdSize;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lccsancom/vungle/warren/AdLoader;->loadEndlessIfNeeded(Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/AdConfig$AdSize;J)V

    .line 113
    :cond_5
    iget-object v0, p0, Lccsancom/vungle/warren/AdEventListener;->visionController:Lccsancom/vungle/warren/VisionController;

    invoke-virtual {v0}, Lccsancom/vungle/warren/VisionController;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 114
    iget-object v0, p0, Lccsancom/vungle/warren/AdEventListener;->visionController:Lccsancom/vungle/warren/VisionController;

    iget-object v1, p0, Lccsancom/vungle/warren/AdEventListener;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    .line 115
    invoke-virtual {v1}, Lccsancom/vungle/warren/model/Advertisement;->getCreativeId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsancom/vungle/warren/AdEventListener;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    .line 116
    invoke-virtual {v2}, Lccsancom/vungle/warren/model/Advertisement;->getCampaignId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/vungle/warren/AdEventListener;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    .line 117
    invoke-virtual {v3}, Lccsancom/vungle/warren/model/Advertisement;->getAdvertiserAppId()Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-virtual {v0, v1, v2, v3}, Lccsancom/vungle/warren/VisionController;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 119
    :cond_6
    const-string v0, "end"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v4, 0x50

    const/4 v5, 0x1

    if-eqz v0, :cond_a

    .line 120
    const-string v0, "Vungle"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cleaning up metadata and assets for placement "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " and advertisement "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lccsancom/vungle/warren/AdEventListener;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v6}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lccsancom/vungle/warren/AdEventListener;->repository:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v2, p0, Lccsancom/vungle/warren/AdEventListener;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    const/4 v6, 0x3

    invoke-virtual {v0, v2, p3, v6}, Lccsancom/vungle/warren/persistence/Repository;->saveAndApplyState(Lccsancom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V

    .line 123
    iget-object v0, p0, Lccsancom/vungle/warren/AdEventListener;->repository:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v2, p0, Lccsancom/vungle/warren/AdEventListener;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v2}, Lccsancom/vungle/warren/model/Advertisement;->getAppID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p3, v2, v3, v5}, Lccsancom/vungle/warren/persistence/Repository;->updateAndSaveReportState(Ljava/lang/String;Ljava/lang/String;II)V

    .line 126
    iget-object v0, p0, Lccsancom/vungle/warren/AdEventListener;->jobRunner:Lccsancom/vungle/warren/tasks/JobRunner;

    invoke-static {v3}, Lccsancom/vungle/warren/tasks/SendReportsJob;->makeJobInfo(Z)Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Lccsancom/vungle/warren/tasks/JobRunner;->execute(Lccsancom/vungle/warren/tasks/JobInfo;)V

    .line 128
    invoke-virtual {p0}, Lccsancom/vungle/warren/AdEventListener;->onFinished()V

    .line 131
    iget-object v0, p0, Lccsancom/vungle/warren/AdEventListener;->playAdCallback:Lccsancom/vungle/warren/PlayAdCallback;

    if-eqz v0, :cond_12

    .line 132
    iget-boolean v2, p0, Lccsancom/vungle/warren/AdEventListener;->successfulView:Z

    if-nez v2, :cond_8

    iget v2, p0, Lccsancom/vungle/warren/AdEventListener;->percentViewed:I

    if-lt v2, v4, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    :cond_8
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz p2, :cond_9

    const-string v4, "isCTAClicked"

    .line 134
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v3, 0x1

    goto :goto_2

    :cond_9
    nop

    .line 132
    :goto_2
    invoke-interface {v0, p3, v2, v3}, Lccsancom/vungle/warren/PlayAdCallback;->onAdEnd(Ljava/lang/String;ZZ)V

    .line 135
    iget-object v0, p0, Lccsancom/vungle/warren/AdEventListener;->playAdCallback:Lccsancom/vungle/warren/PlayAdCallback;

    invoke-interface {v0, p3}, Lccsancom/vungle/warren/PlayAdCallback;->onAdEnd(Ljava/lang/String;)V

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdEnd: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/vungle/warren/VungleLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 139
    :cond_a
    iget-object v0, p0, Lccsancom/vungle/warren/AdEventListener;->placement:Lccsancom/vungle/warren/model/Placement;

    invoke-virtual {v0}, Lccsancom/vungle/warren/model/Placement;->isIncentivized()Z

    move-result v0
    :try_end_0
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "onAdRewarded: "

    if-eqz v0, :cond_b

    :try_start_1
    const-string v0, "successfulView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 140
    iput-boolean v5, p0, Lccsancom/vungle/warren/AdEventListener;->successfulView:Z

    .line 141
    iget-boolean v0, p0, Lccsancom/vungle/warren/AdEventListener;->adRewarded:Z

    if-nez v0, :cond_12

    .line 142
    iput-boolean v5, p0, Lccsancom/vungle/warren/AdEventListener;->adRewarded:Z

    .line 143
    iget-object v0, p0, Lccsancom/vungle/warren/AdEventListener;->playAdCallback:Lccsancom/vungle/warren/PlayAdCallback;

    if-eqz v0, :cond_12

    .line 144
    invoke-interface {v0, p3}, Lccsancom/vungle/warren/PlayAdCallback;->onAdRewarded(Ljava/lang/String;)V

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/vungle/warren/VungleLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 148
    :cond_b
    const-string v0, "percentViewed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lccsancom/vungle/warren/AdEventListener;->placement:Lccsancom/vungle/warren/model/Placement;

    invoke-virtual {v0}, Lccsancom/vungle/warren/model/Placement;->isIncentivized()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 150
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "tokens":[Ljava/lang/String;
    array-length v6, v0

    if-ne v6, v2, :cond_c

    .line 152
    aget-object v2, v0, v5

    .line 153
    .local v2, "percentString":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lccsancom/vungle/warren/AdEventListener;->percentViewed:I

    .line 156
    .end local v2    # "percentString":Ljava/lang/String;
    :cond_c
    iget-boolean v2, p0, Lccsancom/vungle/warren/AdEventListener;->adRewarded:Z

    if-nez v2, :cond_d

    iget v2, p0, Lccsancom/vungle/warren/AdEventListener;->percentViewed:I

    if-lt v2, v4, :cond_d

    .line 157
    iput-boolean v5, p0, Lccsancom/vungle/warren/AdEventListener;->adRewarded:Z

    .line 158
    iget-object v2, p0, Lccsancom/vungle/warren/AdEventListener;->playAdCallback:Lccsancom/vungle/warren/PlayAdCallback;

    if-eqz v2, :cond_d

    .line 159
    invoke-interface {v2, p3}, Lccsancom/vungle/warren/PlayAdCallback;->onAdRewarded(Ljava/lang/String;)V

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lccsancom/vungle/warren/VungleLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .end local v0    # "tokens":[Ljava/lang/String;
    :cond_d
    goto/16 :goto_3

    :cond_e
    const-string v0, "open"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lccsancom/vungle/warren/AdEventListener;->playAdCallback:Lccsancom/vungle/warren/PlayAdCallback;

    if-eqz v0, :cond_10

    .line 165
    const-string v0, "adClick"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 166
    iget-object v0, p0, Lccsancom/vungle/warren/AdEventListener;->playAdCallback:Lccsancom/vungle/warren/PlayAdCallback;

    invoke-interface {v0, p3}, Lccsancom/vungle/warren/PlayAdCallback;->onAdClick(Ljava/lang/String;)V

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdClick: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/vungle/warren/VungleLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 168
    :cond_f
    const-string v0, "adLeftApplication"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 169
    iget-object v0, p0, Lccsancom/vungle/warren/AdEventListener;->playAdCallback:Lccsancom/vungle/warren/PlayAdCallback;

    invoke-interface {v0, p3}, Lccsancom/vungle/warren/PlayAdCallback;->onAdLeftApplication(Ljava/lang/String;)V

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdLeftApplication: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/vungle/warren/VungleLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 172
    :cond_10
    const-string v0, "adViewed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lccsancom/vungle/warren/AdEventListener;->playAdCallback:Lccsancom/vungle/warren/PlayAdCallback;

    if-eqz v0, :cond_11

    .line 173
    invoke-interface {v0, p3}, Lccsancom/vungle/warren/PlayAdCallback;->onAdViewed(Ljava/lang/String;)V

    goto :goto_3

    .line 174
    :cond_11
    const-string v0, "attach"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lccsancom/vungle/warren/AdEventListener;->playAdCallback:Lccsancom/vungle/warren/PlayAdCallback;

    if-eqz v0, :cond_12

    .line 175
    invoke-interface {v0, p2}, Lccsancom/vungle/warren/PlayAdCallback;->creativeId(Ljava/lang/String;)V
    :try_end_1
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_1 .. :try_end_1} :catch_0

    .line 179
    :cond_12
    :goto_3
    goto :goto_4

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "ignored":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    new-instance v1, Lccsancom/vungle/warren/error/VungleException;

    const/16 v2, 0x1a

    invoke-direct {v1, v2}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-virtual {p0, v1, p3}, Lccsancom/vungle/warren/AdEventListener;->onError(Lccsancom/vungle/warren/error/VungleException;Ljava/lang/String;)V

    .line 180
    .end local v0    # "ignored":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    :goto_4
    return-void
.end method
