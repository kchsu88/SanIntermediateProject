.class Lccsancom/vungle/warren/Vungle$10;
.super Lccsancom/vungle/warren/AdEventListener;
.source "Vungle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/Vungle;->renderAd(Lccsancom/vungle/warren/AdRequest;Lccsancom/vungle/warren/PlayAdCallback;Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/model/Advertisement;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/AdRequest;Ljava/util/Map;Lccsancom/vungle/warren/PlayAdCallback;Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/tasks/JobRunner;Lccsancom/vungle/warren/VisionController;Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/model/Advertisement;)V
    .locals 0
    .param p1, "request"    # Lccsancom/vungle/warren/AdRequest;
    .param p3, "playAdCallback"    # Lccsancom/vungle/warren/PlayAdCallback;
    .param p4, "repository"    # Lccsancom/vungle/warren/persistence/Repository;
    .param p5, "adLoader"    # Lccsancom/vungle/warren/AdLoader;
    .param p6, "jobRunner"    # Lccsancom/vungle/warren/tasks/JobRunner;
    .param p7, "visionController"    # Lccsancom/vungle/warren/VisionController;
    .param p8, "placement"    # Lccsancom/vungle/warren/model/Placement;
    .param p9, "advertisement"    # Lccsancom/vungle/warren/model/Advertisement;

    .line 1109
    .local p2, "playOperations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct/range {p0 .. p9}, Lccsancom/vungle/warren/AdEventListener;-><init>(Lccsancom/vungle/warren/AdRequest;Ljava/util/Map;Lccsancom/vungle/warren/PlayAdCallback;Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/tasks/JobRunner;Lccsancom/vungle/warren/VisionController;Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/model/Advertisement;)V

    return-void
.end method


# virtual methods
.method protected onFinished()V
    .locals 1

    .line 1112
    invoke-super {p0}, Lccsancom/vungle/warren/AdEventListener;->onFinished()V

    .line 1113
    const/4 v0, 0x0

    invoke-static {v0}, Lccsancom/vungle/warren/ui/VungleActivity;->setEventListener(Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;)V

    .line 1114
    return-void
.end method
