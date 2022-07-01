.class public Lccsancom/vungle/warren/ui/view/VungleNativeView;
.super Lccsanandroid/webkit/WebView;
.source "VungleNativeView.java"

# interfaces
.implements Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;
.implements Lccsancom/vungle/warren/VungleNativeAd;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private broadcastReceiver:Lccsanandroid/content/BroadcastReceiver;

.field private final config:Lccsancom/vungle/warren/AdConfig;

.field private destroyed:Z

.field private isAdVisible:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final listener:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

.field private presenter:Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

.field presenterFactory:Lccsancom/vungle/warren/PresentationFactory;

.field private final request:Lccsancom/vungle/warren/AdRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lccsancom/vungle/warren/ui/view/VungleNativeView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/ui/view/VungleNativeView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/vungle/warren/AdRequest;Lccsancom/vungle/warren/AdConfig;Lccsancom/vungle/warren/PresentationFactory;Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "request"    # Lccsancom/vungle/warren/AdRequest;
    .param p3, "config"    # Lccsancom/vungle/warren/AdConfig;
    .param p4, "presentationFactory"    # Lccsancom/vungle/warren/PresentationFactory;
    .param p5, "listener"    # Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    .line 98
    invoke-direct {p0, p1}, Lccsanandroid/webkit/WebView;-><init>(Lccsanandroid/content/Context;)V

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView;->isAdVisible:Ljava/util/concurrent/atomic/AtomicReference;

    .line 99
    iput-object p5, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView;->listener:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    .line 100
    iput-object p2, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView;->request:Lccsancom/vungle/warren/AdRequest;

    .line 101
    iput-object p3, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView;->config:Lccsancom/vungle/warren/AdConfig;

    .line 102
    iput-object p4, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView;->presenterFactory:Lccsancom/vungle/warren/PresentationFactory;

    .line 107
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lccsancom/vungle/warren/ui/view/VungleNativeView;->setLayerType(ILccsanandroid/graphics/Paint;)V

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/vungle/warren/ui/view/VungleNativeView;->setBackgroundColor(I)V

    .line 111
    return-void
.end method

.method static synthetic access$000(Lccsancom/vungle/warren/ui/view/VungleNativeView;)Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/ui/view/VungleNativeView;

    .line 45
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView;->listener:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    return-object v0
.end method

.method static synthetic access$100(Lccsancom/vungle/warren/ui/view/VungleNativeView;)Lccsancom/vungle/warren/AdRequest;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/ui/view/VungleNativeView;

    .line 45
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView;->request:Lccsancom/vungle/warren/AdRequest;

    return-object v0
.end method

.method static synthetic access$200(Lccsancom/vungle/warren/ui/view/VungleNativeView;)Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/ui/view/VungleNativeView;

    .line 45
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView;->presenter:Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    return-object v0
.end method

.method static synthetic access$202(Lccsancom/vungle/warren/ui/view/VungleNativeView;Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;)Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/ui/view/VungleNativeView;
    .param p1, "x1"    # Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    .line 45
    iput-object p1, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView;->presenter:Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    return-object p1
.end method

.method static synthetic access$300(Lccsancom/vungle/warren/ui/view/VungleNativeView;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/ui/view/VungleNativeView;

    .line 45
    invoke-direct {p0}, Lccsancom/vungle/warren/ui/view/VungleNativeView;->prepare()V

    return-void
.end method

.method static synthetic access$400(Lccsancom/vungle/warren/ui/view/VungleNativeView;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/ui/view/VungleNativeView;

    .line 45
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView;->isAdVisible:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method private prepare()V
    .locals 2

    .line 117
    invoke-static {p0}, Lccsancom/vungle/warren/ui/view/WebSettingsUtils;->applyDefault(Lccsanandroid/webkit/WebView;)V

    .line 118
    new-instance v0, Lccsancom/vungle/warren/ui/JavascriptBridge;

    iget-object v1, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView;->presenter:Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/ui/JavascriptBridge;-><init>(Lccsancom/vungle/warren/ui/JavascriptBridge$MraidHandler;)V

    const-string v1, "Android"

    invoke-virtual {p0, v0, v1}, Lccsancom/vungle/warren/ui/view/VungleNativeView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lccsancom/vungle/warren/ui/view/VungleNativeView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 130
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 187
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView;->presenter:Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    if-eqz v0, :cond_0

    .line 188
    invoke-interface {v0}, Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;->handleExit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/vungle/warren/ui/view/VungleNativeView;->finishDisplayingAdInternal(Z)V

    goto :goto_0

    .line 191
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView;->presenterFactory:Lccsancom/vungle/warren/PresentationFactory;

    if-eqz v0, :cond_1

    .line 192
    invoke-interface {v0}, Lccsancom/vungle/warren/PresentationFactory;->destroy()V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView;->presenterFactory:Lccsancom/vungle/warren/PresentationFactory;

    .line 194
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView;->listener:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    new-instance v1, Lccsancom/vungle/warren/error/VungleException;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v2, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v2}, Lccsancom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onError(Lccsancom/vungle/warren/error/VungleException;Ljava/lang/String;)V

    .line 196
    :cond_1
    :goto_0
    return-void
.end method

.method public destroyAdView(J)V
    .locals 4
    .param p1, "webViewDestroyDelay"    # J

    .line 200
    iget-boolean v0, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView;->destroyed:Z

    if-eqz v0, :cond_0

    .line 201
    return-void

    .line 202
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView;->destroyed:Z

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView;->presenter:Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    .line 204
    iput-object v0, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView;->presenterFactory:Lccsancom/vungle/warren/PresentationFactory;

    .line 208
    const-string v1, "Android"

    invoke-virtual {p0, v1}, Lccsancom/vungle/warren/ui/view/VungleNativeView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0, v0}, Lccsancom/vungle/warren/ui/view/VungleNativeView;->setWebChromeClient(Lccsanandroid/webkit/WebChromeClient;)V

    .line 211
    new-instance v0, Lccsancom/vungle/warren/ui/view/VungleNativeView$1;

    invoke-direct {v0, p0}, Lccsancom/vungle/warren/ui/view/VungleNativeView$1;-><init>(Lccsancom/vungle/warren/ui/view/VungleNativeView;)V

    .line 222
    .local v0, "destroyRunnable":Ljava/lang/Runnable;
    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-gtz v3, :cond_1

    .line 223
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 225
    :cond_1
    new-instance v1, Lccsancom/vungle/warren/utility/HandlerScheduler;

    invoke-direct {v1}, Lccsancom/vungle/warren/utility/HandlerScheduler;-><init>()V

    invoke-virtual {v1, v0, p1, p2}, Lccsancom/vungle/warren/utility/HandlerScheduler;->schedule(Ljava/lang/Runnable;J)V

    .line 227
    :goto_0
    return-void
.end method

.method public finishDisplayingAd()V
    .locals 1

    .line 134
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lccsancom/vungle/warren/ui/view/VungleNativeView;->finishDisplayingAdInternal(Z)V

    .line 135
    return-void
.end method

.method public finishDisplayingAdInternal(Z)V
    .locals 3
    .param p1, "isFinishByExternalApi"    # Z

    .line 138
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView;->presenter:Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    if-eqz v0, :cond_1

    .line 139
    nop

    .line 140
    if-eqz p1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/lit8 v1, v1, 0x2

    .line 141
    .local v1, "flag":I
    invoke-interface {v0, v1}, Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;->detach(I)V

    .end local v1    # "flag":I
    goto :goto_1

    .line 142
    :cond_1
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView;->presenterFactory:Lccsancom/vungle/warren/PresentationFactory;

    if-eqz v0, :cond_2

    .line 143
    invoke-interface {v0}, Lccsancom/vungle/warren/PresentationFactory;->destroy()V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView;->presenterFactory:Lccsancom/vungle/warren/PresentationFactory;

    .line 145
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView;->listener:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    new-instance v1, Lccsancom/vungle/warren/error/VungleException;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v2, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v2}, Lccsancom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onError(Lccsancom/vungle/warren/error/VungleException;Ljava/lang/String;)V

    goto :goto_2

    .line 142
    :cond_2
    :goto_1
    nop

    .line 148
    :goto_2
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lccsancom/vungle/warren/ui/view/VungleNativeView;->destroyAdView(J)V

    .line 149
    return-void
.end method

.method public getWebsiteUrl()Ljava/lang/String;
    .locals 1

    .line 182
    invoke-virtual {p0}, Lccsancom/vungle/warren/ui/view/VungleNativeView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasWebView()Z
    .locals 1

    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .line 300
    invoke-super {p0}, Lccsanandroid/webkit/WebView;->onAttachedToWindow()V

    .line 302
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView;->presenterFactory:Lccsancom/vungle/warren/PresentationFactory;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView;->presenter:Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    if-nez v1, :cond_0

    .line 303
    iget-object v1, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView;->request:Lccsancom/vungle/warren/AdRequest;

    iget-object v2, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView;->config:Lccsancom/vungle/warren/AdConfig;

    new-instance v3, Lccsancom/vungle/warren/ui/view/VungleNativeView$2;

    invoke-direct {v3, p0}, Lccsancom/vungle/warren/ui/view/VungleNativeView$2;-><init>(Lccsancom/vungle/warren/ui/view/VungleNativeView;)V

    new-instance v4, Lccsancom/vungle/warren/ui/view/VungleNativeView$3;

    invoke-direct {v4, p0}, Lccsancom/vungle/warren/ui/view/VungleNativeView$3;-><init>(Lccsancom/vungle/warren/ui/view/VungleNativeView;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lccsancom/vungle/warren/PresentationFactory;->getNativeViewPresentation(Lccsancom/vungle/warren/AdRequest;Lccsancom/vungle/warren/AdConfig;Lccsancom/vungle/warren/ui/CloseDelegate;Lccsancom/vungle/warren/PresentationFactory$ViewCallback;)V

    .line 341
    :cond_0
    new-instance v0, Lccsancom/vungle/warren/ui/view/VungleNativeView$4;

    invoke-direct {v0, p0}, Lccsancom/vungle/warren/ui/view/VungleNativeView$4;-><init>(Lccsancom/vungle/warren/ui/view/VungleNativeView;)V

    iput-object v0, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView;->broadcastReceiver:Lccsanandroid/content/BroadcastReceiver;

    .line 353
    invoke-virtual {p0}, Lccsancom/vungle/warren/ui/view/VungleNativeView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Lccsanandroid/content/Context;)Lccsanandroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView;->broadcastReceiver:Lccsanandroid/content/BroadcastReceiver;

    new-instance v2, Lccsanandroid/content/IntentFilter;

    const-string v3, "AdvertisementBus"

    invoke-direct {v2, v3}, Lccsanandroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lccsanandroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Lccsanandroid/content/BroadcastReceiver;Lccsanandroid/content/IntentFilter;)V

    .line 355
    invoke-virtual {p0}, Lccsancom/vungle/warren/ui/view/VungleNativeView;->resumeWeb()V

    .line 356
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 366
    invoke-virtual {p0}, Lccsancom/vungle/warren/ui/view/VungleNativeView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Lccsanandroid/content/Context;)Lccsanandroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView;->broadcastReceiver:Lccsanandroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lccsanandroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Lccsanandroid/content/BroadcastReceiver;)V

    .line 367
    invoke-super {p0}, Lccsanandroid/webkit/WebView;->onDetachedFromWindow()V

    .line 368
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView;->presenterFactory:Lccsancom/vungle/warren/PresentationFactory;

    if-eqz v0, :cond_0

    .line 369
    invoke-interface {v0}, Lccsancom/vungle/warren/PresentationFactory;->destroy()V

    .line 372
    :cond_0
    invoke-virtual {p0}, Lccsancom/vungle/warren/ui/view/VungleNativeView;->pauseWeb()V

    .line 373
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 82
    invoke-super {p0}, Lccsanandroid/webkit/WebView;->onPause()V

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/vungle/warren/ui/view/VungleNativeView;->setAdVisibility(Z)V

    .line 84
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 72
    invoke-super {p0}, Lccsanandroid/webkit/WebView;->onResume()V

    .line 75
    sget-object v0, Lccsancom/vungle/warren/ui/view/VungleNativeView;->TAG:Ljava/lang/String;

    const-string v1, "Resuming Flex"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lccsancom/vungle/warren/ui/view/VungleNativeView;->setAdVisibility(Z)V

    .line 78
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .line 360
    invoke-super {p0, p1}, Lccsanandroid/webkit/WebView;->onWindowFocusChanged(Z)V

    .line 361
    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/ui/view/VungleNativeView;->setAdVisibility(Z)V

    .line 362
    return-void
.end method

.method public open(Ljava/lang/String;Lccsancom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "leftApplicationCallback"    # Lccsancom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;

    .line 242
    sget-object v0, Lccsancom/vungle/warren/ui/view/VungleNativeView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {p0}, Lccsancom/vungle/warren/ui/view/VungleNativeView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1, p2}, Lccsancom/vungle/warren/utility/ExternalRouter;->launch(Ljava/lang/String;Lccsanandroid/content/Context;Lccsancom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot open url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    return-void
.end method

.method public pauseWeb()V
    .locals 0

    .line 275
    invoke-virtual {p0}, Lccsancom/vungle/warren/ui/view/VungleNativeView;->onPause()V

    .line 276
    return-void
.end method

.method public refreshDialogIfVisible()V
    .locals 0

    .line 261
    return-void
.end method

.method public removeWebView()V
    .locals 2

    .line 280
    invoke-virtual {p0}, Lccsancom/vungle/warren/ui/view/VungleNativeView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    .line 282
    .local v0, "viewParent":Lccsanandroid/view/ViewParent;
    instance-of v1, v0, Lccsanandroid/view/ViewManager;

    if-eqz v1, :cond_0

    .line 283
    move-object v1, v0

    check-cast v1, Lccsanandroid/view/ViewManager;

    invoke-interface {v1, p0}, Lccsanandroid/view/ViewManager;->removeView(Lccsanandroid/view/View;)V

    .line 285
    :cond_0
    return-void
.end method

.method public renderNativeView()Lccsanandroid/view/View;
    .locals 0

    .line 153
    return-object p0
.end method

.method public resumeWeb()V
    .locals 0

    .line 270
    invoke-virtual {p0}, Lccsancom/vungle/warren/ui/view/VungleNativeView;->onResume()V

    .line 271
    return-void
.end method

.method public setAdVisibility(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .line 158
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView;->presenter:Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    if-eqz v0, :cond_0

    .line 159
    invoke-interface {v0, p1}, Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;->setAdVisibility(Z)V

    goto :goto_0

    .line 161
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView;->isAdVisible:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 163
    :goto_0
    return-void
.end method

.method public setImmersiveMode()V
    .locals 0

    .line 266
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .line 173
    return-void
.end method

.method public bridge synthetic setPresenter(Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;)V
    .locals 0

    .line 45
    check-cast p1, Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/ui/view/VungleNativeView;->setPresenter(Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;)V

    return-void
.end method

.method public setPresenter(Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;)V
    .locals 0
    .param p1, "presenter"    # Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    .line 168
    return-void
.end method

.method public setVisibility(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .line 294
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 295
    .local v0, "setVisibilityState":I
    :goto_0
    invoke-virtual {p0, v0}, Lccsancom/vungle/warren/ui/view/VungleNativeView;->setVisibility(I)V

    .line 296
    return-void
.end method

.method public showCloseButton()V
    .locals 2

    .line 237
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "VungleNativeView does not implement a close button"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "dialogTitle"    # Ljava/lang/String;
    .param p2, "dialogBody"    # Ljava/lang/String;
    .param p3, "dialogContinue"    # Ljava/lang/String;
    .param p4, "dialogClose"    # Ljava/lang/String;
    .param p5, "responseListener"    # Lccsanandroid/content/DialogInterface$OnClickListener;

    .line 255
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "VungleNativeView does not implement a dialog."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showWebsite(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 177
    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/ui/view/VungleNativeView;->loadUrl(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public updateWindow()V
    .locals 0

    .line 290
    return-void
.end method
