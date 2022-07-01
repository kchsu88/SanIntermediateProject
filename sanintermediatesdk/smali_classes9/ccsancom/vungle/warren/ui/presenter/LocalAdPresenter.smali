.class public Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;
.super Ljava/lang/Object;
.source "LocalAdPresenter.java"

# interfaces
.implements Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;
.implements Lccsancom/vungle/warren/ui/view/WebViewAPI$WebClientErrorHandler;


# static fields
.field static final EXTRA_INCENTIVIZED_SENT:Ljava/lang/String; = "incentivized_sent"

.field static final EXTRA_IN_POST:Ljava/lang/String; = "in_post_roll"

.field static final EXTRA_IS_MUTED:Ljava/lang/String; = "is_muted_mode"

.field static final EXTRA_REPORT:Ljava/lang/String; = "saved_report"

.field static final EXTRA_VIDEO_POSITION:Ljava/lang/String; = "videoPosition"

.field static final HTTPS_VUNGLE_COM_PRIVACY:Ljava/lang/String; = "https://vungle.com/privacy/"

.field public static final INCENTIVIZED_TRESHOLD:I = 0x4b

.field static final TAG:Ljava/lang/String; = "LocalAdPresenter"


# instance fields
.field private adView:Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;

.field private adViewed:Z

.field private advertisement:Lccsancom/vungle/warren/model/Advertisement;

.field private final analytics:Lccsancom/vungle/warren/analytics/AdAnalytics;

.field private assetDir:Ljava/io/File;

.field private bus:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

.field private busy:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private checkpointList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lccsancom/vungle/warren/model/Advertisement$Checkpoint;",
            ">;"
        }
    .end annotation
.end field

.field private final cookies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsancom/vungle/warren/model/Cookie;",
            ">;"
        }
    .end annotation
.end field

.field private dialogBody:Ljava/lang/String;

.field private dialogClose:Ljava/lang/String;

.field private dialogContinue:Ljava/lang/String;

.field private dialogTitle:Ljava/lang/String;

.field private duration:I

.field private durationRecorder:Lccsancom/vungle/warren/ui/DurationRecorder;

.field private fileExistenceOperation:Lccsancom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;

.field private final impressionUrls:[Ljava/lang/String;

.field private inPost:Z

.field private isDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private muted:Z

.field private placement:Lccsancom/vungle/warren/model/Placement;

.field private progress:I

.field private repoCallback:Lccsancom/vungle/warren/persistence/Repository$SaveCallback;

.field private report:Lccsancom/vungle/warren/model/Report;

.field private repository:Lccsancom/vungle/warren/persistence/Repository;

.field private final scheduler:Lccsancom/vungle/warren/utility/Scheduler;

.field private sendReportIncentivized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private sessionData:Lccsancom/vungle/warren/SessionData;

.field private userExitEnabled:Z

.field private videoPosition:I

.field private final webViewAPI:Lccsancom/vungle/warren/ui/view/WebViewAPI;


# direct methods
.method public constructor <init>(Lccsancom/vungle/warren/model/Advertisement;Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/utility/Scheduler;Lccsancom/vungle/warren/analytics/AdAnalytics;Lccsancom/vungle/warren/ui/view/WebViewAPI;Lccsancom/vungle/warren/ui/state/OptionsState;Ljava/io/File;Lccsancom/vungle/warren/SessionData;[Ljava/lang/String;)V
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
    .param p10, "impressionUrls"    # [Ljava/lang/String;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->cookies:Ljava/util/Map;

    .line 138
    const-string v0, "Are you sure?"

    iput-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->dialogTitle:Ljava/lang/String;

    const-string v0, "If you exit now, you will not get your reward"

    iput-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->dialogBody:Ljava/lang/String;

    const-string v0, "Continue"

    iput-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->dialogContinue:Ljava/lang/String;

    const-string v0, "Close"

    iput-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->dialogClose:Ljava/lang/String;

    .line 163
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->sendReportIncentivized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 164
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->isDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 167
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->checkpointList:Ljava/util/LinkedList;

    .line 168
    new-instance v0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter$1;

    invoke-direct {v0, p0}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter$1;-><init>(Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;)V

    iput-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->repoCallback:Lccsancom/vungle/warren/persistence/Repository$SaveCallback;

    .line 806
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 220
    iput-object p1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    .line 221
    iput-object p2, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->placement:Lccsancom/vungle/warren/model/Placement;

    .line 222
    iput-object p4, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->scheduler:Lccsancom/vungle/warren/utility/Scheduler;

    .line 223
    iput-object p5, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->analytics:Lccsancom/vungle/warren/analytics/AdAnalytics;

    .line 224
    iput-object p6, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->webViewAPI:Lccsancom/vungle/warren/ui/view/WebViewAPI;

    .line 225
    iput-object p3, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->repository:Lccsancom/vungle/warren/persistence/Repository;

    .line 226
    iput-object p8, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->assetDir:Ljava/io/File;

    .line 227
    iput-object p9, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->sessionData:Lccsancom/vungle/warren/SessionData;

    .line 228
    iput-object p10, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->impressionUrls:[Ljava/lang/String;

    .line 230
    invoke-virtual {p1}, Lccsancom/vungle/warren/model/Advertisement;->getCheckpoints()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->checkpointList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Lccsancom/vungle/warren/model/Advertisement;->getCheckpoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 232
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->checkpointList:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 235
    :cond_0
    invoke-direct {p0, p7}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->loadData(Lccsancom/vungle/warren/ui/state/OptionsState;)V

    .line 236
    return-void
.end method

.method static synthetic access$000(Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;I)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;
    .param p1, "x1"    # I

    .line 65
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->makeBusError(I)V

    return-void
.end method

.method static synthetic access$100(Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

    .line 65
    invoke-direct {p0}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->closeAndReport()V

    return-void
.end method

.method static synthetic access$200(Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;)Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

    .line 65
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    return-object v0
.end method

.method static synthetic access$300(Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;)Lccsancom/vungle/warren/model/Advertisement;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

    .line 65
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    return-object v0
.end method

.method static synthetic access$400(Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;)Lccsancom/vungle/warren/analytics/AdAnalytics;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

    .line 65
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->analytics:Lccsancom/vungle/warren/analytics/AdAnalytics;

    return-object v0
.end method

.method static synthetic access$500(Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;)Z
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

    .line 65
    iget-boolean v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->inPost:Z

    return v0
.end method

.method static synthetic access$502(Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;
    .param p1, "x1"    # Z

    .line 65
    iput-boolean p1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->inPost:Z

    return p1
.end method

.method static synthetic access$600(Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;)Lccsancom/vungle/warren/persistence/Repository;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

    .line 65
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->repository:Lccsancom/vungle/warren/persistence/Repository;

    return-object v0
.end method

.method static synthetic access$700(Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

    .line 65
    invoke-direct {p0}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->continueWithPostroll()V

    return-void
.end method

.method static synthetic access$802(Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;
    .param p1, "x1"    # Z

    .line 65
    iput-boolean p1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->userExitEnabled:Z

    return p1
.end method

.method private closeAndReport()V
    .locals 2

    .line 794
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 795
    const-string v0, "LocalAdPresenter"

    const-string v1, "Busy with closing"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    return-void

    .line 799
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 800
    const/4 v0, 0x0

    const-string v1, "close"

    invoke-virtual {p0, v1, v0}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->scheduler:Lccsancom/vungle/warren/utility/Scheduler;

    invoke-interface {v0}, Lccsancom/vungle/warren/utility/Scheduler;->cancelAll()V

    .line 803
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v0}, Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;->close()V

    .line 804
    return-void
.end method

.method private continueWithPostroll()V
    .locals 1

    .line 518
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v0}, Lccsancom/vungle/warren/model/Advertisement;->hasPostroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    invoke-direct {p0}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->playPost()V

    goto :goto_0

    .line 521
    :cond_0
    invoke-direct {p0}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->closeAndReport()V

    .line 523
    :goto_0
    return-void
.end method

.method private download()V
    .locals 6

    .line 761
    const-string v0, "LocalAdPresenter"

    const-string v1, "cta"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    :try_start_0
    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->analytics:Lccsancom/vungle/warren/analytics/AdAnalytics;

    iget-object v2, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    const-string v3, "postroll_click"

    invoke-virtual {v2, v3}, Lccsancom/vungle/warren/model/Advertisement;->getTpatUrls(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lccsancom/vungle/warren/analytics/AdAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    .line 765
    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->analytics:Lccsancom/vungle/warren/analytics/AdAnalytics;

    iget-object v2, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    const-string v3, "click_url"

    invoke-virtual {v2, v3}, Lccsancom/vungle/warren/model/Advertisement;->getTpatUrls(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lccsancom/vungle/warren/analytics/AdAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    .line 766
    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->analytics:Lccsancom/vungle/warren/analytics/AdAnalytics;

    iget-object v2, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    const-string v3, "video_click"

    invoke-virtual {v2, v3}, Lccsancom/vungle/warren/model/Advertisement;->getTpatUrls(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lccsancom/vungle/warren/analytics/AdAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    .line 767
    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->analytics:Lccsancom/vungle/warren/analytics/AdAnalytics;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    iget-object v4, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v4, v2}, Lccsancom/vungle/warren/model/Advertisement;->getCTAURL(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-interface {v1, v3}, Lccsancom/vungle/warren/analytics/AdAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    .line 769
    const-string v1, "download"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v1, v4}, Lccsancom/vungle/warren/model/Advertisement;->getCTAURL(Z)Ljava/lang/String;

    move-result-object v1

    .line 774
    .local v1, "url":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 777
    :cond_0
    iget-object v2, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    new-instance v3, Lccsancom/vungle/warren/ui/PresenterAppLeftCallback;

    iget-object v4, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->bus:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    iget-object v5, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->placement:Lccsancom/vungle/warren/model/Placement;

    invoke-direct {v3, v4, v5}, Lccsancom/vungle/warren/ui/PresenterAppLeftCallback;-><init>(Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;Lccsancom/vungle/warren/model/Placement;)V

    invoke-interface {v2, v1, v3}, Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;->open(Ljava/lang/String;Lccsancom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V

    goto :goto_1

    .line 775
    :cond_1
    :goto_0
    const-string v2, "CTA destination URL is not configured properly"

    invoke-static {v0, v2}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :goto_1
    iget-object v2, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->bus:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz v2, :cond_2

    .line 781
    const-string v3, "open"

    const-string v4, "adClick"

    iget-object v5, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->placement:Lccsancom/vungle/warren/model/Placement;

    invoke-virtual {v5}, Lccsancom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lccsanandroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 788
    .end local v1    # "url":Ljava/lang/String;
    :cond_2
    goto :goto_2

    .line 783
    :catch_0
    move-exception v1

    .line 784
    .local v1, "invalid":Lccsanandroid/content/ActivityNotFoundException;
    const-string v2, "Unable to find destination activity"

    invoke-static {v0, v2}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

    .line 786
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#download"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 785
    const-string v2, "Download - Activity Not Found"

    invoke-static {v0, v2}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    .end local v1    # "invalid":Lccsanandroid/content/ActivityNotFoundException;
    :goto_2
    return-void
.end method

.method private handleWebViewException(I)V
    .locals 1
    .param p1, "reason"    # I

    .line 854
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    if-eqz v0, :cond_0

    .line 855
    invoke-interface {v0}, Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;->removeWebView()V

    .line 857
    :cond_0
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->reportErrorAndCloseAd(I)V

    .line 858
    return-void
.end method

.method private isWebPageBlank()Z
    .locals 2

    .line 526
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v0}, Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;->getWebsiteUrl()Ljava/lang/String;

    move-result-object v0

    .line 527
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "about:blank"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private loadData(Lccsancom/vungle/warren/ui/state/OptionsState;)V
    .locals 4
    .param p1, "optionsState"    # Lccsancom/vungle/warren/ui/state/OptionsState;

    .line 810
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->cookies:Ljava/util/Map;

    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->repository:Lccsancom/vungle/warren/persistence/Repository;

    const-class v2, Lccsancom/vungle/warren/model/Cookie;

    const-string v3, "incentivizedTextSetByPub"

    invoke-virtual {v1, v3, v2}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->cookies:Ljava/util/Map;

    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->repository:Lccsancom/vungle/warren/persistence/Repository;

    const-class v2, Lccsancom/vungle/warren/model/Cookie;

    const-string v3, "consentIsImportantToVungle"

    invoke-virtual {v1, v3, v2}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->cookies:Ljava/util/Map;

    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->repository:Lccsancom/vungle/warren/persistence/Repository;

    const-class v2, Lccsancom/vungle/warren/model/Cookie;

    const-string v3, "configSettings"

    invoke-virtual {v1, v3, v2}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    if-eqz p1, :cond_1

    .line 815
    const-string v0, "saved_report"

    invoke-interface {p1, v0}, Lccsancom/vungle/warren/ui/state/OptionsState;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 816
    .local v0, "reportId":Ljava/lang/String;
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->repository:Lccsancom/vungle/warren/persistence/Repository;

    const-class v2, Lccsancom/vungle/warren/model/Report;

    invoke-virtual {v1, v0, v2}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/model/Report;

    .line 818
    .local v1, "restoredReport":Lccsancom/vungle/warren/model/Report;
    :goto_0
    if-eqz v1, :cond_1

    .line 819
    iput-object v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lccsancom/vungle/warren/model/Report;

    .line 822
    .end local v0    # "reportId":Ljava/lang/String;
    .end local v1    # "restoredReport":Lccsancom/vungle/warren/model/Report;
    :cond_1
    return-void
.end method

.method private makeBusError(I)V
    .locals 3
    .param p1, "code"    # I

    .line 870
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->bus:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz v0, :cond_0

    .line 871
    new-instance v1, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v1, p1}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v2, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->placement:Lccsancom/vungle/warren/model/Placement;

    invoke-virtual {v2}, Lccsancom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onError(Lccsancom/vungle/warren/error/VungleException;Ljava/lang/String;)V

    .line 873
    :cond_0
    return-void
.end method

.method private needShowGDPR(Lccsancom/vungle/warren/model/Cookie;)Z
    .locals 2
    .param p1, "gdprConsent"    # Lccsancom/vungle/warren/model/Cookie;

    .line 406
    if-eqz p1, :cond_0

    const-string v0, "is_country_data_protected"

    invoke-virtual {p1, v0}, Lccsancom/vungle/warren/model/Cookie;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    const-string v0, "consent_status"

    invoke-virtual {p1, v0}, Lccsancom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 406
    :goto_0
    return v0
.end method

.method private playPost()V
    .locals 4

    .line 353
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->assetDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 354
    .local v0, "post":Ljava/io/File;
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

    .line 356
    .local v1, "indexHtml":Ljava/io/File;
    new-instance v2, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter$2;

    invoke-direct {v2, p0, v1}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter$2;-><init>(Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;Ljava/io/File;)V

    invoke-static {v1, v2}, Lccsancom/vungle/warren/utility/AsyncFileUtils;->isFileExistAsync(Ljava/io/File;Lccsancom/vungle/warren/utility/AsyncFileUtils$FileExistCallback;)Lccsancom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;

    move-result-object v2

    iput-object v2, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->fileExistenceOperation:Lccsancom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;

    .line 378
    return-void
.end method

.method private prepare(Lccsancom/vungle/warren/ui/state/OptionsState;)V
    .locals 10
    .param p1, "state"    # Lccsancom/vungle/warren/ui/state/OptionsState;

    .line 381
    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->restoreFromSave(Lccsancom/vungle/warren/ui/state/OptionsState;)V

    .line 383
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->cookies:Ljava/util/Map;

    const-string v1, "incentivizedTextSetByPub"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/model/Cookie;

    .line 384
    .local v0, "incentivizedCookie":Lccsancom/vungle/warren/model/Cookie;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v8, v1

    goto :goto_0

    :cond_0
    const-string v2, "userID"

    invoke-virtual {v0, v2}, Lccsancom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .line 386
    .local v8, "userIdFromCookie":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lccsancom/vungle/warren/model/Report;

    if-nez v2, :cond_1

    .line 387
    new-instance v2, Lccsancom/vungle/warren/model/Report;

    iget-object v4, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    iget-object v5, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->placement:Lccsancom/vungle/warren/model/Placement;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v9, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->sessionData:Lccsancom/vungle/warren/SessionData;

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lccsancom/vungle/warren/model/Report;-><init>(Lccsancom/vungle/warren/model/Advertisement;Lccsancom/vungle/warren/model/Placement;JLjava/lang/String;Lccsancom/vungle/warren/SessionData;)V

    iput-object v2, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lccsancom/vungle/warren/model/Report;

    .line 388
    iget-object v3, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v3}, Lccsancom/vungle/warren/model/Advertisement;->getTtDownload()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lccsancom/vungle/warren/model/Report;->setTtDownload(J)V

    .line 389
    iget-object v2, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->repository:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v3, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lccsancom/vungle/warren/model/Report;

    iget-object v4, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->repoCallback:Lccsancom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {v2, v3, v4}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lccsancom/vungle/warren/persistence/Repository$SaveCallback;)V

    .line 392
    :cond_1
    iget-object v2, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->durationRecorder:Lccsancom/vungle/warren/ui/DurationRecorder;

    if-nez v2, :cond_2

    .line 393
    new-instance v2, Lccsancom/vungle/warren/ui/DurationRecorder;

    iget-object v3, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lccsancom/vungle/warren/model/Report;

    iget-object v4, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->repository:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v5, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->repoCallback:Lccsancom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-direct {v2, v3, v4, v5}, Lccsancom/vungle/warren/ui/DurationRecorder;-><init>(Lccsancom/vungle/warren/model/Report;Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/persistence/Repository$SaveCallback;)V

    iput-object v2, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->durationRecorder:Lccsancom/vungle/warren/ui/DurationRecorder;

    .line 396
    :cond_2
    iget-object v2, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->webViewAPI:Lccsancom/vungle/warren/ui/view/WebViewAPI;

    invoke-interface {v2, p0}, Lccsancom/vungle/warren/ui/view/WebViewAPI;->setErrorHandler(Lccsancom/vungle/warren/ui/view/WebViewAPI$WebClientErrorHandler;)V

    .line 399
    iget-object v2, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    iget-object v3, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v3}, Lccsancom/vungle/warren/model/Advertisement;->isCtaOverlayEnabled()Z

    move-result v3

    iget-object v4, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v4}, Lccsancom/vungle/warren/model/Advertisement;->getCtaClickArea()Z

    move-result v4

    invoke-interface {v2, v3, v4}, Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;->showCTAOverlay(ZZ)V

    .line 400
    iget-object v2, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->bus:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz v2, :cond_3

    .line 401
    iget-object v3, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->placement:Lccsancom/vungle/warren/model/Placement;

    invoke-virtual {v3}, Lccsancom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "start"

    invoke-interface {v2, v4, v1, v3}, Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :cond_3
    return-void
.end method

.method private reportError(Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;

    .line 244
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lccsancom/vungle/warren/model/Report;

    invoke-virtual {v0, p1}, Lccsancom/vungle/warren/model/Report;->recordError(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->repository:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lccsancom/vungle/warren/model/Report;

    iget-object v2, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->repoCallback:Lccsancom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {v0, v1, v2}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lccsancom/vungle/warren/persistence/Repository$SaveCallback;)V

    .line 247
    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->makeBusError(I)V

    .line 248
    iget-boolean v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->inPost:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v0}, Lccsancom/vungle/warren/model/Advertisement;->hasPostroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    invoke-direct {p0}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->playPost()V

    goto :goto_0

    .line 253
    :cond_0
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->makeBusError(I)V

    .line 254
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v0}, Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;->close()V

    .line 256
    :goto_0
    return-void
.end method

.method private reportErrorAndCloseAd(I)V
    .locals 3
    .param p1, "reason"    # I

    .line 862
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->makeBusError(I)V

    .line 863
    const-class v0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

    .line 864
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebViewException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v2, p1}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    .line 865
    invoke-virtual {v2}, Lccsancom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 863
    invoke-static {v0, v1}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    invoke-direct {p0}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->closeAndReport()V

    .line 867
    return-void
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/DialogInterface$OnClickListener;)V
    .locals 7
    .param p1, "titleText"    # Ljava/lang/String;
    .param p2, "bodyText"    # Ljava/lang/String;
    .param p3, "continueText"    # Ljava/lang/String;
    .param p4, "closeText"    # Ljava/lang/String;
    .param p5, "listener"    # Lccsanandroid/content/DialogInterface$OnClickListener;

    .line 513
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v0}, Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;->pauseVideo()V

    .line 514
    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/DialogInterface$OnClickListener;)V

    .line 515
    return-void
.end method

.method private showGDPR(Lccsancom/vungle/warren/model/Cookie;)V
    .locals 7
    .param p1, "gdprConsent"    # Lccsancom/vungle/warren/model/Cookie;

    .line 411
    move-object v0, p1

    .line 412
    .local v0, "finalGdpr":Lccsancom/vungle/warren/model/Cookie;
    new-instance v6, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter$3;

    invoke-direct {v6, p0, v0}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter$3;-><init>(Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;Lccsancom/vungle/warren/model/Cookie;)V

    .line 433
    .local v6, "listener":Lccsanandroid/content/DialogInterface$OnClickListener;
    const-string v1, "consent_status"

    const-string v2, "opted_out_by_timeout"

    invoke-virtual {p1, v1, v2}, Lccsancom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 434
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Lccsancom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 435
    const-string v1, "consent_source"

    const-string v2, "vungle_modal"

    invoke-virtual {v0, v1, v2}, Lccsancom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 436
    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->repository:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v2, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->repoCallback:Lccsancom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {v1, v0, v2}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lccsancom/vungle/warren/persistence/Repository$SaveCallback;)V

    .line 439
    const-string v1, "consent_title"

    invoke-virtual {p1, v1}, Lccsancom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 440
    const-string v1, "consent_message"

    invoke-virtual {p1, v1}, Lccsancom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 441
    const-string v1, "button_accept"

    invoke-virtual {p1, v1}, Lccsancom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 442
    const-string v1, "button_deny"

    invoke-virtual {p1, v1}, Lccsancom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 439
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/DialogInterface$OnClickListener;)V

    .line 444
    return-void
.end method

.method private showIncetivizedDialog()V
    .locals 15

    .line 479
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->dialogTitle:Ljava/lang/String;

    .line 480
    .local v0, "titleText":Ljava/lang/String;
    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->dialogBody:Ljava/lang/String;

    .line 481
    .local v1, "bodyText":Ljava/lang/String;
    iget-object v2, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->dialogContinue:Ljava/lang/String;

    .line 482
    .local v2, "continueText":Ljava/lang/String;
    iget-object v3, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->dialogClose:Ljava/lang/String;

    .line 484
    .local v3, "closeText":Ljava/lang/String;
    iget-object v4, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->cookies:Ljava/util/Map;

    const-string v5, "incentivizedTextSetByPub"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/vungle/warren/model/Cookie;

    .line 485
    .local v4, "incentivizedCookie":Lccsancom/vungle/warren/model/Cookie;
    if-eqz v4, :cond_4

    .line 486
    const-string v5, "title"

    invoke-virtual {v4, v5}, Lccsancom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 487
    .local v5, "titleString":Ljava/lang/String;
    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v5

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->dialogTitle:Ljava/lang/String;

    :goto_0
    move-object v0, v6

    .line 489
    const-string v6, "body"

    invoke-virtual {v4, v6}, Lccsancom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 490
    .local v6, "bodyString":Ljava/lang/String;
    invoke-static {v6}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    move-object v7, v6

    goto :goto_1

    :cond_1
    iget-object v7, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->dialogBody:Ljava/lang/String;

    :goto_1
    move-object v1, v7

    .line 492
    const-string v7, "continue"

    invoke-virtual {v4, v7}, Lccsancom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 493
    .local v7, "continueString":Ljava/lang/String;
    invoke-static {v7}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    move-object v8, v7

    goto :goto_2

    :cond_2
    iget-object v8, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->dialogContinue:Ljava/lang/String;

    :goto_2
    move-object v2, v8

    .line 495
    const-string v8, "close"

    invoke-virtual {v4, v8}, Lccsancom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 496
    .local v8, "closeString":Ljava/lang/String;
    invoke-static {v8}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    move-object v9, v8

    goto :goto_3

    :cond_3
    iget-object v9, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->dialogClose:Ljava/lang/String;

    :goto_3
    move-object v3, v9

    .line 499
    .end local v5    # "titleString":Ljava/lang/String;
    .end local v6    # "bodyString":Ljava/lang/String;
    .end local v7    # "continueString":Ljava/lang/String;
    .end local v8    # "closeString":Ljava/lang/String;
    :cond_4
    new-instance v14, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter$4;

    invoke-direct {v14, p0}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter$4;-><init>(Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;)V

    move-object v9, p0

    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move-object v13, v3

    invoke-direct/range {v9 .. v14}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/DialogInterface$OnClickListener;)V

    .line 510
    return-void
.end method


# virtual methods
.method public bridge synthetic attach(Lccsancom/vungle/warren/ui/contract/AdContract$AdView;Lccsancom/vungle/warren/ui/state/OptionsState;)V
    .locals 0

    .line 65
    check-cast p1, Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-virtual {p0, p1, p2}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->attach(Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;Lccsancom/vungle/warren/ui/state/OptionsState;)V

    return-void
.end method

.method public attach(Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;Lccsancom/vungle/warren/ui/state/OptionsState;)V
    .locals 5
    .param p1, "adView"    # Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;
    .param p2, "state"    # Lccsancom/vungle/warren/ui/state/OptionsState;

    .line 293
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->isDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 296
    iput-object p1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    .line 297
    invoke-interface {p1, p0}, Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;->setPresenter(Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;)V

    .line 298
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->bus:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz v0, :cond_0

    .line 299
    iget-object v2, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v2}, Lccsancom/vungle/warren/model/Advertisement;->getCreativeId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->placement:Lccsancom/vungle/warren/model/Placement;

    invoke-virtual {v3}, Lccsancom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "attach"

    invoke-interface {v0, v4, v2, v3}, Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v0}, Lccsancom/vungle/warren/model/Advertisement;->getAdConfig()Lccsancom/vungle/warren/AdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/vungle/warren/AdConfig;->getSettings()I

    move-result v0

    .line 304
    .local v0, "settings":I
    const/4 v2, 0x1

    if-lez v0, :cond_3

    .line 307
    and-int/lit8 v3, v0, 0x1

    if-ne v3, v2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->muted:Z

    .line 308
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->userExitEnabled:Z

    .line 312
    :cond_3
    const/4 v1, -0x1

    .line 313
    .local v1, "requestedOrientation":I
    iget-object v3, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v3}, Lccsancom/vungle/warren/model/Advertisement;->getAdConfig()Lccsancom/vungle/warren/AdConfig;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/vungle/warren/AdConfig;->getAdOrientation()I

    move-result v3

    .line 314
    .local v3, "adOrientation":I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 315
    iget-object v2, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v2}, Lccsancom/vungle/warren/model/Advertisement;->getOrientation()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 322
    :pswitch_0
    const/4 v1, 0x6

    goto :goto_1

    .line 318
    :pswitch_1
    const/4 v1, 0x7

    .line 319
    nop

    .line 323
    :goto_1
    goto :goto_2

    .line 325
    :cond_4
    if-nez v3, :cond_5

    .line 326
    const/4 v1, 0x7

    goto :goto_2

    .line 327
    :cond_5
    if-ne v3, v2, :cond_6

    .line 328
    const/4 v1, 0x6

    goto :goto_2

    .line 330
    :cond_6
    const/4 v1, 0x4

    .line 333
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested Orientation "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "LocalAdPresenter"

    invoke-static {v4, v2}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-interface {p1, v1}, Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;->setOrientation(I)V

    .line 335
    invoke-direct {p0, p2}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->prepare(Lccsancom/vungle/warren/ui/state/OptionsState;)V

    .line 336
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

    .line 340
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->fileExistenceOperation:Lccsancom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {v0}, Lccsancom/vungle/warren/utility/AsyncFileUtils$ExistenceOperation;->cancel()V

    .line 344
    :cond_0
    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->stop(I)V

    .line 345
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;->destroyAdView(J)V

    .line 346
    return-void
.end method

.method public generateSaveState(Lccsancom/vungle/warren/ui/state/OptionsState;)V
    .locals 3
    .param p1, "state"    # Lccsancom/vungle/warren/ui/state/OptionsState;

    .line 706
    if-nez p1, :cond_0

    .line 707
    return-void

    .line 710
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->repository:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lccsancom/vungle/warren/model/Report;

    iget-object v2, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->repoCallback:Lccsancom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {v0, v1, v2}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lccsancom/vungle/warren/persistence/Repository$SaveCallback;)V

    .line 711
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lccsancom/vungle/warren/model/Report;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lccsancom/vungle/warren/model/Report;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "saved_report"

    invoke-interface {p1, v1, v0}, Lccsancom/vungle/warren/ui/state/OptionsState;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->sendReportIncentivized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "incentivized_sent"

    invoke-interface {p1, v1, v0}, Lccsancom/vungle/warren/ui/state/OptionsState;->put(Ljava/lang/String;Z)V

    .line 713
    iget-boolean v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->inPost:Z

    const-string v1, "in_post_roll"

    invoke-interface {p1, v1, v0}, Lccsancom/vungle/warren/ui/state/OptionsState;->put(Ljava/lang/String;Z)V

    .line 714
    iget-boolean v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->muted:Z

    const-string v1, "is_muted_mode"

    invoke-interface {p1, v1, v0}, Lccsancom/vungle/warren/ui/state/OptionsState;->put(Ljava/lang/String;Z)V

    .line 715
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;->isVideoPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v0}, Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;->getVideoPosition()I

    move-result v0

    goto :goto_1

    :cond_2
    iget v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->videoPosition:I

    :goto_1
    const-string v1, "videoPosition"

    invoke-interface {p1, v1, v0}, Lccsancom/vungle/warren/ui/state/OptionsState;->put(Ljava/lang/String;I)V

    .line 716
    return-void
.end method

.method public handleExit()Z
    .locals 4

    .line 448
    iget-boolean v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->inPost:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 449
    invoke-direct {p0}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->closeAndReport()V

    .line 450
    return v1

    .line 454
    :cond_0
    iget-boolean v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->userExitEnabled:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 455
    return v2

    .line 461
    :cond_1
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->placement:Lccsancom/vungle/warren/model/Placement;

    invoke-virtual {v0}, Lccsancom/vungle/warren/model/Placement;->isIncentivized()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->progress:I

    const/16 v3, 0x4b

    if-gt v0, v3, :cond_2

    .line 462
    invoke-direct {p0}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->showIncetivizedDialog()V

    .line 463
    return v2

    .line 466
    :cond_2
    const/4 v0, 0x0

    const-string v3, "video_close"

    invoke-virtual {p0, v3, v0}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v0}, Lccsancom/vungle/warren/model/Advertisement;->hasPostroll()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 470
    invoke-direct {p0}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->playPost()V

    .line 471
    return v2

    .line 473
    :cond_3
    invoke-direct {p0}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->closeAndReport()V

    .line 474
    return v1
.end method

.method public onDownload()V
    .locals 0

    .line 687
    invoke-direct {p0}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->download()V

    .line 688
    return-void
.end method

.method public onMediaError(Ljava/lang/String;)Z
    .locals 3
    .param p1, "description"    # Ljava/lang/String;

    .line 692
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->reportError(Ljava/lang/String;)V

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

    .line 694
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#onMediaError"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Media Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 693
    invoke-static {v0, v1}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    const/4 v0, 0x0

    return v0
.end method

.method public onMraidAction(Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    .line 736
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

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

    .line 754
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#onMraidAction"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 753
    const-string v1, "Unknown MRAID Command"

    invoke-static {v0, v1}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
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

    .line 749
    :pswitch_0
    goto :goto_2

    .line 743
    :pswitch_1
    invoke-direct {p0}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->download()V

    .line 744
    invoke-direct {p0}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->closeAndReport()V

    .line 745
    goto :goto_2

    .line 738
    :pswitch_2
    invoke-direct {p0}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->closeAndReport()V

    .line 739
    nop

    .line 758
    :goto_2
    return-void

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

.method public onMute(Z)V
    .locals 2
    .param p1, "muted"    # Z

    .line 677
    iput-boolean p1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->muted:Z

    .line 678
    if-eqz p1, :cond_0

    .line 679
    const-string v0, "mute"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 681
    :cond_0
    const-string v0, "unmute"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    :goto_0
    return-void
.end method

.method public onPrivacy()V
    .locals 4

    .line 701
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    new-instance v1, Lccsancom/vungle/warren/ui/PresenterAppLeftCallback;

    iget-object v2, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->bus:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    iget-object v3, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->placement:Lccsancom/vungle/warren/model/Placement;

    invoke-direct {v1, v2, v3}, Lccsancom/vungle/warren/ui/PresenterAppLeftCallback;-><init>(Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;Lccsancom/vungle/warren/model/Placement;)V

    const-string v2, "https://vungle.com/privacy/"

    invoke-interface {v0, v2, v1}, Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;->open(Ljava/lang/String;Lccsancom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V

    .line 702
    return-void
.end method

.method public onProgressUpdate(IF)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "duration"    # F

    .line 611
    int-to-float v0, p1

    div-float/2addr v0, p2

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->progress:I

    .line 612
    iput p1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->videoPosition:I

    .line 613
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->durationRecorder:Lccsancom/vungle/warren/ui/DurationRecorder;

    invoke-virtual {v0}, Lccsancom/vungle/warren/ui/DurationRecorder;->update()V

    .line 615
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->bus:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 616
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "percentViewed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->progress:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->placement:Lccsancom/vungle/warren/model/Placement;

    invoke-virtual {v3}, Lccsancom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v1, v3}, Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->bus:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-lez p1, :cond_1

    iget-boolean v3, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->adViewed:Z

    if-nez v3, :cond_1

    .line 620
    iput-boolean v2, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->adViewed:Z

    .line 621
    iget-object v3, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->placement:Lccsancom/vungle/warren/model/Placement;

    invoke-virtual {v3}, Lccsancom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "adViewed"

    invoke-interface {v0, v4, v1, v3}, Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->impressionUrls:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 623
    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->analytics:Lccsancom/vungle/warren/analytics/AdAnalytics;

    invoke-interface {v1, v0}, Lccsancom/vungle/warren/analytics/AdAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    .line 627
    :cond_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "%d"

    invoke-static {v0, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "video_viewed"

    invoke-virtual {p0, v1, v0}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    iget v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->progress:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_3

    .line 632
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->checkpointList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->checkpointList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/model/Advertisement$Checkpoint;

    invoke-virtual {v0}, Lccsancom/vungle/warren/model/Advertisement$Checkpoint;->getPercentage()B

    move-result v0

    if-ne v0, v1, :cond_2

    .line 633
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->analytics:Lccsancom/vungle/warren/analytics/AdAnalytics;

    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->checkpointList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/model/Advertisement$Checkpoint;

    invoke-virtual {v1}, Lccsancom/vungle/warren/model/Advertisement$Checkpoint;->getUrls()[Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/vungle/warren/analytics/AdAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    .line 637
    :cond_2
    invoke-direct {p0}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->continueWithPostroll()V

    .line 641
    :cond_3
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lccsancom/vungle/warren/model/Report;

    iget v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->videoPosition:I

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/model/Report;->recordProgress(I)V

    .line 642
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->repository:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lccsancom/vungle/warren/model/Report;

    iget-object v3, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->repoCallback:Lccsancom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {v0, v1, v3}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lccsancom/vungle/warren/persistence/Repository$SaveCallback;)V

    .line 646
    :goto_0
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->checkpointList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->progress:I

    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->checkpointList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/model/Advertisement$Checkpoint;

    invoke-virtual {v1}, Lccsancom/vungle/warren/model/Advertisement$Checkpoint;->getPercentage()B

    move-result v1

    if-le v0, v1, :cond_4

    .line 649
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->analytics:Lccsancom/vungle/warren/analytics/AdAnalytics;

    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->checkpointList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/model/Advertisement$Checkpoint;

    invoke-virtual {v1}, Lccsancom/vungle/warren/model/Advertisement$Checkpoint;->getUrls()[Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/vungle/warren/analytics/AdAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    goto :goto_0

    .line 653
    :cond_4
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->cookies:Ljava/util/Map;

    const-string v1, "configSettings"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/model/Cookie;

    .line 654
    .local v0, "configCookie":Lccsancom/vungle/warren/model/Cookie;
    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->placement:Lccsancom/vungle/warren/model/Placement;

    invoke-virtual {v1}, Lccsancom/vungle/warren/model/Placement;->isIncentivized()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->progress:I

    const/16 v3, 0x4b

    if-le v1, v3, :cond_5

    if-eqz v0, :cond_5

    .line 656
    const-string v1, "isReportIncentivizedEnabled"

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/model/Cookie;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->sendReportIncentivized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 657
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_5

    .line 660
    new-instance v1, Lccsancom/google/gson/JsonObject;

    invoke-direct {v1}, Lccsancom/google/gson/JsonObject;-><init>()V

    .line 661
    .local v1, "body":Lccsancom/google/gson/JsonObject;
    new-instance v2, Lccsancom/google/gson/JsonPrimitive;

    iget-object v3, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->placement:Lccsancom/vungle/warren/model/Placement;

    invoke-virtual {v3}, Lccsancom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lccsancom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v3, "placement_reference_id"

    invoke-virtual {v1, v3, v2}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 662
    new-instance v2, Lccsancom/google/gson/JsonPrimitive;

    iget-object v3, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v3}, Lccsancom/vungle/warren/model/Advertisement;->getAppID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lccsancom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v3, "app_id"

    invoke-virtual {v1, v3, v2}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 663
    new-instance v2, Lccsancom/google/gson/JsonPrimitive;

    iget-object v3, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lccsancom/vungle/warren/model/Report;

    invoke-virtual {v3}, Lccsancom/vungle/warren/model/Report;->getAdStartTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Lccsancom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v3, "adStartTime"

    invoke-virtual {v1, v3, v2}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 664
    new-instance v2, Lccsancom/google/gson/JsonPrimitive;

    iget-object v3, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lccsancom/vungle/warren/model/Report;

    invoke-virtual {v3}, Lccsancom/vungle/warren/model/Report;->getUserID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lccsancom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v3, "user"

    invoke-virtual {v1, v3, v2}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 665
    iget-object v2, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->analytics:Lccsancom/vungle/warren/analytics/AdAnalytics;

    invoke-interface {v2, v1}, Lccsancom/vungle/warren/analytics/AdAnalytics;->ri(Lccsancom/google/gson/JsonObject;)V

    .line 668
    .end local v1    # "body":Lccsancom/google/gson/JsonObject;
    :cond_5
    return-void
.end method

.method public onReceivedError(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "errorDesc"    # Ljava/lang/String;
    .param p2, "didCrash"    # Z

    .line 827
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lccsancom/vungle/warren/model/Report;

    if-eqz v0, :cond_0

    .line 828
    invoke-virtual {v0, p1}, Lccsancom/vungle/warren/model/Report;->recordError(Ljava/lang/String;)V

    .line 829
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->repository:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lccsancom/vungle/warren/model/Report;

    iget-object v2, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->repoCallback:Lccsancom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {v0, v1, v2}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lccsancom/vungle/warren/persistence/Repository$SaveCallback;)V

    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

    .line 831
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onReceivedError"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 830
    invoke-static {v0, p1}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    :cond_0
    return-void
.end method

.method public onRenderProcessUnresponsive(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/WebViewRenderProcess;)V
    .locals 3
    .param p1, "webView"    # Lccsanandroid/webkit/WebView;
    .param p2, "webViewRenderProcess"    # Lccsanandroid/webkit/WebViewRenderProcess;

    .line 847
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->handleWebViewException(I)V

    .line 848
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

    .line 849
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#onRenderProcessUnresponsive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v2, v0}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    .line 850
    invoke-virtual {v2}, Lccsancom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    .line 848
    invoke-static {v1, v0}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    return-void
.end method

.method public onVideoStart(IF)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "duration"    # F

    .line 672
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    float-to-int v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "videoLength"

    invoke-virtual {p0, v1, v0}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    return-void
.end method

.method public onViewConfigurationChanged()V
    .locals 2

    .line 287
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->webViewAPI:Lccsancom/vungle/warren/ui/view/WebViewAPI;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lccsancom/vungle/warren/ui/view/WebViewAPI;->notifyPropertiesChange(Z)V

    .line 288
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v0}, Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;->refreshDialogIfVisible()V

    .line 289
    return-void
.end method

.method public onWebRenderingProcessGone(Lccsanandroid/webkit/WebView;Z)Z
    .locals 3
    .param p1, "view"    # Lccsanandroid/webkit/WebView;
    .param p2, "didCrash"    # Z

    .line 838
    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->handleWebViewException(I)V

    .line 839
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

    .line 840
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#onWebRenderingProcessGone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v2, v0}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    .line 841
    invoke-virtual {v2}, Lccsancom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    .line 839
    invoke-static {v1, v0}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    const/4 v0, 0x1

    return v0
.end method

.method public reportAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 259
    const-string v0, "videoLength"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->duration:I

    .line 263
    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lccsancom/vungle/warren/model/Report;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lccsancom/vungle/warren/model/Report;->setVideoLength(J)V

    .line 264
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->repository:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lccsancom/vungle/warren/model/Report;

    iget-object v2, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->repoCallback:Lccsancom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {v0, v1, v2}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lccsancom/vungle/warren/persistence/Repository$SaveCallback;)V

    .line 265
    return-void

    .line 271
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v1, "video_close"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "mute"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_2
    const-string v1, "unmute"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 275
    :pswitch_0
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->analytics:Lccsancom/vungle/warren/analytics/AdAnalytics;

    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v1, p1}, Lccsancom/vungle/warren/model/Advertisement;->getTpatUrls(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/vungle/warren/analytics/AdAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    .line 280
    :goto_1
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lccsancom/vungle/warren/model/Report;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, p2, v1, v2}, Lccsancom/vungle/warren/model/Report;->recordAction(Ljava/lang/String;Ljava/lang/String;J)V

    .line 281
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->repository:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lccsancom/vungle/warren/model/Report;

    iget-object v2, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->repoCallback:Lccsancom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-virtual {v0, v1, v2}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lccsancom/vungle/warren/persistence/Repository$SaveCallback;)V

    .line 282
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x321793ce -> :sswitch_2
        0x335219 -> :sswitch_1
        0x51b1cd34 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public restoreFromSave(Lccsancom/vungle/warren/ui/state/OptionsState;)V
    .locals 3
    .param p1, "state"    # Lccsancom/vungle/warren/ui/state/OptionsState;

    .line 720
    if-nez p1, :cond_0

    .line 721
    return-void

    .line 724
    :cond_0
    const/4 v0, 0x0

    const-string v1, "incentivized_sent"

    invoke-interface {p1, v1, v0}, Lccsancom/vungle/warren/ui/state/OptionsState;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 725
    .local v0, "isIncentivizedShown":Z
    if-eqz v0, :cond_1

    .line 726
    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->sendReportIncentivized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 729
    :cond_1
    iget-boolean v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->inPost:Z

    const-string v2, "in_post_roll"

    invoke-interface {p1, v2, v1}, Lccsancom/vungle/warren/ui/state/OptionsState;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->inPost:Z

    .line 730
    iget-boolean v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->muted:Z

    const-string v2, "is_muted_mode"

    invoke-interface {p1, v2, v1}, Lccsancom/vungle/warren/ui/state/OptionsState;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->muted:Z

    .line 731
    iget v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->videoPosition:I

    const-string v2, "videoPosition"

    invoke-interface {p1, v2, v1}, Lccsancom/vungle/warren/ui/state/OptionsState;->getInt(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->videoPosition:I

    .line 732
    return-void
.end method

.method public setEventListener(Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;)V
    .locals 0
    .param p1, "listener"    # Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    .line 240
    iput-object p1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->bus:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    .line 241
    return-void
.end method

.method public start()V
    .locals 7

    .line 532
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->durationRecorder:Lccsancom/vungle/warren/ui/DurationRecorder;

    invoke-virtual {v0}, Lccsancom/vungle/warren/ui/DurationRecorder;->start()V

    .line 534
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v0}, Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;->hasWebView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 535
    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->reportErrorAndCloseAd(I)V

    .line 536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

    .line 537
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v2, v0}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    .line 538
    invoke-virtual {v2}, Lccsancom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    .line 536
    invoke-static {v1, v0}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    return-void

    .line 542
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v0}, Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;->setImmersiveMode()V

    .line 543
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v0}, Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;->resumeWeb()V

    .line 546
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->cookies:Ljava/util/Map;

    const-string v1, "consentIsImportantToVungle"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/model/Cookie;

    .line 547
    .local v0, "gdprConsent":Lccsancom/vungle/warren/model/Cookie;
    invoke-direct {p0, v0}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->needShowGDPR(Lccsancom/vungle/warren/model/Cookie;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 548
    invoke-direct {p0, v0}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->showGDPR(Lccsancom/vungle/warren/model/Cookie;)V

    .line 549
    return-void

    .line 552
    :cond_1
    iget-boolean v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->inPost:Z

    if-eqz v1, :cond_2

    .line 553
    invoke-direct {p0}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->isWebPageBlank()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 554
    invoke-direct {p0}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->playPost()V

    goto :goto_0

    .line 556
    :cond_2
    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v1}, Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;->isVideoPlaying()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v1}, Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;->isDialogVisible()Z

    move-result v1

    if-nez v1, :cond_4

    .line 558
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->assetDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 559
    .local v1, "video":Ljava/io/File;
    iget-object v2, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    iget-boolean v3, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->muted:Z

    iget v4, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->videoPosition:I

    invoke-interface {v2, v1, v3, v4}, Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;->playVideo(Ljava/io/File;ZI)V

    .line 562
    iget-object v2, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->advertisement:Lccsancom/vungle/warren/model/Advertisement;

    iget-object v3, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->placement:Lccsancom/vungle/warren/model/Placement;

    invoke-virtual {v3}, Lccsancom/vungle/warren/model/Placement;->isIncentivized()Z

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/vungle/warren/model/Advertisement;->getShowCloseDelay(Z)I

    move-result v2

    .line 563
    .local v2, "delayInMillis":I
    if-lez v2, :cond_3

    .line 565
    iget-object v3, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->scheduler:Lccsancom/vungle/warren/utility/Scheduler;

    new-instance v4, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter$5;

    invoke-direct {v4, p0}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter$5;-><init>(Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;)V

    int-to-long v5, v2

    invoke-interface {v3, v4, v5, v6}, Lccsancom/vungle/warren/utility/Scheduler;->schedule(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 575
    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->userExitEnabled:Z

    .line 576
    iget-object v3, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v3}, Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;->showCloseButton()V

    .line 579
    .end local v1    # "video":Ljava/io/File;
    .end local v2    # "delayInMillis":I
    :cond_4
    :goto_0
    return-void
.end method

.method public stop(I)V
    .locals 6
    .param p1, "stopReason"    # I

    .line 583
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->durationRecorder:Lccsancom/vungle/warren/ui/DurationRecorder;

    invoke-virtual {v0}, Lccsancom/vungle/warren/ui/DurationRecorder;->stop()V

    .line 585
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 586
    .local v0, "isChangingConfigurations":Z
    :goto_0
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 588
    .local v1, "isFinishing":Z
    :cond_1
    iget-object v3, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v3}, Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;->pauseWeb()V

    .line 590
    iget-object v3, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v3}, Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;->isVideoPlaying()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 591
    iget-object v3, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v3}, Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;->getVideoPosition()I

    move-result v3

    iput v3, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->videoPosition:I

    .line 592
    iget-object v3, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    invoke-interface {v3}, Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;->pauseVideo()V

    .line 595
    :cond_2
    if-nez v0, :cond_4

    if-eqz v1, :cond_4

    .line 596
    iget-object v3, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->isDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-nez v2, :cond_6

    .line 597
    const-string v2, "close"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    iget-object v2, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->scheduler:Lccsancom/vungle/warren/utility/Scheduler;

    invoke-interface {v2}, Lccsancom/vungle/warren/utility/Scheduler;->cancelAll()V

    .line 599
    iget-object v2, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->bus:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz v2, :cond_6

    .line 601
    iget-object v4, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->report:Lccsancom/vungle/warren/model/Report;

    invoke-virtual {v4}, Lccsancom/vungle/warren/model/Report;->isCTAClicked()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v3, "isCTAClicked"

    :cond_3
    iget-object v4, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->placement:Lccsancom/vungle/warren/model/Placement;

    invoke-virtual {v4}, Lccsancom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "end"

    invoke-interface {v2, v5, v3, v4}, Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 604
    :cond_4
    iget-boolean v2, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->inPost:Z

    if-nez v2, :cond_5

    if-eqz v1, :cond_6

    .line 605
    :cond_5
    iget-object v2, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->adView:Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    const-string v3, "about:blank"

    invoke-interface {v2, v3}, Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;->showWebsite(Ljava/lang/String;)V

    .line 607
    :cond_6
    :goto_1
    return-void
.end method
