.class public Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;
.super Ljava/lang/Object;
.source "MRAIDAdPresenter.java"

# interfaces
.implements Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;
.implements Lccsancom/vungle/warren/ui/view/WebViewAPI$MRAIDDelegate;
.implements Lccsancom/vungle/warren/ui/view/WebViewAPI$WebClientErrorHandler;


# static fields
.field private static final ACTION:Ljava/lang/String; = "action"

.field private static final ACTION_WITH_VALUE:Ljava/lang/String; = "actionWithValue"

.field private static final CLOSE:Ljava/lang/String; = "close"

.field private static final CONSENT_ACTION:Ljava/lang/String; = "consentAction"

.field private static final EXTRA_INCENTIVIZED_SENT:Ljava/lang/String; = "incentivized_sent"

.field private static final EXTRA_REPORT:Ljava/lang/String; = "saved_report"

.field private static final OPEN:Ljava/lang/String; = "open"

.field private static final OPEN_NON_MRAID:Ljava/lang/String; = "openNonMraid"

.field private static final OPEN_PRIVACY:Ljava/lang/String; = "openPrivacy"

.field private static final SUCCESSFUL_VIEW:Ljava/lang/String; = "successfulView"

.field private static final TAG:Ljava/lang/String;

.field private static final TPAT:Ljava/lang/String; = "tpat"

.field private static final USE_CUSTOM_CLOSE:Ljava/lang/String; = "useCustomClose"

.field private static final USE_CUSTOM_PRIVACY:Ljava/lang/String; = "useCustomPrivacy"

.field private static final VIDEO_VIEWED:Ljava/lang/String; = "videoViewed"


# instance fields
.field private adView:Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;

.field private adViewed:Z

.field private advertisement:Lccsancom/vungle/warren/model/Advertisement;

.field private final analytics:Lccsancom/vungle/warren/analytics/AdAnalytics;

.field private assetDir:Ljava/io/File;

.field private backEnabled:Z

.field private bus:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

.field private cookieMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsancom/vungle/warren/model/Cookie;",
            ">;"
        }
    .end annotation
.end field

.field private duration:J

.field private durationRecorder:Lccsancom/vungle/warren/ui/DurationRecorder;

.field private fileExistenceOperation:Lccsancom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;

.field private final impressionUrls:[Ljava/lang/String;

.field private isDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final omTracker:Lccsancom/vungle/warren/omsdk/OMTracker;

.field private final placement:Lccsancom/vungle/warren/model/Placement;

.field private repoCallback:Lccsancom/vungle/warren/persistence/Repository$SaveCallback;

.field private report:Lccsancom/vungle/warren/model/Report;

.field private repository:Lccsancom/vungle/warren/persistence/Repository;

.field private final scheduler:Lccsancom/vungle/warren/utility/Scheduler;

.field private sendReportIncentivized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private sessionData:Lccsancom/vungle/warren/SessionData;

.field private webClient:Lccsancom/vungle/warren/ui/view/WebViewAPI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsancom/vungle/warren/model/Advertisement;Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/utility/Scheduler;Lccsancom/vungle/warren/analytics/AdAnalytics;Lccsancom/vungle/warren/ui/view/WebViewAPI;Lccsancom/vungle/warren/ui/state/OptionsState;Ljava/io/File;Lccsancom/vungle/warren/SessionData;Lccsancom/vungle/warren/omsdk/OMTracker;[Ljava/lang/String;)V
    .locals 2
    .param p1, "advertisement"    # Lccsancom/vungle/warren/model/Advertisement;
    .param p2, "placement"    # Lccsancom/vungle/warren/model/Placement;
    .param p3, "repository"    # Lccsancom/vungle/warren/persistence/Repository;
    .param p4, "scheduler"    # Lccsancom/vungle/warren/utility/Scheduler;
    .param p5, "adAnalytics"    # Lccsancom/vungle/warren/analytics/AdAnalytics;
    .param p6, "webViewAPI"    # Lccsancom/vungle/warren/ui/view/WebViewAPI;
    .param p7, "state"    # Lccsancom/vungle/warren/ui/state/OptionsState;
    .param p8, "assetDir"    # Ljava/io/File;
    .param p9, "sessionData"    # Lccsancom/vungle/warren/SessionData;
    .param p10, "omTracker"    # Lccsancom/vungle/warren/omsdk/OMTracker;
    .param p11, "impressionUrls"    # [Ljava/lang/String;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->cookieMap:Ljava/util/Map;

    .line 141
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->sendReportIncentivized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 142
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->isDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 143
    new-instance v0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter$1;

    invoke-direct {v0, p0}, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter$1;-><init>(Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;)V

    iput-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repoCallback:Lccsancom/vungle/warren/persistence/Repository$SaveCallback;

    .line 192
    iput-object p1, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    .line 193
    iput-object p3, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lccsancom/vungle/warren/persistence/Repository;

    .line 194
    iput-object p2, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lccsancom/vungle/warren/model/Placement;

    .line 195
    iput-object p4, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->scheduler:Lccsancom/vungle/warren/utility/Scheduler;

    .line 196
    iput-object p5, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->analytics:Lccsancom/vungle/warren/analytics/AdAnalytics;

    .line 197
    iput-object p6, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->webClient:Lccsancom/vungle/warren/ui/view/WebViewAPI;

    .line 198
    iput-object p8, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->assetDir:Ljava/io/File;

    .line 199
    iput-object p9, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->sessionData:Lccsancom/vungle/warren/SessionData;

    .line 200
    iput-object p10, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->omTracker:Lccsancom/vungle/warren/omsdk/OMTracker;

    .line 201
    iput-object p11, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->impressionUrls:[Ljava/lang/String;

    .line 202
    invoke-direct {p0, p7}, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->loadData(Lccsancom/vungle/warren/ui/state/OptionsState;)V

    .line 203
    return-void
.end method

.method static synthetic access$000(Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;I)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;
    .param p1, "x1"    # I

    .line 49
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->makeBusError(I)V

    return-void
.end method

.method static synthetic access$100(Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    .line 49
    invoke-direct {p0}, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->closeView()V

    return-void
.end method

.method static synthetic access$202(Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;
    .param p1, "x1"    # Z

    .line 49
    iput-boolean p1, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->backEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;)Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    .line 49
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    return-object v0
.end method

.method static synthetic access$400(Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    .line 49
    invoke-direct {p0}, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->recordPlayRemoteUrl()V

    return-void
.end method

.method private closeView()V
    .locals 1

    .line 708
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    invoke-interface {v0}, Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;->close()V

    .line 709
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->scheduler:Lccsancom/vungle/warren/utility/Scheduler;

    invoke-interface {v0}, Lccsancom/vungle/warren/utility/Scheduler;->cancelAll()V

    .line 710
    return-void
.end method

.method private download()V
    .locals 5

    .line 691
    const-string v0, "cta"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    :try_start_0
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->analytics:Lccsancom/vungle/warren/analytics/AdAnalytics;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    iget-object v3, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v3, v1}, Lccsancom/vungle/warren/model/Advertisement;->getCTAURL(Z)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-interface {v0, v2}, Lccsancom/vungle/warren/analytics/AdAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    .line 697
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v1, v3}, Lccsancom/vungle/warren/model/Advertisement;->getCTAURL(Z)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lccsancom/vungle/warren/ui/PresenterAppLeftCallback;

    iget-object v3, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->bus:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    iget-object v4, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lccsancom/vungle/warren/model/Placement;

    invoke-direct {v2, v3, v4}, Lccsancom/vungle/warren/ui/PresenterAppLeftCallback;-><init>(Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;Lccsancom/vungle/warren/model/Placement;)V

    invoke-interface {v0, v1, v2}, Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;->open(Ljava/lang/String;Lccsancom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V
    :try_end_0
    .catch Lccsanandroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    goto :goto_0

    .line 698
    :catch_0
    move-exception v0

    .line 701
    .local v0, "invalid":Lccsanandroid/content/ActivityNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    .line 702
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#download"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 701
    const-string v2, "Download - Activity Not Found"

    invoke-static {v1, v2}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    .end local v0    # "invalid":Lccsanandroid/content/ActivityNotFoundException;
    :goto_0
    return-void
.end method

.method private handleWebViewException(I)V
    .locals 3
    .param p1, "reason"    # I

    .line 759
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    if-eqz v0, :cond_0

    .line 760
    invoke-interface {v0}, Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;->removeWebView()V

    .line 762
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    .line 763
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#handleWebViewException"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebViewException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v2, p1}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    .line 764
    invoke-virtual {v2}, Lccsancom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 762
    invoke-static {v0, v1}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->reportErrorAndCloseAd(I)V

    .line 766
    return-void
.end method

.method private loadData(Lccsancom/vungle/warren/ui/state/OptionsState;)V
    .locals 4
    .param p1, "state"    # Lccsancom/vungle/warren/ui/state/OptionsState;

    .line 713
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->cookieMap:Ljava/util/Map;

    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lccsancom/vungle/warren/persistence/Repository;

    const-class v2, Lccsancom/vungle/warren/model/Cookie;

    const-string v3, "incentivizedTextSetByPub"

    invoke-virtual {v1, v3, v2}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->cookieMap:Ljava/util/Map;

    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lccsancom/vungle/warren/persistence/Repository;

    const-class v2, Lccsancom/vungle/warren/model/Cookie;

    const-string v3, "consentIsImportantToVungle"

    invoke-virtual {v1, v3, v2}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->cookieMap:Ljava/util/Map;

    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lccsancom/vungle/warren/persistence/Repository;

    const-class v2, Lccsancom/vungle/warren/model/Cookie;

    const-string v3, "configSettings"

    invoke-virtual {v1, v3, v2}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    if-eqz p1, :cond_1

    .line 718
    const-string v0, "saved_report"

    invoke-interface {p1, v0}, Lccsancom/vungle/warren/ui/state/OptionsState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 719
    .local v0, "reportId":Ljava/lang/String;
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lccsancom/vungle/warren/persistence/Repository;

    const-class v2, Lccsancom/vungle/warren/model/Report;

    invoke-virtual {v1, v0, v2}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/model/Report;

    .line 721
    .local v1, "restoredReport":Lccsancom/vungle/warren/model/Report;
    :goto_0
    if-eqz v1, :cond_1

    .line 722
    iput-object v1, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lccsancom/vungle/warren/model/Report;

    .line 725
    .end local v0    # "reportId":Ljava/lang/String;
    .end local v1    # "restoredReport":Lccsancom/vungle/warren/model/Report;
    :cond_1
    return-void
.end method

.method private loadMraid(Ljava/io/File;)V
    .locals 4
    .param p1, "template"    # Ljava/io/File;

    .line 364
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 367
    .local v0, "dest":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "index.html"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 369
    .local v1, "indexHtml":Ljava/io/File;
    new-instance v2, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter$3;

    invoke-direct {v2, p0, v1}, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter$3;-><init>(Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;Ljava/io/File;)V

    invoke-static {v1, v2}, Lccsancom/vungle/warren/utility/AsyncFileUtils;->isFileExistAsync(Ljava/io/File;Lccsancom/vungle/warren/utility/AsyncFileUtils$FileExistCallback;)Lccsancom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;

    move-result-object v2

    iput-object v2, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->fileExistenceOperation:Lccsancom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;

    .line 386
    return-void
.end method

.method private makeBusError(I)V
    .locals 3
    .param p1, "code"    # I

    .line 775
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->bus:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz v0, :cond_0

    .line 776
    new-instance v1, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v1, p1}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v2, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lccsancom/vungle/warren/model/Placement;

    invoke-virtual {v2}, Lccsancom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onError(Lccsancom/vungle/warren/error/VungleException;Ljava/lang/String;)V

    .line 778
    :cond_0
    return-void
.end method

.method private prepare(Lccsancom/vungle/warren/ui/state/OptionsState;)V
    .locals 17
    .param p1, "state"    # Lccsancom/vungle/warren/ui/state/OptionsState;

    .line 285
    move-object/from16 v0, p0

    iget-object v1, v0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->webClient:Lccsancom/vungle/warren/ui/view/WebViewAPI;

    invoke-interface {v1, v0}, Lccsancom/vungle/warren/ui/view/WebViewAPI;->setMRAIDDelegate(Lccsancom/vungle/warren/ui/view/WebViewAPI$MRAIDDelegate;)V

    .line 286
    iget-object v1, v0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->webClient:Lccsancom/vungle/warren/ui/view/WebViewAPI;

    invoke-interface {v1, v0}, Lccsancom/vungle/warren/ui/view/WebViewAPI;->setErrorHandler(Lccsancom/vungle/warren/ui/view/WebViewAPI$WebClientErrorHandler;)V

    .line 288
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->assetDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "template"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 289
    .local v1, "template":Ljava/io/File;
    invoke-direct {v0, v1}, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->loadMraid(Ljava/io/File;)V

    .line 291
    iget-object v2, v0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->cookieMap:Ljava/util/Map;

    const-string v3, "incentivizedTextSetByPub"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/vungle/warren/model/Cookie;

    .line 292
    .local v2, "incentivizedCookie":Lccsancom/vungle/warren/model/Cookie;
    if-eqz v2, :cond_0

    .line 293
    const-string v3, "title"

    invoke-virtual {v2, v3}, Lccsancom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 294
    .local v3, "titleText":Ljava/lang/String;
    const-string v4, "body"

    invoke-virtual {v2, v4}, Lccsancom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 295
    .local v4, "bodyText":Ljava/lang/String;
    const-string v5, "continue"

    invoke-virtual {v2, v5}, Lccsancom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 296
    .local v5, "continueText":Ljava/lang/String;
    const-string v6, "close"

    invoke-virtual {v2, v6}, Lccsancom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 297
    .local v6, "closeText":Ljava/lang/String;
    iget-object v7, v0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v7, v3, v4, v5, v6}, Lccsancom/vungle/warren/model/Advertisement;->setIncentivizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    .end local v3    # "titleText":Ljava/lang/String;
    .end local v4    # "bodyText":Ljava/lang/String;
    .end local v5    # "continueText":Ljava/lang/String;
    .end local v6    # "closeText":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    if-nez v2, :cond_1

    move-object v10, v3

    goto :goto_0

    :cond_1
    const-string v4, "userID"

    invoke-virtual {v2, v4}, Lccsancom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v10, v4

    .line 302
    .local v10, "userIdFromCookie":Ljava/lang/String;
    :goto_0
    iget-object v4, v0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lccsancom/vungle/warren/model/Report;

    if-nez v4, :cond_2

    .line 303
    new-instance v4, Lccsancom/vungle/warren/model/Report;

    iget-object v6, v0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    iget-object v7, v0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lccsancom/vungle/warren/model/Placement;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v11, v0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->sessionData:Lccsancom/vungle/warren/SessionData;

    move-object v5, v4

    invoke-direct/range {v5 .. v11}, Lccsancom/vungle/warren/model/Report;-><init>(Lccsancom/vungle/warren/model/Advertisement;Lccsancom/vungle/warren/model/Placement;JLjava/lang/String;Lccsancom/vungle/warren/SessionData;)V

    iput-object v4, v0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lccsancom/vungle/warren/model/Report;

    .line 304
    iget-object v5, v0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v5}, Lccsancom/vungle/warren/model/Advertisement;->getTtDownload()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lccsancom/vungle/warren/model/Report;->setTtDownload(J)V

    .line 305
    iget-object v4, v0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v5, v0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lccsancom/vungle/warren/model/Report;

    iget-object v6, v0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repoCallback:Lccsancom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {v4, v5, v6}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lccsancom/vungle/warren/persistence/Repository$SaveCallback;)V

    .line 308
    :cond_2
    iget-object v4, v0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->durationRecorder:Lccsancom/vungle/warren/ui/DurationRecorder;

    if-nez v4, :cond_3

    .line 309
    new-instance v4, Lccsancom/vungle/warren/ui/DurationRecorder;

    iget-object v5, v0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lccsancom/vungle/warren/model/Report;

    iget-object v6, v0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v7, v0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repoCallback:Lccsancom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-direct {v4, v5, v6, v7}, Lccsancom/vungle/warren/ui/DurationRecorder;-><init>(Lccsancom/vungle/warren/model/Report;Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/persistence/Repository$SaveCallback;)V

    iput-object v4, v0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->durationRecorder:Lccsancom/vungle/warren/ui/DurationRecorder;

    .line 312
    :cond_3
    iget-object v4, v0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->cookieMap:Ljava/util/Map;

    const-string v5, "consentIsImportantToVungle"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/vungle/warren/model/Cookie;

    .line 313
    .local v4, "gdprConsent":Lccsancom/vungle/warren/model/Cookie;
    const/4 v5, 0x1

    if-eqz v4, :cond_5

    .line 315
    const-string v6, "is_country_data_protected"

    invoke-virtual {v4, v6}, Lccsancom/vungle/warren/model/Cookie;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v7, "consent_status"

    if-eqz v6, :cond_4

    invoke-virtual {v4, v7}, Lccsancom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "unknown"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    .line 317
    .local v6, "collectConsent":Z
    :goto_1
    iget-object v11, v0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->webClient:Lccsancom/vungle/warren/ui/view/WebViewAPI;

    .line 318
    const-string v8, "consent_title"

    invoke-virtual {v4, v8}, Lccsancom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 319
    const-string v8, "consent_message"

    invoke-virtual {v4, v8}, Lccsancom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 320
    const-string v8, "button_accept"

    invoke-virtual {v4, v8}, Lccsancom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 321
    const-string v8, "button_deny"

    invoke-virtual {v4, v8}, Lccsancom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 317
    move v12, v6

    invoke-interface/range {v11 .. v16}, Lccsancom/vungle/warren/ui/view/WebViewAPI;->setConsentStatus(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    if-eqz v6, :cond_5

    .line 327
    const-string v8, "opted_out_by_timeout"

    invoke-virtual {v4, v7, v8}, Lccsancom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v11, 0x3e8

    div-long/2addr v7, v11

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "timestamp"

    invoke-virtual {v4, v8, v7}, Lccsancom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 329
    const-string v7, "consent_source"

    const-string v8, "vungle_modal"

    invoke-virtual {v4, v7, v8}, Lccsancom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 330
    iget-object v7, v0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v8, v0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repoCallback:Lccsancom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {v7, v4, v8}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lccsancom/vungle/warren/persistence/Repository$SaveCallback;)V

    .line 335
    .end local v6    # "collectConsent":Z
    :cond_5
    iget-object v6, v0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    iget-object v7, v0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lccsancom/vungle/warren/model/Placement;

    invoke-virtual {v7}, Lccsancom/vungle/warren/model/Placement;->isIncentivized()Z

    move-result v7

    invoke-virtual {v6, v7}, Lccsancom/vungle/warren/model/Advertisement;->getShowCloseDelay(Z)I

    move-result v6

    .line 336
    .local v6, "delay":I
    if-lez v6, :cond_6

    .line 338
    iget-object v5, v0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->scheduler:Lccsancom/vungle/warren/utility/Scheduler;

    new-instance v7, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter$2;

    invoke-direct {v7, v0}, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter$2;-><init>(Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;)V

    int-to-long v8, v6

    invoke-interface {v5, v7, v8, v9}, Lccsancom/vungle/warren/utility/Scheduler;->schedule(Ljava/lang/Runnable;J)V

    goto :goto_2

    .line 345
    :cond_6
    iput-boolean v5, v0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->backEnabled:Z

    .line 348
    :goto_2
    iget-object v5, v0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    invoke-interface {v5}, Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;->updateWindow()V

    .line 350
    iget-object v5, v0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->bus:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz v5, :cond_7

    .line 351
    iget-object v7, v0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lccsancom/vungle/warren/model/Placement;

    invoke-virtual {v7}, Lccsancom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "start"

    invoke-interface {v5, v8, v3, v7}, Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :cond_7
    return-void
.end method

.method private recordPlayRemoteUrl()V
    .locals 4

    .line 782
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v1}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v0, v1, v2}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/model/Advertisement;

    .line 783
    .local v0, "updatedAd":Lccsancom/vungle/warren/model/Advertisement;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lccsancom/vungle/warren/model/Report;

    if-eqz v1, :cond_0

    .line 784
    iget-boolean v2, v0, Lccsancom/vungle/warren/model/Advertisement;->assetsFullyDownloaded:Z

    invoke-virtual {v1, v2}, Lccsancom/vungle/warren/model/Report;->setAllAssetDownloaded(Z)V

    .line 785
    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v2, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lccsancom/vungle/warren/model/Report;

    iget-object v3, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repoCallback:Lccsancom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {v1, v2, v3}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lccsancom/vungle/warren/persistence/Repository$SaveCallback;)V

    .line 788
    :cond_0
    return-void
.end method

.method private reportErrorAndCloseAd(I)V
    .locals 0
    .param p1, "reason"    # I

    .line 770
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->makeBusError(I)V

    .line 771
    invoke-direct {p0}, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->closeView()V

    .line 772
    return-void
.end method


# virtual methods
.method public bridge synthetic attach(Lccsancom/vungle/warren/ui/contract/AdContract$AdView;Lccsancom/vungle/warren/ui/state/OptionsState;)V
    .locals 0

    .line 49
    check-cast p1, Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    invoke-virtual {p0, p1, p2}, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->attach(Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;Lccsancom/vungle/warren/ui/state/OptionsState;)V

    return-void
.end method

.method public attach(Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;Lccsancom/vungle/warren/ui/state/OptionsState;)V
    .locals 6
    .param p1, "adView"    # Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;
    .param p2, "state"    # Lccsancom/vungle/warren/ui/state/OptionsState;

    .line 231
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->isDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 232
    iput-object p1, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    .line 233
    invoke-interface {p1, p0}, Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;->setPresenter(Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;)V

    .line 234
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->bus:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz v0, :cond_0

    .line 235
    iget-object v2, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v2}, Lccsancom/vungle/warren/model/Advertisement;->getCreativeId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lccsancom/vungle/warren/model/Placement;

    invoke-virtual {v3}, Lccsancom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "attach"

    invoke-interface {v0, v4, v2, v3}, Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->omTracker:Lccsancom/vungle/warren/omsdk/OMTracker;

    invoke-virtual {v0}, Lccsancom/vungle/warren/omsdk/OMTracker;->start()V

    .line 240
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v0}, Lccsancom/vungle/warren/model/Advertisement;->getAdConfig()Lccsancom/vungle/warren/AdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/vungle/warren/AdConfig;->getSettings()I

    move-result v0

    .line 241
    .local v0, "settings":I
    const/4 v2, 0x1

    if-lez v0, :cond_2

    .line 242
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->backEnabled:Z

    .line 246
    :cond_2
    const/4 v1, -0x1

    .line 247
    .local v1, "requestedOrientation":I
    iget-object v3, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v3}, Lccsancom/vungle/warren/model/Advertisement;->getAdConfig()Lccsancom/vungle/warren/AdConfig;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/vungle/warren/AdConfig;->getAdOrientation()I

    move-result v3

    .line 248
    .local v3, "adOrientation":I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 249
    iget-object v2, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v2}, Lccsancom/vungle/warren/model/Advertisement;->getOrientation()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 256
    :pswitch_0
    const/4 v1, 0x6

    goto :goto_0

    .line 252
    :pswitch_1
    const/4 v1, 0x7

    .line 253
    nop

    .line 257
    :goto_0
    goto :goto_1

    .line 259
    :cond_3
    if-nez v3, :cond_4

    .line 260
    const/4 v1, 0x7

    goto :goto_1

    .line 261
    :cond_4
    if-ne v3, v2, :cond_5

    .line 262
    const/4 v1, 0x6

    goto :goto_1

    .line 264
    :cond_5
    const/4 v1, 0x4

    .line 267
    :goto_1
    sget-object v2, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requested Orientation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-interface {p1, v1}, Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;->setOrientation(I)V

    .line 269
    invoke-direct {p0, p2}, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->prepare(Lccsancom/vungle/warren/ui/state/OptionsState;)V

    .line 270
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public detach(I)V
    .locals 3
    .param p1, "flag"    # I

    .line 274
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->fileExistenceOperation:Lccsancom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0}, Lccsancom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;->cancel()V

    .line 278
    :cond_0
    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->stop(I)V

    .line 279
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->webClient:Lccsancom/vungle/warren/ui/view/WebViewAPI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lccsancom/vungle/warren/ui/view/WebViewAPI;->setWebViewObserver(Lccsancom/vungle/warren/omsdk/WebViewObserver;)V

    .line 280
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->omTracker:Lccsancom/vungle/warren/omsdk/OMTracker;

    invoke-virtual {v0}, Lccsancom/vungle/warren/omsdk/OMTracker;->stop()J

    move-result-wide v0

    .line 281
    .local v0, "delay":J
    iget-object v2, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    invoke-interface {v2, v0, v1}, Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;->destroyAdView(J)V

    .line 282
    return-void
.end method

.method public generateSaveState(Lccsancom/vungle/warren/ui/state/OptionsState;)V
    .locals 3
    .param p1, "state"    # Lccsancom/vungle/warren/ui/state/OptionsState;

    .line 442
    if-nez p1, :cond_0

    .line 443
    return-void

    .line 446
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lccsancom/vungle/warren/model/Report;

    iget-object v2, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repoCallback:Lccsancom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {v0, v1, v2}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lccsancom/vungle/warren/persistence/Repository$SaveCallback;)V

    .line 447
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lccsancom/vungle/warren/model/Report;

    invoke-virtual {v0}, Lccsancom/vungle/warren/model/Report;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "saved_report"

    invoke-interface {p1, v1, v0}, Lccsancom/vungle/warren/ui/state/OptionsState;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->sendReportIncentivized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "incentivized_sent"

    invoke-interface {p1, v1, v0}, Lccsancom/vungle/warren/ui/state/OptionsState;->put(Ljava/lang/String;Z)V

    .line 449
    return-void
.end method

.method public handleExit()Z
    .locals 2

    .line 478
    iget-boolean v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->backEnabled:Z

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    const-string v1, "javascript:window.vungle.mraidBridgeExt.requestMRAIDClose()"

    invoke-interface {v0, v1}, Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;->showWebsite(Ljava/lang/String;)V

    .line 483
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onMraidAction(Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    .line 672
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "download"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v0, "close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v0, "privacy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 686
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 683
    :pswitch_0
    goto :goto_2

    .line 679
    :pswitch_1
    invoke-direct {p0}, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->download()V

    .line 680
    goto :goto_2

    .line 675
    :pswitch_2
    invoke-direct {p0}, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->closeView()V

    .line 676
    nop

    .line 688
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x12bedc78 -> :sswitch_2
        0x5a5ddf8 -> :sswitch_1
        0x551ac888 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onReceivedError(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "errorDesc"    # Ljava/lang/String;
    .param p2, "didCrash"    # Z

    .line 729
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lccsancom/vungle/warren/model/Report;

    if-eqz v0, :cond_0

    .line 730
    invoke-virtual {v0, p1}, Lccsancom/vungle/warren/model/Report;->recordError(Ljava/lang/String;)V

    .line 731
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lccsancom/vungle/warren/model/Report;

    iget-object v2, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repoCallback:Lccsancom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {v0, v1, v2}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lccsancom/vungle/warren/persistence/Repository$SaveCallback;)V

    .line 733
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    .line 734
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#onReceivedError"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 733
    invoke-static {v0, p1}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    if-eqz p2, :cond_1

    .line 737
    const/16 v0, 0x26

    invoke-direct {p0, v0}, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->reportErrorAndCloseAd(I)V

    .line 739
    :cond_1
    return-void
.end method

.method public onRenderProcessUnresponsive(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/WebViewRenderProcess;)V
    .locals 3
    .param p1, "webView"    # Lccsanandroid/webkit/WebView;
    .param p2, "webViewRenderProcess"    # Lccsanandroid/webkit/WebViewRenderProcess;

    .line 752
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->handleWebViewException(I)V

    .line 753
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    .line 754
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#onRenderProcessUnresponsive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v2, v0}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    .line 755
    invoke-virtual {v2}, Lccsancom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    .line 753
    invoke-static {v1, v0}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    return-void
.end method

.method public onViewConfigurationChanged()V
    .locals 2

    .line 225
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    invoke-interface {v0}, Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;->updateWindow()V

    .line 226
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->webClient:Lccsancom/vungle/warren/ui/view/WebViewAPI;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lccsancom/vungle/warren/ui/view/WebViewAPI;->notifyPropertiesChange(Z)V

    .line 227
    return-void
.end method

.method public onWebRenderingProcessGone(Lccsanandroid/webkit/WebView;Z)Z
    .locals 3
    .param p1, "view"    # Lccsanandroid/webkit/WebView;
    .param p2, "didCrash"    # Z

    .line 743
    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->handleWebViewException(I)V

    .line 744
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    .line 745
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "onWebRenderingProcessGone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v2, v0}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    .line 746
    invoke-virtual {v2}, Lccsancom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    .line 744
    invoke-static {v1, v0}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const/4 v0, 0x1

    return v0
.end method

.method public processCommand(Ljava/lang/String;Lccsancom/google/gson/JsonObject;)Z
    .locals 20
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "arguments"    # Lccsancom/google/gson/JsonObject;

    .line 489
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v4, "useCustomPrivacy"

    const-string v5, "openNonMraid"

    const-string v6, "successfulView"

    const-string v8, "open"

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v0, "useCustomClose"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "close"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v0, "tpat"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_4
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_5
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_6
    const-string v0, "openPrivacy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_7
    const-string v0, "consentAction"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_8
    const-string v0, "actionWithValue"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_9
    const-string v0, "action"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_a
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    const-string v12, "user"

    const-string v13, "adStartTime"

    const-string v14, "app_id"

    const-string v15, "placement_reference_id"

    const-string v7, "isReportIncentivizedEnabled"

    const-string v9, "Unknown value "

    const-string v10, "configSettings"

    const-string v11, "gone"

    move-object/from16 v18, v5

    const-string v5, "url"

    const-string v2, "event"

    move-object/from16 v19, v2

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 663
    move-object/from16 v4, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    .line 664
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#processCommand"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 663
    const-string v2, "Unknown MRAID Command"

    invoke-static {v0, v2}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    const/4 v0, 0x0

    return v0

    .line 645
    :pswitch_0
    iget-object v0, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->bus:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz v0, :cond_1

    .line 646
    iget-object v4, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lccsancom/vungle/warren/model/Placement;

    invoke-virtual {v4}, Lccsancom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v6, v2, v4}, Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    :cond_1
    iget-object v0, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->cookieMap:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/model/Cookie;

    .line 650
    .local v0, "configCookie":Lccsancom/vungle/warren/model/Cookie;
    iget-object v2, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lccsancom/vungle/warren/model/Placement;

    invoke-virtual {v2}, Lccsancom/vungle/warren/model/Placement;->isIncentivized()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0, v7}, Lccsancom/vungle/warren/model/Cookie;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->sendReportIncentivized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 652
    new-instance v2, Lccsancom/google/gson/JsonObject;

    invoke-direct {v2}, Lccsancom/google/gson/JsonObject;-><init>()V

    .line 653
    .local v2, "body":Lccsancom/google/gson/JsonObject;
    new-instance v4, Lccsancom/google/gson/JsonPrimitive;

    iget-object v5, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lccsancom/vungle/warren/model/Placement;

    invoke-virtual {v5}, Lccsancom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lccsancom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15, v4}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 654
    new-instance v4, Lccsancom/google/gson/JsonPrimitive;

    iget-object v5, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v5}, Lccsancom/vungle/warren/model/Advertisement;->getAppID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lccsancom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14, v4}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 655
    new-instance v4, Lccsancom/google/gson/JsonPrimitive;

    iget-object v5, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lccsancom/vungle/warren/model/Report;

    invoke-virtual {v5}, Lccsancom/vungle/warren/model/Report;->getAdStartTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v4, v5}, Lccsancom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v2, v13, v4}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 656
    new-instance v4, Lccsancom/google/gson/JsonPrimitive;

    iget-object v5, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lccsancom/vungle/warren/model/Report;

    invoke-virtual {v5}, Lccsancom/vungle/warren/model/Report;->getUserID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lccsancom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12, v4}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 657
    iget-object v4, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->analytics:Lccsancom/vungle/warren/analytics/AdAnalytics;

    invoke-interface {v4, v2}, Lccsancom/vungle/warren/analytics/AdAnalytics;->ri(Lccsancom/google/gson/JsonObject;)V

    .line 659
    .end local v2    # "body":Lccsancom/google/gson/JsonObject;
    :cond_2
    const/4 v2, 0x1

    return v2

    .line 638
    .end local v0    # "configCookie":Lccsancom/vungle/warren/model/Cookie;
    :pswitch_1
    invoke-virtual {v3, v5}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, "url":Ljava/lang/String;
    iget-object v2, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    new-instance v4, Lccsancom/vungle/warren/ui/PresenterAppLeftCallback;

    iget-object v5, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->bus:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    iget-object v6, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lccsancom/vungle/warren/model/Placement;

    invoke-direct {v4, v5, v6}, Lccsancom/vungle/warren/ui/PresenterAppLeftCallback;-><init>(Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;Lccsancom/vungle/warren/model/Placement;)V

    invoke-interface {v2, v0, v4}, Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;->open(Ljava/lang/String;Lccsancom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V

    .line 640
    const/4 v2, 0x1

    return v2

    .line 624
    .end local v0    # "url":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {v3, v4}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 625
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    :cond_3
    goto :goto_2

    :sswitch_b
    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v7, 0x2

    goto :goto_3

    :sswitch_c
    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v7, 0x1

    goto :goto_3

    :sswitch_d
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v7, 0x0

    goto :goto_3

    :goto_2
    const/4 v7, -0x1

    :goto_3
    packed-switch v7, :pswitch_data_1

    .line 631
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 629
    :pswitch_3
    nop

    .line 633
    const/4 v2, 0x1

    return v2

    .line 612
    .end local v0    # "value":Ljava/lang/String;
    :pswitch_4
    const-string v0, "sdkCloseButton"

    invoke-virtual {v3, v0}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 613
    .restart local v0    # "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_2

    :cond_4
    goto :goto_4

    :sswitch_e
    const-string v2, "visible"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v7, 0x2

    goto :goto_5

    :sswitch_f
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v7, 0x0

    goto :goto_5

    :sswitch_10
    const-string v2, "invisible"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v7, 0x1

    goto :goto_5

    :goto_4
    const/4 v7, -0x1

    :goto_5
    packed-switch v7, :pswitch_data_2

    .line 619
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 617
    :pswitch_5
    nop

    .line 621
    const/4 v2, 0x1

    return v2

    .line 592
    .end local v0    # "value":Ljava/lang/String;
    :pswitch_6
    const-string v0, "download"

    invoke-virtual {v1, v0, v2}, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    move-object/from16 v4, p1

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 594
    const-string v0, "mraidOpen"

    invoke-virtual {v1, v0, v2}, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 595
    :cond_5
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 596
    const-string v0, "nonMraidOpen"

    invoke-virtual {v1, v0, v2}, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    :cond_6
    :goto_6
    invoke-virtual {v3, v5}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 600
    .local v0, "url":Ljava/lang/String;
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_7

    .line 603
    :cond_7
    iget-object v2, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    new-instance v5, Lccsancom/vungle/warren/ui/PresenterAppLeftCallback;

    iget-object v6, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->bus:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    iget-object v7, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lccsancom/vungle/warren/model/Placement;

    invoke-direct {v5, v6, v7}, Lccsancom/vungle/warren/ui/PresenterAppLeftCallback;-><init>(Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;Lccsancom/vungle/warren/model/Placement;)V

    invoke-interface {v2, v0, v5}, Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;->open(Ljava/lang/String;Lccsancom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V

    goto :goto_8

    .line 601
    :cond_8
    :goto_7
    sget-object v2, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->TAG:Ljava/lang/String;

    const-string v5, "CTA destination URL is not configured properly"

    invoke-static {v2, v5}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :goto_8
    iget-object v2, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->bus:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz v2, :cond_9

    .line 607
    iget-object v5, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lccsancom/vungle/warren/model/Placement;

    invoke-virtual {v5}, Lccsancom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "adClick"

    invoke-interface {v2, v8, v6, v5}, Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    :cond_9
    const/4 v2, 0x1

    return v2

    .line 588
    .end local v0    # "url":Ljava/lang/String;
    :pswitch_7
    move-object/from16 v4, p1

    const/4 v2, 0x1

    return v2

    .line 581
    :pswitch_8
    move-object/from16 v4, p1

    move-object/from16 v0, v19

    const/4 v2, 0x1

    invoke-virtual {v3, v0}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, "event":Ljava/lang/String;
    iget-object v5, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->analytics:Lccsancom/vungle/warren/analytics/AdAnalytics;

    iget-object v6, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v6, v0}, Lccsancom/vungle/warren/model/Advertisement;->getTpatUrls(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lccsancom/vungle/warren/analytics/AdAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    .line 584
    return v2

    .line 513
    .end local v0    # "event":Ljava/lang/String;
    :pswitch_9
    move-object/from16 v4, p1

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 514
    .local v5, "action":Ljava/lang/String;
    const-string v0, "value"

    invoke-virtual {v3, v0}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 515
    .local v6, "value":Ljava/lang/String;
    iget-object v0, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lccsancom/vungle/warren/model/Report;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v5, v6, v8, v9}, Lccsancom/vungle/warren/model/Report;->recordAction(Ljava/lang/String;Ljava/lang/String;J)V

    .line 516
    iget-object v0, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v8, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lccsancom/vungle/warren/model/Report;

    iget-object v9, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repoCallback:Lccsancom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {v0, v8, v9}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lccsancom/vungle/warren/persistence/Repository$SaveCallback;)V

    .line 520
    const-string v0, "videoViewed"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 522
    const/4 v8, 0x0

    .line 524
    .local v8, "position":F
    :try_start_0
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v8, v0

    .line 527
    goto :goto_9

    .line 525
    :catch_0
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 526
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    sget-object v9, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->TAG:Ljava/lang/String;

    const-string v11, "value for videoViewed is null !"

    invoke-static {v9, v11}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    :goto_9
    iget-object v0, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->bus:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz v0, :cond_a

    const/4 v9, 0x0

    cmpl-float v9, v8, v9

    if-lez v9, :cond_a

    iget-boolean v9, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adViewed:Z

    if-nez v9, :cond_a

    .line 530
    const/4 v9, 0x1

    iput-boolean v9, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adViewed:Z

    .line 531
    iget-object v9, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lccsancom/vungle/warren/model/Placement;

    invoke-virtual {v9}, Lccsancom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v9

    const-string v11, "adViewed"

    invoke-interface {v0, v11, v2, v9}, Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-object v0, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->impressionUrls:[Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 533
    iget-object v9, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->analytics:Lccsancom/vungle/warren/analytics/AdAnalytics;

    invoke-interface {v9, v0}, Lccsancom/vungle/warren/analytics/AdAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    .line 537
    :cond_a
    iget-wide v2, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->duration:J

    const-wide/16 v16, 0x0

    cmp-long v0, v2, v16

    if-lez v0, :cond_d

    .line 539
    long-to-float v0, v2

    div-float v0, v8, v0

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 541
    .local v0, "percent":I
    if-lez v0, :cond_c

    .line 542
    iget-object v2, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->bus:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz v2, :cond_b

    .line 543
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "percentViewed:"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v11, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lccsancom/vungle/warren/model/Placement;

    invoke-virtual {v11}, Lccsancom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v11

    const/4 v9, 0x0

    invoke-interface {v2, v3, v9, v11}, Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    :cond_b
    iget-object v2, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->cookieMap:Ljava/util/Map;

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/vungle/warren/model/Cookie;

    .line 547
    .local v2, "configCookie":Lccsancom/vungle/warren/model/Cookie;
    iget-object v3, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lccsancom/vungle/warren/model/Placement;

    invoke-virtual {v3}, Lccsancom/vungle/warren/model/Placement;->isIncentivized()Z

    move-result v3

    if-eqz v3, :cond_c

    const/16 v3, 0x4b

    if-le v0, v3, :cond_c

    if-eqz v2, :cond_c

    .line 548
    invoke-virtual {v2, v7}, Lccsancom/vungle/warren/model/Cookie;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->sendReportIncentivized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 549
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    if-nez v3, :cond_c

    .line 551
    new-instance v3, Lccsancom/google/gson/JsonObject;

    invoke-direct {v3}, Lccsancom/google/gson/JsonObject;-><init>()V

    .line 552
    .local v3, "body":Lccsancom/google/gson/JsonObject;
    new-instance v7, Lccsancom/google/gson/JsonPrimitive;

    iget-object v9, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lccsancom/vungle/warren/model/Placement;

    invoke-virtual {v9}, Lccsancom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Lccsancom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v15, v7}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 553
    new-instance v7, Lccsancom/google/gson/JsonPrimitive;

    iget-object v9, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v9}, Lccsancom/vungle/warren/model/Advertisement;->getAppID()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Lccsancom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14, v7}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 554
    new-instance v7, Lccsancom/google/gson/JsonPrimitive;

    iget-object v9, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lccsancom/vungle/warren/model/Report;

    invoke-virtual {v9}, Lccsancom/vungle/warren/model/Report;->getAdStartTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-direct {v7, v9}, Lccsancom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v3, v13, v7}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 555
    new-instance v7, Lccsancom/google/gson/JsonPrimitive;

    iget-object v9, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lccsancom/vungle/warren/model/Report;

    invoke-virtual {v9}, Lccsancom/vungle/warren/model/Report;->getUserID()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Lccsancom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12, v7}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 556
    iget-object v7, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->analytics:Lccsancom/vungle/warren/analytics/AdAnalytics;

    invoke-interface {v7, v3}, Lccsancom/vungle/warren/analytics/AdAnalytics;->ri(Lccsancom/google/gson/JsonObject;)V

    .line 560
    .end local v2    # "configCookie":Lccsancom/vungle/warren/model/Cookie;
    .end local v3    # "body":Lccsancom/google/gson/JsonObject;
    :cond_c
    iget-object v2, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->durationRecorder:Lccsancom/vungle/warren/ui/DurationRecorder;

    invoke-virtual {v2}, Lccsancom/vungle/warren/ui/DurationRecorder;->update()V

    .line 564
    .end local v0    # "percent":I
    .end local v8    # "position":F
    :cond_d
    const-string v0, "videoLength"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 568
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->duration:J

    .line 569
    invoke-virtual {v1, v0, v6}, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    iget-object v0, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->webClient:Lccsancom/vungle/warren/ui/view/WebViewAPI;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lccsancom/vungle/warren/ui/view/WebViewAPI;->notifyPropertiesChange(Z)V

    goto :goto_a

    .line 564
    :cond_e
    const/4 v2, 0x1

    .line 574
    :goto_a
    iget-object v0, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    invoke-interface {v0, v2}, Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;->setVisibility(Z)V

    .line 575
    return v2

    .line 497
    .end local v5    # "action":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :pswitch_a
    move-object/from16 v4, p1

    move-object/from16 v0, v19

    iget-object v2, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->cookieMap:Ljava/util/Map;

    const-string v3, "consentIsImportantToVungle"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/vungle/warren/model/Cookie;

    .line 498
    .local v2, "gdprConsent":Lccsancom/vungle/warren/model/Cookie;
    if-nez v2, :cond_f

    .line 499
    new-instance v5, Lccsancom/vungle/warren/model/Cookie;

    invoke-direct {v5, v3}, Lccsancom/vungle/warren/model/Cookie;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 502
    :cond_f
    move-object/from16 v3, p2

    invoke-virtual {v3, v0}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 503
    .local v0, "value":Ljava/lang/String;
    const-string v5, "consent_status"

    invoke-virtual {v2, v5, v0}, Lccsancom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 504
    const-string v5, "consent_source"

    const-string v6, "vungle_modal"

    invoke-virtual {v2, v5, v6}, Lccsancom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 505
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "timestamp"

    invoke-virtual {v2, v6, v5}, Lccsancom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 508
    iget-object v5, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v6, v1, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repoCallback:Lccsancom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {v5, v2, v6}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lccsancom/vungle/warren/persistence/Repository$SaveCallback;)V

    .line 509
    const/4 v5, 0x1

    return v5

    .line 492
    .end local v0    # "value":Ljava/lang/String;
    .end local v2    # "gdprConsent":Lccsancom/vungle/warren/model/Cookie;
    :pswitch_b
    move-object/from16 v4, p1

    const/4 v5, 0x1

    const-string v0, "mraidClose"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-direct/range {p0 .. p0}, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->closeView()V

    .line 494
    return v5

    :sswitch_data_0
    .sparse-switch
        -0x71fc83a1 -> :sswitch_a
        -0x54d081ca -> :sswitch_9
        -0x2bd2454b -> :sswitch_8
        -0x2762d110 -> :sswitch_7
        -0x1e7a3222 -> :sswitch_6
        -0x18f2f4ec -> :sswitch_5
        -0x14bf8370 -> :sswitch_4
        0x34264a -> :sswitch_3
        0x366baf -> :sswitch_2
        0x5a5ddf8 -> :sswitch_1
        0x6037d900 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x30809f -> :sswitch_d
        0x36758e -> :sswitch_c
        0x5cb1923 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x715b4053 -> :sswitch_10
        0x30809f -> :sswitch_f
        0x1bd1f072 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public reportAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 211
    const-string v0, "videoLength"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->duration:J

    .line 215
    iget-object v2, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lccsancom/vungle/warren/model/Report;

    invoke-virtual {v2, v0, v1}, Lccsancom/vungle/warren/model/Report;->setVideoLength(J)V

    .line 216
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lccsancom/vungle/warren/model/Report;

    iget-object v2, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repoCallback:Lccsancom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {v0, v1, v2}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lccsancom/vungle/warren/persistence/Repository$SaveCallback;)V

    .line 217
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lccsancom/vungle/warren/model/Report;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, p2, v1, v2}, Lccsancom/vungle/warren/model/Report;->recordAction(Ljava/lang/String;Ljava/lang/String;J)V

    .line 220
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lccsancom/vungle/warren/model/Report;

    iget-object v2, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repoCallback:Lccsancom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {v0, v1, v2}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lccsancom/vungle/warren/persistence/Repository$SaveCallback;)V

    .line 221
    return-void
.end method

.method public restoreFromSave(Lccsancom/vungle/warren/ui/state/OptionsState;)V
    .locals 3
    .param p1, "state"    # Lccsancom/vungle/warren/ui/state/OptionsState;

    .line 453
    if-nez p1, :cond_0

    .line 454
    return-void

    .line 458
    :cond_0
    const/4 v0, 0x0

    const-string v1, "incentivized_sent"

    invoke-interface {p1, v1, v0}, Lccsancom/vungle/warren/ui/state/OptionsState;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 460
    .local v0, "incentivizedShown":Z
    if-eqz v0, :cond_1

    .line 461
    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->sendReportIncentivized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 465
    :cond_1
    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lccsancom/vungle/warren/model/Report;

    if-nez v1, :cond_2

    .line 467
    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    invoke-interface {v1}, Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;->close()V

    .line 468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;

    .line 469
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#restoreFromSave"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 468
    const-string v2, "The advertisement was not started and cannot be restored."

    invoke-static {v1, v2}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    return-void

    .line 473
    :cond_2
    return-void
.end method

.method public setAdVisibility(Z)V
    .locals 1
    .param p1, "isViewable"    # Z

    .line 432
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->webClient:Lccsancom/vungle/warren/ui/view/WebViewAPI;

    invoke-interface {v0, p1}, Lccsancom/vungle/warren/ui/view/WebViewAPI;->setAdVisibility(Z)V

    .line 433
    if-eqz p1, :cond_0

    .line 434
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->durationRecorder:Lccsancom/vungle/warren/ui/DurationRecorder;

    invoke-virtual {v0}, Lccsancom/vungle/warren/ui/DurationRecorder;->start()V

    goto :goto_0

    .line 436
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->durationRecorder:Lccsancom/vungle/warren/ui/DurationRecorder;

    invoke-virtual {v0}, Lccsancom/vungle/warren/ui/DurationRecorder;->stop()V

    .line 438
    :goto_0
    return-void
.end method

.method public setEventListener(Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;)V
    .locals 0
    .param p1, "listener"    # Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    .line 207
    iput-object p1, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->bus:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    .line 208
    return-void
.end method

.method public start()V
    .locals 1

    .line 390
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    invoke-interface {v0}, Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;->hasWebView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->reportErrorAndCloseAd(I)V

    .line 392
    return-void

    .line 395
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    invoke-interface {v0}, Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;->setImmersiveMode()V

    .line 396
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    invoke-interface {v0}, Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;->resumeWeb()V

    .line 397
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->setAdVisibility(Z)V

    .line 398
    return-void
.end method

.method public stop(I)V
    .locals 7
    .param p1, "stopReason"    # I

    .line 402
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 403
    .local v0, "isChangingConfigurations":Z
    :goto_0
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 404
    .local v3, "isFinishing":Z
    :goto_1
    and-int/lit8 v4, p1, 0x4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 406
    .local v4, "isFinishByAPI":Z
    :goto_2
    iget-object v5, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->adView:Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;

    invoke-interface {v5}, Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;->pauseWeb()V

    .line 409
    invoke-virtual {p0, v1}, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->setAdVisibility(Z)V

    .line 410
    if-nez v0, :cond_6

    if-eqz v3, :cond_6

    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->isDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_6

    .line 413
    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->webClient:Lccsancom/vungle/warren/ui/view/WebViewAPI;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 414
    invoke-interface {v1, v2}, Lccsancom/vungle/warren/ui/view/WebViewAPI;->setMRAIDDelegate(Lccsancom/vungle/warren/ui/view/WebViewAPI$MRAIDDelegate;)V

    .line 417
    :cond_3
    if-eqz v4, :cond_4

    .line 418
    const-string v1, "mraidCloseByApi"

    invoke-virtual {p0, v1, v2}, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :cond_4
    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repository:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v5, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lccsancom/vungle/warren/model/Report;

    iget-object v6, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->repoCallback:Lccsancom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {v1, v5, v6}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lccsancom/vungle/warren/persistence/Repository$SaveCallback;)V

    .line 423
    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->bus:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz v1, :cond_6

    .line 425
    iget-object v5, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->report:Lccsancom/vungle/warren/model/Report;

    invoke-virtual {v5}, Lccsancom/vungle/warren/model/Report;->isCTAClicked()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v2, "isCTAClicked"

    :cond_5
    iget-object v5, p0, Lccsancom/vungle/warren/ui/presenter/MRAIDAdPresenter;->placement:Lccsancom/vungle/warren/model/Placement;

    invoke-virtual {v5}, Lccsancom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "end"

    invoke-interface {v1, v6, v2, v5}, Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :cond_6
    return-void
.end method
