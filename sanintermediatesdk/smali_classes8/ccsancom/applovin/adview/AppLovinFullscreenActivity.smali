.class public Lccsancom/applovin/adview/AppLovinFullscreenActivity;
.super Lccsanandroid/app/Activity;

# interfaces
.implements Lccsancom/applovin/impl/adview/l;


# static fields
.field public static parentInterstitialWrapper:Lccsancom/applovin/impl/adview/q;


# instance fields
.field private a:Lccsancom/applovin/impl/sdk/k;

.field private b:Lccsancom/applovin/impl/adview/activity/b/a;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Lccsancom/applovin/impl/adview/activity/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->parentInterstitialWrapper:Lccsancom/applovin/impl/adview/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lccsanandroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "InterActivityV2"

    invoke-static {v0, p1, p2}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p2, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->parentInterstitialWrapper:Lccsancom/applovin/impl/adview/q;

    invoke-virtual {p2}, Lccsancom/applovin/impl/adview/q;->d()Lccsancom/applovin/sdk/AppLovinAdDisplayListener;

    move-result-object p2

    instance-of v0, p2, Lccsancom/applovin/impl/sdk/a/i;

    if-eqz v0, :cond_0

    invoke-static {p2, p1}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->parentInterstitialWrapper:Lccsancom/applovin/impl/adview/q;

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/q;->b()Lccsancom/applovin/impl/sdk/a/g;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/applovin/impl/sdk/utils/i;->b(Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAd;)V

    :goto_0
    invoke-virtual {p0}, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->dismiss()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->b:Lccsancom/applovin/impl/adview/activity/b/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/activity/b/a;->g()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->b:Lccsancom/applovin/impl/adview/activity/b/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/activity/b/a;->k()V

    :cond_0
    invoke-virtual {p0}, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/utils/Utils;->isAppLovinTestEnvironment(Lccsanandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0}, Lccsanandroid/app/Activity;->onBackPressed()V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lccsanandroid/app/Activity;->onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V

    iget-object v0, p0, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->b:Lccsancom/applovin/impl/adview/activity/b/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/adview/activity/b/a;->a(Lccsanandroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Lccsanandroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lccsanandroid/app/Activity;->onCreate(Lccsanandroid/os/Bundle;)V

    if-eqz p1, :cond_1

    sget-object v0, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->parentInterstitialWrapper:Lccsancom/applovin/impl/adview/q;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "com.applovin.dismiss_on_restore"

    invoke-virtual {p1, v1, v0}, Lccsanandroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const-string v0, "InterActivityV2"

    if-eqz p1, :cond_0

    const-string p1, "Dismissing ad. Activity was destroyed while in background."

    invoke-static {v0, p1}, Lccsancom/applovin/impl/sdk/r;->h(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->dismiss()V

    return-void

    :cond_0
    const-string p1, "Activity was destroyed while in background."

    invoke-static {v0, p1}, Lccsancom/applovin/impl/sdk/r;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Lccsanandroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Lccsanandroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lccsanandroid/view/Window;->addFlags(I)V

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->getIntent()Lccsanandroid/content/Intent;

    move-result-object v0

    const-string v1, "com.applovin.interstitial.sdk_key"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lccsancom/applovin/sdk/AppLovinSdkSettings;

    invoke-direct {v1, p0}, Lccsancom/applovin/sdk/AppLovinSdkSettings;-><init>(Lccsanandroid/content/Context;)V

    invoke-static {v0, v1, p0}, Lccsancom/applovin/sdk/AppLovinSdk;->getInstance(Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinSdkSettings;Lccsanandroid/content/Context;)Lccsancom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    iget-object v0, v0, Lccsancom/applovin/sdk/AppLovinSdk;->coreSdk:Lccsancom/applovin/impl/sdk/k;

    iput-object v0, p0, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->parentInterstitialWrapper:Lccsancom/applovin/impl/adview/q;

    if-eqz v1, :cond_3

    sget-object p1, Lccsancom/applovin/impl/sdk/c/b;->eM:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/ActivityManager;

    if-eqz v0, :cond_2

    new-instance v1, Lccsanandroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Lccsanandroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v0, v1}, Lccsanandroid/app/ActivityManager;->getMemoryInfo(Lccsanandroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v0, v1, Lccsanandroid/app/ActivityManager$MemoryInfo;->availMem:J

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-gez p1, :cond_2

    const/4 p1, 0x0

    const-string v0, "Not enough available memory"

    invoke-direct {p0, v0, p1}, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_2
    sget-object p1, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->parentInterstitialWrapper:Lccsancom/applovin/impl/adview/q;

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/q;->b()Lccsancom/applovin/impl/sdk/a/g;

    move-result-object p1

    sget-object v0, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->parentInterstitialWrapper:Lccsancom/applovin/impl/adview/q;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/q;->e()Lccsancom/applovin/sdk/AppLovinAdClickListener;

    move-result-object v0

    sget-object v1, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->parentInterstitialWrapper:Lccsancom/applovin/impl/adview/q;

    invoke-virtual {v1}, Lccsancom/applovin/impl/adview/q;->d()Lccsancom/applovin/sdk/AppLovinAdDisplayListener;

    move-result-object v1

    sget-object v2, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->parentInterstitialWrapper:Lccsancom/applovin/impl/adview/q;

    invoke-virtual {v2}, Lccsancom/applovin/impl/adview/q;->c()Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->present(Lccsancom/applovin/impl/sdk/a/g;Lccsancom/applovin/sdk/AppLovinAdClickListener;Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lccsanandroid/content/Intent;

    const-class v1, Lccsancom/applovin/impl/adview/activity/FullscreenAdService;

    invoke-direct {v0, p0, v1}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Lccsancom/applovin/impl/adview/activity/a;

    iget-object v2, p0, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-direct {v1, p0, v2}, Lccsancom/applovin/impl/adview/activity/a;-><init>(Lccsancom/applovin/adview/AppLovinFullscreenActivity;Lccsancom/applovin/impl/sdk/k;)V

    iput-object v1, p0, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->d:Lccsancom/applovin/impl/adview/activity/a;

    invoke-virtual {p0, v0, v1, p1}, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->bindService(Lccsanandroid/content/Intent;Lccsanandroid/content/ServiceConnection;I)Z

    invoke-static {}, Lccsancom/applovin/impl/sdk/utils/f;->g()Z

    move-result p1

    if-eqz p1, :cond_4

    :try_start_0
    invoke-static {}, Lccsanandroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsanandroid/webkit/WebView;->setDataDirectorySuffix(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :cond_4
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->parentInterstitialWrapper:Lccsancom/applovin/impl/adview/q;

    iget-object v0, p0, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->d:Lccsancom/applovin/impl/adview/activity/a;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->unbindService(Lccsanandroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->b:Lccsancom/applovin/impl/adview/activity/b/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/activity/b/a;->i()V

    :cond_1
    invoke-super {p0}, Lccsanandroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILccsanandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->b:Lccsancom/applovin/impl/adview/activity/b/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lccsancom/applovin/impl/adview/activity/b/a;->a(ILccsanandroid/view/KeyEvent;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lccsanandroid/app/Activity;->onKeyDown(ILccsanandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLowMemory()V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->b:Lccsancom/applovin/impl/adview/activity/b/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/activity/b/a;->j()V

    :cond_0
    invoke-super {p0}, Lccsanandroid/app/Activity;->onLowMemory()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lccsanandroid/app/Activity;->onPause()V

    iget-object v0, p0, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->b:Lccsancom/applovin/impl/adview/activity/b/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/activity/b/a;->f()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    :try_start_0
    invoke-super {p0}, Lccsanandroid/app/Activity;->onResume()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->b:Lccsancom/applovin/impl/adview/activity/b/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/activity/b/a;->e()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v1

    const-string v2, "InterActivityV2"

    const-string v3, "Error was encountered in onResume()."

    invoke-virtual {v1, v2, v3, v0}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->dismiss()V

    return-void
.end method

.method protected onSaveInstanceState(Lccsanandroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lccsanandroid/app/Activity;->onSaveInstanceState(Lccsanandroid/os/Bundle;)V

    iget-object v0, p0, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->a:Lccsancom/applovin/impl/sdk/k;

    if-eqz v0, :cond_0

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->eP:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "com.applovin.dismiss_on_restore"

    invoke-virtual {p1, v1, v0}, Lccsanandroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lccsanandroid/app/Activity;->onStop()V

    iget-object v0, p0, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->b:Lccsancom/applovin/impl/adview/activity/b/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/activity/b/a;->h()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->b:Lccsancom/applovin/impl/adview/activity/b/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->b:Lccsancom/applovin/impl/adview/activity/b/a;

    instance-of v0, v0, Lccsancom/applovin/impl/adview/activity/b/e;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->b:Lccsancom/applovin/impl/adview/activity/b/a;

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/adview/activity/b/a;->c(Z)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setSystemUiVisibility(I)V

    :cond_2
    invoke-super {p0, p1}, Lccsanandroid/app/Activity;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public present(Lccsancom/applovin/impl/sdk/a/g;Lccsancom/applovin/sdk/AppLovinAdClickListener;Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
    .locals 15

    move-object v8, p0

    invoke-virtual/range {p1 .. p1}, Lccsancom/applovin/impl/sdk/a/g;->aJ()Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    if-eqz v0, :cond_0

    iget-object v0, v8, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/utils/Utils;->checkExoPlayerEligibility(Lccsancom/applovin/impl/sdk/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    move-object/from16 v10, p1

    instance-of v0, v10, Lccsancom/applovin/impl/a/a;

    const-string v11, "Failed to create ExoPlayer presenter to show the ad. Falling back to using native media player presenter."

    const-string v12, "InterActivityV2"

    const-string v13, " and throwable: "

    if-eqz v0, :cond_2

    const-string v14, "Failed to create FullscreenVastVideoAdPresenter with sdk: "

    if-eqz v1, :cond_1

    :try_start_0
    new-instance v0, Lccsancom/applovin/impl/adview/activity/b/c;

    iget-object v4, v8, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->a:Lccsancom/applovin/impl/sdk/k;

    move-object v1, v0

    move-object/from16 v2, p1

    move-object v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lccsancom/applovin/impl/adview/activity/b/c;-><init>(Lccsancom/applovin/impl/sdk/a/g;Lccsancom/applovin/adview/AppLovinFullscreenActivity;Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/sdk/AppLovinAdClickListener;Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    iput-object v0, v8, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->b:Lccsancom/applovin/impl/adview/activity/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, v8, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v1

    invoke-virtual {v1, v12, v11, v0}, Lccsancom/applovin/impl/sdk/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-object v9, Lccsancom/applovin/impl/sdk/utils/Utils;->isExoPlayerEligible:Ljava/lang/Boolean;

    :try_start_1
    new-instance v0, Lccsancom/applovin/impl/adview/activity/b/d;

    iget-object v4, v8, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->a:Lccsancom/applovin/impl/sdk/k;

    move-object v1, v0

    move-object/from16 v2, p1

    move-object v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lccsancom/applovin/impl/adview/activity/b/d;-><init>(Lccsancom/applovin/impl/sdk/a/g;Lccsancom/applovin/adview/AppLovinFullscreenActivity;Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/sdk/AppLovinAdClickListener;Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    iput-object v0, v8, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->b:Lccsancom/applovin/impl/adview/activity/b/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :try_start_2
    new-instance v0, Lccsancom/applovin/impl/adview/activity/b/d;

    iget-object v4, v8, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->a:Lccsancom/applovin/impl/sdk/k;

    move-object v1, v0

    move-object/from16 v2, p1

    move-object v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lccsancom/applovin/impl/adview/activity/b/d;-><init>(Lccsancom/applovin/impl/sdk/a/g;Lccsancom/applovin/adview/AppLovinFullscreenActivity;Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/sdk/AppLovinAdClickListener;Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    iput-object v0, v8, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->b:Lccsancom/applovin/impl/adview/activity/b/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lccsancom/applovin/impl/sdk/a/g;->hasVideoUrl()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Lccsancom/applovin/impl/sdk/a/g;->aN()Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_3
    new-instance v0, Lccsancom/applovin/impl/adview/activity/b/g;

    iget-object v4, v8, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->a:Lccsancom/applovin/impl/sdk/k;

    move-object v1, v0

    move-object/from16 v2, p1

    move-object v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lccsancom/applovin/impl/adview/activity/b/g;-><init>(Lccsancom/applovin/impl/sdk/a/g;Lccsancom/applovin/adview/AppLovinFullscreenActivity;Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/sdk/AppLovinAdClickListener;Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    iput-object v0, v8, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->b:Lccsancom/applovin/impl/adview/activity/b/a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create FullscreenWebVideoAdPresenter with sdk: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_3
    if-eqz v1, :cond_4

    :try_start_4
    new-instance v0, Lccsancom/applovin/impl/adview/activity/b/e;

    iget-object v4, v8, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->a:Lccsancom/applovin/impl/sdk/k;

    move-object v1, v0

    move-object/from16 v2, p1

    move-object v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lccsancom/applovin/impl/adview/activity/b/e;-><init>(Lccsancom/applovin/impl/sdk/a/g;Lccsancom/applovin/adview/AppLovinFullscreenActivity;Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/sdk/AppLovinAdClickListener;Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    iput-object v0, v8, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->b:Lccsancom/applovin/impl/adview/activity/b/a;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    iget-object v1, v8, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v1

    invoke-virtual {v1, v12, v11, v0}, Lccsancom/applovin/impl/sdk/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-object v9, Lccsancom/applovin/impl/sdk/utils/Utils;->isExoPlayerEligible:Ljava/lang/Boolean;

    :try_start_5
    new-instance v0, Lccsancom/applovin/impl/adview/activity/b/f;

    iget-object v4, v8, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->a:Lccsancom/applovin/impl/sdk/k;

    move-object v1, v0

    move-object/from16 v2, p1

    move-object v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lccsancom/applovin/impl/adview/activity/b/f;-><init>(Lccsancom/applovin/impl/sdk/a/g;Lccsancom/applovin/adview/AppLovinFullscreenActivity;Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/sdk/AppLovinAdClickListener;Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    iput-object v0, v8, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->b:Lccsancom/applovin/impl/adview/activity/b/a;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto/16 :goto_0

    :catchall_5
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create FullscreenVideoAdExoPlayerPresenter with sdk: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_4
    :try_start_6
    new-instance v0, Lccsancom/applovin/impl/adview/activity/b/f;

    iget-object v4, v8, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->a:Lccsancom/applovin/impl/sdk/k;

    move-object v1, v0

    move-object/from16 v2, p1

    move-object v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lccsancom/applovin/impl/adview/activity/b/f;-><init>(Lccsancom/applovin/impl/sdk/a/g;Lccsancom/applovin/adview/AppLovinFullscreenActivity;Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/sdk/AppLovinAdClickListener;Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    iput-object v0, v8, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->b:Lccsancom/applovin/impl/adview/activity/b/a;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_0

    :catchall_6
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create FullscreenVideoAdPresenter with sdk: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_5
    :try_start_7
    new-instance v0, Lccsancom/applovin/impl/adview/activity/b/b;

    iget-object v4, v8, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->a:Lccsancom/applovin/impl/sdk/k;

    move-object v1, v0

    move-object/from16 v2, p1

    move-object v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lccsancom/applovin/impl/adview/activity/b/b;-><init>(Lccsancom/applovin/impl/sdk/a/g;Lccsancom/applovin/adview/AppLovinFullscreenActivity;Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/sdk/AppLovinAdClickListener;Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    iput-object v0, v8, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->b:Lccsancom/applovin/impl/adview/activity/b/a;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    :goto_0
    iget-object v0, v8, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->b:Lccsancom/applovin/impl/adview/activity/b/a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/activity/b/a;->d()V

    return-void

    :catchall_7
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create FullscreenGraphicAdPresenter with sdk: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
