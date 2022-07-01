.class public abstract Lccsancom/vungle/warren/AdActivity;
.super Lccsanandroid/app/Activity;
.source "AdActivity.java"


# static fields
.field public static final PRESENTER_STATE:Ljava/lang/String; = "presenter_state"

.field private static final REQUEST_KEY_EXTRA:Ljava/lang/String; = "request"

.field private static final TAG:Ljava/lang/String; = "VungleActivity"

.field private static bus:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;


# instance fields
.field private broadcastReceiver:Lccsanandroid/content/BroadcastReceiver;

.field private fullscreenCallback:Lccsancom/vungle/warren/PresentationFactory$FullScreenCallback;

.field private pendingStart:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private presenter:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

.field private presenterFactory:Lccsancom/vungle/warren/PresentationFactory;

.field private request:Lccsancom/vungle/warren/AdRequest;

.field private resumed:Z

.field private started:Z

.field private state:Lccsancom/vungle/warren/ui/state/OptionsState;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Lccsanandroid/app/Activity;-><init>()V

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lccsancom/vungle/warren/AdActivity;->pendingStart:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    iput-boolean v1, p0, Lccsancom/vungle/warren/AdActivity;->started:Z

    .line 78
    iput-boolean v1, p0, Lccsancom/vungle/warren/AdActivity;->resumed:Z

    .line 351
    new-instance v0, Lccsancom/vungle/warren/AdActivity$4;

    invoke-direct {v0, p0}, Lccsancom/vungle/warren/AdActivity$4;-><init>(Lccsancom/vungle/warren/AdActivity;)V

    iput-object v0, p0, Lccsancom/vungle/warren/AdActivity;->fullscreenCallback:Lccsancom/vungle/warren/PresentationFactory$FullScreenCallback;

    return-void
.end method

.method static synthetic access$002(Lccsancom/vungle/warren/AdActivity;Lccsancom/vungle/warren/PresentationFactory;)Lccsancom/vungle/warren/PresentationFactory;
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/AdActivity;
    .param p1, "x1"    # Lccsancom/vungle/warren/PresentationFactory;

    .line 42
    iput-object p1, p0, Lccsancom/vungle/warren/AdActivity;->presenterFactory:Lccsancom/vungle/warren/PresentationFactory;

    return-object p1
.end method

.method static synthetic access$100(Lccsancom/vungle/warren/AdActivity;)Lccsancom/vungle/warren/AdRequest;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/AdActivity;

    .line 42
    iget-object v0, p0, Lccsancom/vungle/warren/AdActivity;->request:Lccsancom/vungle/warren/AdRequest;

    return-object v0
.end method

.method static synthetic access$200(Lccsancom/vungle/warren/AdActivity;ILccsancom/vungle/warren/AdRequest;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/AdActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lccsancom/vungle/warren/AdRequest;

    .line 42
    invoke-direct {p0, p1, p2}, Lccsancom/vungle/warren/AdActivity;->deliverError(ILccsancom/vungle/warren/AdRequest;)V

    return-void
.end method

.method static synthetic access$300(Lccsancom/vungle/warren/AdActivity;)Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/AdActivity;

    .line 42
    iget-object v0, p0, Lccsancom/vungle/warren/AdActivity;->presenter:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    return-object v0
.end method

.method static synthetic access$302(Lccsancom/vungle/warren/AdActivity;Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;)Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/AdActivity;
    .param p1, "x1"    # Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    .line 42
    iput-object p1, p0, Lccsancom/vungle/warren/AdActivity;->presenter:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    return-object p1
.end method

.method static synthetic access$400()Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;
    .locals 1

    .line 42
    sget-object v0, Lccsancom/vungle/warren/AdActivity;->bus:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    return-object v0
.end method

.method static synthetic access$500(Lccsancom/vungle/warren/AdActivity;)Lccsancom/vungle/warren/ui/state/OptionsState;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/AdActivity;

    .line 42
    iget-object v0, p0, Lccsancom/vungle/warren/AdActivity;->state:Lccsancom/vungle/warren/ui/state/OptionsState;

    return-object v0
.end method

.method static synthetic access$600(Lccsancom/vungle/warren/AdActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/AdActivity;

    .line 42
    iget-object v0, p0, Lccsancom/vungle/warren/AdActivity;->pendingStart:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$700(Lccsancom/vungle/warren/AdActivity;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/AdActivity;

    .line 42
    invoke-direct {p0}, Lccsancom/vungle/warren/AdActivity;->start()V

    return-void
.end method

.method private connectBroadcastReceiver()V
    .locals 4

    .line 214
    new-instance v0, Lccsancom/vungle/warren/AdActivity$3;

    invoke-direct {v0, p0}, Lccsancom/vungle/warren/AdActivity$3;-><init>(Lccsancom/vungle/warren/AdActivity;)V

    iput-object v0, p0, Lccsancom/vungle/warren/AdActivity;->broadcastReceiver:Lccsanandroid/content/BroadcastReceiver;

    .line 229
    invoke-virtual {p0}, Lccsancom/vungle/warren/AdActivity;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Lccsanandroid/content/Context;)Lccsanandroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lccsancom/vungle/warren/AdActivity;->broadcastReceiver:Lccsanandroid/content/BroadcastReceiver;

    new-instance v2, Lccsanandroid/content/IntentFilter;

    const-string v3, "AdvertisementBus"

    invoke-direct {v2, v3}, Lccsanandroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lccsanandroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Lccsanandroid/content/BroadcastReceiver;Lccsanandroid/content/IntentFilter;)V

    .line 230
    return-void
.end method

.method public static createIntent(Lccsanandroid/content/Context;Lccsancom/vungle/warren/AdRequest;)Lccsanandroid/content/Intent;
    .locals 3
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "request"    # Lccsancom/vungle/warren/AdRequest;

    .line 96
    new-instance v0, Lccsanandroid/content/Intent;

    const-class v1, Lccsancom/vungle/warren/ui/VungleActivity;

    invoke-direct {v0, p0, v1}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .local v0, "intent":Lccsanandroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;

    .line 98
    new-instance v1, Lccsanandroid/os/Bundle;

    invoke-direct {v1}, Lccsanandroid/os/Bundle;-><init>()V

    .line 99
    .local v1, "bundle":Lccsanandroid/os/Bundle;
    const-string v2, "request"

    invoke-virtual {v1, v2, p1}, Lccsanandroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 100
    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->putExtras(Lccsanandroid/os/Bundle;)Lccsanandroid/content/Intent;

    .line 101
    return-object v0
.end method

.method private deliverError(ILccsancom/vungle/warren/AdRequest;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "request"    # Lccsancom/vungle/warren/AdRequest;

    .line 206
    new-instance v0, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v0, p1}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    .line 207
    .local v0, "exception":Lccsancom/vungle/warren/error/VungleException;
    sget-object v1, Lccsancom/vungle/warren/AdActivity;->bus:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz v1, :cond_0

    .line 208
    invoke-virtual {p2}, Lccsancom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onError(Lccsancom/vungle/warren/error/VungleException;Ljava/lang/String;)V

    .line 210
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lccsancom/vungle/warren/AdActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#deliverError"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lccsancom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method protected static getEventListener()Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;
    .locals 1

    .line 91
    sget-object v0, Lccsancom/vungle/warren/AdActivity;->bus:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    return-object v0
.end method

.method static getRequest(Lccsanandroid/content/Intent;)Lccsancom/vungle/warren/AdRequest;
    .locals 2
    .param p0, "intent"    # Lccsanandroid/content/Intent;

    .line 184
    invoke-virtual {p0}, Lccsanandroid/content/Intent;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object v0

    .line 185
    .local v0, "bundle":Lccsanandroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 186
    const-string v1, "request"

    invoke-virtual {v0, v1}, Lccsanandroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/AdRequest;

    return-object v1

    .line 188
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static setEventListener(Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;)V
    .locals 0
    .param p0, "listener"    # Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    .line 86
    sput-object p0, Lccsancom/vungle/warren/AdActivity;->bus:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    .line 87
    return-void
.end method

.method private start()V
    .locals 2

    .line 243
    iget-object v0, p0, Lccsancom/vungle/warren/AdActivity;->presenter:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lccsancom/vungle/warren/AdActivity;->pendingStart:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 245
    :cond_0
    iget-boolean v0, p0, Lccsancom/vungle/warren/AdActivity;->started:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lccsancom/vungle/warren/AdActivity;->resumed:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lccsancom/vungle/warren/AdActivity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lccsancom/vungle/warren/AdActivity;->presenter:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    invoke-interface {v0}, Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;->start()V

    .line 247
    iput-boolean v1, p0, Lccsancom/vungle/warren/AdActivity;->started:Z

    .line 249
    :cond_1
    :goto_0
    return-void
.end method

.method private stop()V
    .locals 3

    .line 252
    iget-object v0, p0, Lccsancom/vungle/warren/AdActivity;->presenter:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lccsancom/vungle/warren/AdActivity;->started:Z

    if-eqz v0, :cond_1

    .line 253
    invoke-virtual {p0}, Lccsancom/vungle/warren/AdActivity;->isChangingConfigurations()Z

    move-result v0

    .line 254
    invoke-virtual {p0}, Lccsancom/vungle/warren/AdActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    or-int/2addr v0, v2

    .line 255
    .local v0, "flag":I
    iget-object v2, p0, Lccsancom/vungle/warren/AdActivity;->presenter:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    invoke-interface {v2, v0}, Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;->stop(I)V

    .line 256
    iput-boolean v1, p0, Lccsancom/vungle/warren/AdActivity;->started:Z

    .line 258
    .end local v0    # "flag":I
    :cond_1
    iget-object v0, p0, Lccsancom/vungle/warren/AdActivity;->pendingStart:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 259
    return-void
.end method


# virtual methods
.method protected abstract canRotate()Z
.end method

.method public onBackPressed()V
    .locals 1

    .line 294
    iget-object v0, p0, Lccsancom/vungle/warren/AdActivity;->presenter:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    if-eqz v0, :cond_0

    .line 295
    invoke-interface {v0}, Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;->handleExit()Z

    .line 297
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Lccsanandroid/content/res/Configuration;

    .line 277
    invoke-super {p0, p1}, Lccsanandroid/app/Activity;->onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V

    .line 280
    iget v0, p1, Lccsanandroid/content/res/Configuration;->orientation:I

    const-string v1, "VungleActivity"

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 281
    const-string v0, "landscape"

    invoke-static {v1, v0}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 282
    :cond_0
    iget v0, p1, Lccsanandroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 283
    const-string v0, "portrait"

    invoke-static {v1, v0}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_1
    :goto_0
    iget-object v0, p0, Lccsancom/vungle/warren/AdActivity;->presenter:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    if-eqz v0, :cond_2

    .line 286
    invoke-interface {v0}, Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;->onViewConfigurationChanged()V

    .line 288
    :cond_2
    return-void
.end method

.method protected onCreate(Lccsanandroid/os/Bundle;)V
    .locals 22
    .param p1, "savedInstanceState"    # Lccsanandroid/os/Bundle;

    .line 107
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    invoke-super/range {p0 .. p1}, Lccsanandroid/app/Activity;->onCreate(Lccsanandroid/os/Bundle;)V

    .line 108
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Lccsancom/vungle/warren/AdActivity;->requestWindowFeature(I)Z

    .line 110
    invoke-virtual/range {p0 .. p0}, Lccsancom/vungle/warren/AdActivity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x1000000

    invoke-virtual {v1, v2, v2}, Lccsanandroid/view/Window;->setFlags(II)V

    .line 115
    invoke-virtual/range {p0 .. p0}, Lccsancom/vungle/warren/AdActivity;->getIntent()Lccsanandroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lccsancom/vungle/warren/AdActivity;->getRequest(Lccsanandroid/content/Intent;)Lccsancom/vungle/warren/AdRequest;

    move-result-object v1

    iput-object v1, v10, Lccsancom/vungle/warren/AdActivity;->request:Lccsancom/vungle/warren/AdRequest;

    .line 117
    invoke-static/range {p0 .. p0}, Lccsancom/vungle/warren/ServiceLocator;->getInstance(Lccsanandroid/content/Context;)Lccsancom/vungle/warren/ServiceLocator;

    move-result-object v12

    .line 118
    .local v12, "serviceLocator":Lccsancom/vungle/warren/ServiceLocator;
    const-class v1, Lccsancom/vungle/warren/VungleStaticApi;

    invoke-virtual {v12, v1}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lccsancom/vungle/warren/VungleStaticApi;

    .line 121
    .local v13, "vungleStaticApi":Lccsancom/vungle/warren/VungleStaticApi;
    invoke-interface {v13}, Lccsancom/vungle/warren/VungleStaticApi;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lccsancom/vungle/warren/AdActivity;->bus:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz v1, :cond_2

    iget-object v1, v10, Lccsancom/vungle/warren/AdActivity;->request:Lccsancom/vungle/warren/AdRequest;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lccsancom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 130
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 131
    .local v14, "adStartTime":J
    const/4 v9, 0x2

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v2, v10, Lccsancom/vungle/warren/AdActivity;->request:Lccsancom/vungle/warren/AdRequest;

    const/16 v16, 0x0

    aput-object v2, v1, v16

    .line 132
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v2, "Creating ad, request = %1$s, at: %2$d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 131
    const-string v8, "VungleActivity"

    const-string v7, "ttDownloadContext"

    invoke-static {v0, v8, v7, v1}, Lccsancom/vungle/warren/VungleLogger;->verbose(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :try_start_0
    new-instance v1, Lccsancom/vungle/warren/ui/view/FullAdWidget;

    invoke-virtual/range {p0 .. p0}, Lccsancom/vungle/warren/AdActivity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v2

    invoke-direct {v1, v10, v2}, Lccsancom/vungle/warren/ui/view/FullAdWidget;-><init>(Lccsanandroid/content/Context;Lccsanandroid/view/Window;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v1

    .line 144
    .local v6, "fullAdWidget":Lccsancom/vungle/warren/ui/view/FullAdWidget;
    nop

    .line 146
    const-class v1, Lccsancom/vungle/warren/PresentationFactory;

    invoke-virtual {v12, v1}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/PresentationFactory;

    iput-object v1, v10, Lccsancom/vungle/warren/AdActivity;->presenterFactory:Lccsancom/vungle/warren/PresentationFactory;

    .line 148
    if-nez v11, :cond_1

    .line 149
    const/4 v1, 0x0

    move-object v5, v1

    goto :goto_0

    .line 150
    :cond_1
    const-string v1, "presenter_state"

    invoke-virtual {v11, v1}, Lccsanandroid/os/Bundle;->getParcelable(Ljava/lang/String;)Lccsanandroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/ui/state/OptionsState;

    move-object v5, v1

    :goto_0
    iput-object v5, v10, Lccsancom/vungle/warren/AdActivity;->state:Lccsancom/vungle/warren/ui/state/OptionsState;

    .line 152
    iget-object v1, v10, Lccsancom/vungle/warren/AdActivity;->presenterFactory:Lccsancom/vungle/warren/PresentationFactory;

    iget-object v3, v10, Lccsancom/vungle/warren/AdActivity;->request:Lccsancom/vungle/warren/AdRequest;

    new-instance v4, Lccsancom/vungle/warren/AdActivity$1;

    invoke-direct {v4, v10}, Lccsancom/vungle/warren/AdActivity$1;-><init>(Lccsancom/vungle/warren/AdActivity;)V

    new-instance v2, Lccsancom/vungle/warren/AdActivity$2;

    invoke-direct {v2, v10}, Lccsancom/vungle/warren/AdActivity$2;-><init>(Lccsancom/vungle/warren/AdActivity;)V

    iget-object v9, v10, Lccsancom/vungle/warren/AdActivity;->fullscreenCallback:Lccsancom/vungle/warren/PresentationFactory$FullScreenCallback;

    move-object/from16 v17, v2

    move-object/from16 v2, p0

    move-object/from16 v18, v4

    move-object v4, v6

    move-object/from16 v19, v6

    .end local v6    # "fullAdWidget":Lccsancom/vungle/warren/ui/view/FullAdWidget;
    .local v19, "fullAdWidget":Lccsancom/vungle/warren/ui/view/FullAdWidget;
    move-object/from16 v6, v18

    move-object/from16 v20, v7

    move-object/from16 v7, v17

    move-object/from16 v21, v8

    move-object/from16 v8, p1

    const/4 v0, 0x2

    invoke-interface/range {v1 .. v9}, Lccsancom/vungle/warren/PresentationFactory;->getFullScreenPresentation(Lccsanandroid/content/Context;Lccsancom/vungle/warren/AdRequest;Lccsancom/vungle/warren/ui/view/FullAdWidget;Lccsancom/vungle/warren/ui/state/OptionsState;Lccsancom/vungle/warren/ui/CloseDelegate;Lccsancom/vungle/warren/ui/OrientationDelegate;Lccsanandroid/os/Bundle;Lccsancom/vungle/warren/PresentationFactory$FullScreenCallback;)V

    .line 173
    invoke-virtual/range {v19 .. v19}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object/from16 v2, v19

    .end local v19    # "fullAdWidget":Lccsancom/vungle/warren/ui/view/FullAdWidget;
    .local v2, "fullAdWidget":Lccsancom/vungle/warren/ui/view/FullAdWidget;
    invoke-virtual {v10, v2, v1}, Lccsancom/vungle/warren/AdActivity;->setContentView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 175
    invoke-direct/range {p0 .. p0}, Lccsancom/vungle/warren/AdActivity;->connectBroadcastReceiver()V

    .line 177
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, v10, Lccsancom/vungle/warren/AdActivity;->request:Lccsancom/vungle/warren/AdRequest;

    aput-object v1, v0, v16

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v14

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "Ad created, request = %1$s, elapsed time: %2$dms"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 177
    move-object/from16 v1, v20

    move-object/from16 v4, v21

    invoke-static {v3, v4, v1, v0}, Lccsancom/vungle/warren/VungleLogger;->verbose(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void

    .line 136
    .end local v2    # "fullAdWidget":Lccsancom/vungle/warren/ui/view/FullAdWidget;
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/InstantiationException;
    const/16 v1, 0xa

    iget-object v2, v10, Lccsancom/vungle/warren/AdActivity;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-direct {v10, v1, v2}, Lccsancom/vungle/warren/AdActivity;->deliverError(ILccsancom/vungle/warren/AdRequest;)V

    .line 138
    invoke-virtual/range {p0 .. p0}, Lccsancom/vungle/warren/AdActivity;->finish()V

    .line 143
    return-void

    .line 126
    .end local v0    # "e":Ljava/lang/InstantiationException;
    .end local v14    # "adStartTime":J
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lccsancom/vungle/warren/AdActivity;->finish()V

    .line 127
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 337
    invoke-virtual {p0}, Lccsancom/vungle/warren/AdActivity;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Lccsanandroid/content/Context;)Lccsanandroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lccsancom/vungle/warren/AdActivity;->broadcastReceiver:Lccsanandroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lccsanandroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Lccsanandroid/content/BroadcastReceiver;)V

    .line 339
    iget-object v0, p0, Lccsancom/vungle/warren/AdActivity;->presenter:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {p0}, Lccsancom/vungle/warren/AdActivity;->isChangingConfigurations()Z

    move-result v1

    or-int/lit8 v1, v1, 0x2

    invoke-interface {v0, v1}, Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;->detach(I)V

    goto :goto_0

    .line 342
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/AdActivity;->presenterFactory:Lccsancom/vungle/warren/PresentationFactory;

    if-eqz v0, :cond_1

    .line 343
    invoke-interface {v0}, Lccsancom/vungle/warren/PresentationFactory;->destroy()V

    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/vungle/warren/AdActivity;->presenterFactory:Lccsancom/vungle/warren/PresentationFactory;

    .line 345
    const/16 v0, 0x19

    iget-object v1, p0, Lccsancom/vungle/warren/AdActivity;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-direct {p0, v0, v1}, Lccsancom/vungle/warren/AdActivity;->deliverError(ILccsancom/vungle/warren/AdRequest;)V

    .line 348
    :cond_1
    :goto_0
    invoke-super {p0}, Lccsanandroid/app/Activity;->onDestroy()V

    .line 349
    return-void
.end method

.method protected onNewIntent(Lccsanandroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Lccsanandroid/content/Intent;

    .line 193
    invoke-super {p0, p1}, Lccsanandroid/app/Activity;->onNewIntent(Lccsanandroid/content/Intent;)V

    .line 194
    invoke-virtual {p0}, Lccsancom/vungle/warren/AdActivity;->getIntent()Lccsanandroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lccsancom/vungle/warren/AdActivity;->getRequest(Lccsanandroid/content/Intent;)Lccsancom/vungle/warren/AdRequest;

    move-result-object v0

    .line 195
    .local v0, "oldRequest":Lccsancom/vungle/warren/AdRequest;
    invoke-static {p1}, Lccsancom/vungle/warren/AdActivity;->getRequest(Lccsanandroid/content/Intent;)Lccsancom/vungle/warren/AdRequest;

    move-result-object v1

    .line 196
    .local v1, "newRequest":Lccsancom/vungle/warren/AdRequest;
    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 197
    .local v3, "oldPlacement":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lccsancom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, "newPlacement":Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 199
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tried to play another placement "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " while playing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VungleActivity"

    invoke-static {v5, v4}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/16 v4, 0xf

    invoke-direct {p0, v4, v1}, Lccsancom/vungle/warren/AdActivity;->deliverError(ILccsancom/vungle/warren/AdRequest;)V

    .line 201
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-class v5, Lccsancom/vungle/warren/AdActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "#onNewIntent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    const-string v6, "Tried to play another placement %1$s while playing %2$s"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lccsancom/vungle/warren/VungleLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_2
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 270
    invoke-super {p0}, Lccsanandroid/app/Activity;->onPause()V

    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/vungle/warren/AdActivity;->resumed:Z

    .line 272
    invoke-direct {p0}, Lccsancom/vungle/warren/AdActivity;->stop()V

    .line 273
    return-void
.end method

.method protected onRestoreInstanceState(Lccsanandroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Lccsanandroid/os/Bundle;

    .line 318
    invoke-super {p0, p1}, Lccsanandroid/app/Activity;->onRestoreInstanceState(Lccsanandroid/os/Bundle;)V

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRestoreInstanceState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VungleActivity"

    invoke-static {v1, v0}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    if-eqz p1, :cond_0

    iget-object v0, p0, Lccsancom/vungle/warren/AdActivity;->presenter:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    if-eqz v0, :cond_0

    .line 322
    const-string v1, "presenter_state"

    invoke-virtual {p1, v1}, Lccsanandroid/os/Bundle;->getParcelable(Ljava/lang/String;)Lccsanandroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/ui/state/OptionsState;

    invoke-interface {v0, v1}, Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;->restoreFromSave(Lccsancom/vungle/warren/ui/state/OptionsState;)V

    .line 324
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 263
    invoke-super {p0}, Lccsanandroid/app/Activity;->onResume()V

    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/vungle/warren/AdActivity;->resumed:Z

    .line 265
    invoke-direct {p0}, Lccsancom/vungle/warren/AdActivity;->start()V

    .line 266
    return-void
.end method

.method protected onSaveInstanceState(Lccsanandroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Lccsanandroid/os/Bundle;

    .line 301
    const-string v0, "VungleActivity"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    new-instance v0, Lccsancom/vungle/warren/ui/state/BundleOptionsState;

    invoke-direct {v0}, Lccsancom/vungle/warren/ui/state/BundleOptionsState;-><init>()V

    .line 304
    .local v0, "optionsState":Lccsancom/vungle/warren/ui/state/BundleOptionsState;
    iget-object v1, p0, Lccsancom/vungle/warren/AdActivity;->presenter:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    if-eqz v1, :cond_0

    .line 305
    invoke-interface {v1, v0}, Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;->generateSaveState(Lccsancom/vungle/warren/ui/state/OptionsState;)V

    .line 306
    const-string v1, "presenter_state"

    invoke-virtual {p1, v1, v0}, Lccsanandroid/os/Bundle;->putParcelable(Ljava/lang/String;Lccsanandroid/os/Parcelable;)V

    .line 309
    :cond_0
    iget-object v1, p0, Lccsancom/vungle/warren/AdActivity;->presenterFactory:Lccsancom/vungle/warren/PresentationFactory;

    if-eqz v1, :cond_1

    .line 310
    invoke-interface {v1, p1}, Lccsancom/vungle/warren/PresentationFactory;->saveState(Lccsanandroid/os/Bundle;)V

    .line 313
    :cond_1
    invoke-super {p0, p1}, Lccsanandroid/app/Activity;->onSaveInstanceState(Lccsanandroid/os/Bundle;)V

    .line 314
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .line 234
    invoke-super {p0, p1}, Lccsanandroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 235
    if-eqz p1, :cond_0

    .line 236
    invoke-direct {p0}, Lccsancom/vungle/warren/AdActivity;->start()V

    goto :goto_0

    .line 238
    :cond_0
    invoke-direct {p0}, Lccsancom/vungle/warren/AdActivity;->stop()V

    .line 240
    :goto_0
    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 1
    .param p1, "requestedOrientation"    # I

    .line 328
    invoke-virtual {p0}, Lccsancom/vungle/warren/AdActivity;->canRotate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    invoke-super {p0, p1}, Lccsanandroid/app/Activity;->setRequestedOrientation(I)V

    .line 331
    :cond_0
    return-void
.end method
