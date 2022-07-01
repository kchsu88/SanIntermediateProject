.class public Lccsancom/vungle/warren/VungleBanner;
.super Lccsanandroid/widget/RelativeLayout;
.source "VungleBanner.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bannerAd:Lccsancom/vungle/warren/ui/view/VungleNativeView;

.field private bannerAdConfig:Lccsancom/vungle/warren/BannerAdConfig;

.field private calculatedPixelHeight:I

.field private calculatedPixelWidth:I

.field private destroyed:Z

.field private disableRenderManagement:Z

.field private loadAdCallback:Lccsancom/vungle/warren/LoadAdCallback;

.field private placementId:Ljava/lang/String;

.field private playAdCallback:Lccsancom/vungle/warren/PlayAdCallback;

.field private refreshAdRunnable:Ljava/lang/Runnable;

.field private refreshHandler:Lccsancom/vungle/warren/utility/RefreshHandler;

.field private renderAdRequested:Z

.field private renderWhenAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lccsancom/vungle/warren/VungleBanner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/VungleBanner;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/vungle/warren/AdMarkup;ILccsancom/vungle/warren/BannerAdConfig;Lccsancom/vungle/warren/PlayAdCallback;)V
    .locals 21
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "placementId"    # Ljava/lang/String;
    .param p3, "markup"    # Lccsancom/vungle/warren/AdMarkup;
    .param p4, "adRefreshDuration"    # I
    .param p5, "bannerAdConfig"    # Lccsancom/vungle/warren/BannerAdConfig;
    .param p6, "callback"    # Lccsancom/vungle/warren/PlayAdCallback;

    .line 53
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    invoke-direct/range {p0 .. p1}, Lccsanandroid/widget/RelativeLayout;-><init>(Lccsanandroid/content/Context;)V

    .line 82
    new-instance v4, Lccsancom/vungle/warren/VungleBanner$1;

    invoke-direct {v4, v0}, Lccsancom/vungle/warren/VungleBanner$1;-><init>(Lccsancom/vungle/warren/VungleBanner;)V

    iput-object v4, v0, Lccsancom/vungle/warren/VungleBanner;->refreshAdRunnable:Ljava/lang/Runnable;

    .line 242
    new-instance v4, Lccsancom/vungle/warren/VungleBanner$2;

    invoke-direct {v4, v0}, Lccsancom/vungle/warren/VungleBanner$2;-><init>(Lccsancom/vungle/warren/VungleBanner;)V

    iput-object v4, v0, Lccsancom/vungle/warren/VungleBanner;->loadAdCallback:Lccsancom/vungle/warren/LoadAdCallback;

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 55
    .local v4, "bannerAdStartTime":J
    sget-object v6, Lccsancom/vungle/warren/VungleBanner;->TAG:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    .line 56
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v8, v11

    const-string v10, "Creating banner ad, id = %1$s, at: %2$d"

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 55
    const-string v10, "ttDownloadContext"

    invoke-static {v11, v6, v10, v8}, Lccsancom/vungle/warren/VungleLogger;->verbose(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iput-object v2, v0, Lccsancom/vungle/warren/VungleBanner;->placementId:Ljava/lang/String;

    .line 58
    iput-object v3, v0, Lccsancom/vungle/warren/VungleBanner;->bannerAdConfig:Lccsancom/vungle/warren/BannerAdConfig;

    .line 59
    invoke-virtual/range {p5 .. p5}, Lccsancom/vungle/warren/BannerAdConfig;->getAdSize()Lccsancom/vungle/warren/AdConfig$AdSize;

    move-result-object v8

    .line 60
    .local v8, "adSize":Lccsancom/vungle/warren/AdConfig$AdSize;
    move-object/from16 v12, p6

    iput-object v12, v0, Lccsancom/vungle/warren/VungleBanner;->playAdCallback:Lccsancom/vungle/warren/PlayAdCallback;

    .line 63
    invoke-virtual {v8}, Lccsancom/vungle/warren/AdConfig$AdSize;->getHeight()I

    move-result v13

    invoke-static {v1, v13}, Lccsancom/vungle/warren/utility/ViewUtility;->dpToPixels(Lccsanandroid/content/Context;I)I

    move-result v13

    iput v13, v0, Lccsancom/vungle/warren/VungleBanner;->calculatedPixelHeight:I

    .line 64
    invoke-virtual {v8}, Lccsancom/vungle/warren/AdConfig$AdSize;->getWidth()I

    move-result v13

    invoke-static {v1, v13}, Lccsancom/vungle/warren/utility/ViewUtility;->dpToPixels(Lccsanandroid/content/Context;I)I

    move-result v13

    iput v13, v0, Lccsancom/vungle/warren/VungleBanner;->calculatedPixelWidth:I

    .line 66
    new-instance v13, Lccsancom/vungle/warren/AdConfig;

    invoke-direct {v13, v3}, Lccsancom/vungle/warren/AdConfig;-><init>(Lccsancom/vungle/warren/BaseAdConfig;)V

    .line 67
    .local v13, "adConfig":Lccsancom/vungle/warren/AdConfig;
    iget-object v14, v0, Lccsancom/vungle/warren/VungleBanner;->playAdCallback:Lccsancom/vungle/warren/PlayAdCallback;

    move-object/from16 v15, p3

    invoke-static {v2, v15, v13, v14}, Lccsancom/vungle/warren/Vungle;->getNativeAdInternal(Ljava/lang/String;Lccsancom/vungle/warren/AdMarkup;Lccsancom/vungle/warren/AdConfig;Lccsancom/vungle/warren/PlayAdCallback;)Lccsancom/vungle/warren/ui/view/VungleNativeView;

    move-result-object v14

    iput-object v14, v0, Lccsancom/vungle/warren/VungleBanner;->bannerAd:Lccsancom/vungle/warren/ui/view/VungleNativeView;

    .line 69
    new-instance v14, Lccsancom/vungle/warren/utility/RefreshHandler;

    new-instance v11, Lccsancom/vungle/warren/utility/WeakRunnable;

    iget-object v9, v0, Lccsancom/vungle/warren/VungleBanner;->refreshAdRunnable:Ljava/lang/Runnable;

    invoke-direct {v11, v9}, Lccsancom/vungle/warren/utility/WeakRunnable;-><init>(Ljava/lang/Runnable;)V

    move/from16 v9, p4

    move-object/from16 v18, v8

    .end local v8    # "adSize":Lccsancom/vungle/warren/AdConfig$AdSize;
    .local v18, "adSize":Lccsancom/vungle/warren/AdConfig$AdSize;
    int-to-long v7, v9

    const-wide/16 v19, 0x3e8

    mul-long v7, v7, v19

    invoke-direct {v14, v11, v7, v8}, Lccsancom/vungle/warren/utility/RefreshHandler;-><init>(Ljava/lang/Runnable;J)V

    iput-object v14, v0, Lccsancom/vungle/warren/VungleBanner;->refreshHandler:Lccsancom/vungle/warren/utility/RefreshHandler;

    .line 71
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v4

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v11, 0x1

    aput-object v8, v7, v11

    const-string v8, "Banner ad created, id = %1$s, elapsed time: %2$dms"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 71
    invoke-static {v11, v6, v10, v7}, Lccsancom/vungle/warren/VungleLogger;->verbose(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lccsancom/vungle/warren/VungleBanner;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lccsancom/vungle/warren/VungleBanner;)Z
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/VungleBanner;

    .line 23
    iget-boolean v0, p0, Lccsancom/vungle/warren/VungleBanner;->renderWhenAvailable:Z

    return v0
.end method

.method static synthetic access$102(Lccsancom/vungle/warren/VungleBanner;Z)Z
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/VungleBanner;
    .param p1, "x1"    # Z

    .line 23
    iput-boolean p1, p0, Lccsancom/vungle/warren/VungleBanner;->renderWhenAvailable:Z

    return p1
.end method

.method static synthetic access$200(Lccsancom/vungle/warren/VungleBanner;)Z
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/VungleBanner;

    .line 23
    invoke-direct {p0}, Lccsancom/vungle/warren/VungleBanner;->canRender()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lccsancom/vungle/warren/VungleBanner;Z)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/VungleBanner;
    .param p1, "x1"    # Z

    .line 23
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/VungleBanner;->finishAdInternal(Z)V

    return-void
.end method

.method static synthetic access$400(Lccsancom/vungle/warren/VungleBanner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/VungleBanner;

    .line 23
    iget-object v0, p0, Lccsancom/vungle/warren/VungleBanner;->placementId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lccsancom/vungle/warren/VungleBanner;)Lccsancom/vungle/warren/BannerAdConfig;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/VungleBanner;

    .line 23
    iget-object v0, p0, Lccsancom/vungle/warren/VungleBanner;->bannerAdConfig:Lccsancom/vungle/warren/BannerAdConfig;

    return-object v0
.end method

.method static synthetic access$600(Lccsancom/vungle/warren/VungleBanner;)Lccsancom/vungle/warren/PlayAdCallback;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/VungleBanner;

    .line 23
    iget-object v0, p0, Lccsancom/vungle/warren/VungleBanner;->playAdCallback:Lccsancom/vungle/warren/PlayAdCallback;

    return-object v0
.end method

.method static synthetic access$702(Lccsancom/vungle/warren/VungleBanner;Lccsancom/vungle/warren/ui/view/VungleNativeView;)Lccsancom/vungle/warren/ui/view/VungleNativeView;
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/VungleBanner;
    .param p1, "x1"    # Lccsancom/vungle/warren/ui/view/VungleNativeView;

    .line 23
    iput-object p1, p0, Lccsancom/vungle/warren/VungleBanner;->bannerAd:Lccsancom/vungle/warren/ui/view/VungleNativeView;

    return-object p1
.end method

.method static synthetic access$800(Lccsancom/vungle/warren/VungleBanner;)Lccsancom/vungle/warren/utility/RefreshHandler;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/VungleBanner;

    .line 23
    iget-object v0, p0, Lccsancom/vungle/warren/VungleBanner;->refreshHandler:Lccsancom/vungle/warren/utility/RefreshHandler;

    return-object v0
.end method

.method private canRender()Z
    .locals 1

    .line 233
    iget-boolean v0, p0, Lccsancom/vungle/warren/VungleBanner;->destroyed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lccsancom/vungle/warren/VungleBanner;->disableRenderManagement:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lccsancom/vungle/warren/VungleBanner;->renderAdRequested:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private finishAdInternal(Z)V
    .locals 1
    .param p1, "isFinishedByApi"    # Z

    .line 180
    monitor-enter p0

    .line 181
    :try_start_0
    iget-object v0, p0, Lccsancom/vungle/warren/VungleBanner;->refreshHandler:Lccsancom/vungle/warren/utility/RefreshHandler;

    invoke-virtual {v0}, Lccsancom/vungle/warren/utility/RefreshHandler;->clean()V

    .line 182
    iget-object v0, p0, Lccsancom/vungle/warren/VungleBanner;->bannerAd:Lccsancom/vungle/warren/ui/view/VungleNativeView;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0, p1}, Lccsancom/vungle/warren/ui/view/VungleNativeView;->finishDisplayingAdInternal(Z)V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/vungle/warren/VungleBanner;->bannerAd:Lccsancom/vungle/warren/ui/view/VungleNativeView;

    .line 185
    invoke-virtual {p0}, Lccsancom/vungle/warren/VungleBanner;->removeAllViews()V

    .line 187
    :cond_0
    monitor-exit p0

    .line 188
    return-void

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public destroyAd()V
    .locals 1

    .line 199
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lccsancom/vungle/warren/VungleBanner;->finishAdInternal(Z)V

    .line 200
    iput-boolean v0, p0, Lccsancom/vungle/warren/VungleBanner;->destroyed:Z

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/vungle/warren/VungleBanner;->playAdCallback:Lccsancom/vungle/warren/PlayAdCallback;

    .line 202
    return-void
.end method

.method public disableLifeCycleManagement(Z)V
    .locals 0
    .param p1, "disable"    # Z

    .line 296
    iput-boolean p1, p0, Lccsancom/vungle/warren/VungleBanner;->disableRenderManagement:Z

    .line 297
    return-void
.end method

.method public finishAd()V
    .locals 1

    .line 176
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lccsancom/vungle/warren/VungleBanner;->finishAdInternal(Z)V

    .line 177
    return-void
.end method

.method protected loadAdInternal()V
    .locals 4

    .line 271
    sget-object v0, Lccsancom/vungle/warren/VungleBanner;->TAG:Ljava/lang/String;

    const-string v1, "Loading Ad"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lccsancom/vungle/warren/VungleBanner;->placementId:Ljava/lang/String;

    iget-object v1, p0, Lccsancom/vungle/warren/VungleBanner;->bannerAdConfig:Lccsancom/vungle/warren/BannerAdConfig;

    new-instance v2, Lccsancom/vungle/warren/utility/WeakLoadAdCallback;

    iget-object v3, p0, Lccsancom/vungle/warren/VungleBanner;->loadAdCallback:Lccsancom/vungle/warren/LoadAdCallback;

    invoke-direct {v2, v3}, Lccsancom/vungle/warren/utility/WeakLoadAdCallback;-><init>(Lccsancom/vungle/warren/LoadAdCallback;)V

    invoke-static {v0, v1, v2}, Lccsancom/vungle/warren/Banners;->loadBanner(Ljava/lang/String;Lccsancom/vungle/warren/BannerAdConfig;Lccsancom/vungle/warren/LoadAdCallback;)V

    .line 273
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 96
    invoke-super {p0}, Lccsanandroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 97
    sget-object v0, Lccsancom/vungle/warren/VungleBanner;->TAG:Ljava/lang/String;

    const-string v1, "Banner onAttachedToWindow"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-boolean v0, p0, Lccsancom/vungle/warren/VungleBanner;->disableRenderManagement:Z

    if-eqz v0, :cond_0

    .line 100
    return-void

    .line 103
    :cond_0
    invoke-virtual {p0}, Lccsancom/vungle/warren/VungleBanner;->renderAd()V

    .line 104
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 108
    invoke-super {p0}, Lccsanandroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 117
    iget-boolean v0, p0, Lccsancom/vungle/warren/VungleBanner;->disableRenderManagement:Z

    if-eqz v0, :cond_0

    .line 118
    sget-object v0, Lccsancom/vungle/warren/VungleBanner;->TAG:Ljava/lang/String;

    const-string v1, "Banner onDetachedFromWindow: render management disabled, do nothing"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void

    .line 121
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lccsancom/vungle/warren/VungleBanner;->finishAdInternal(Z)V

    .line 122
    return-void
.end method

.method protected onVisibilityChanged(Lccsanandroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Lccsanandroid/view/View;
    .param p2, "visibility"    # I

    .line 238
    invoke-super {p0, p1, p2}, Lccsanandroid/widget/RelativeLayout;->onVisibilityChanged(Lccsanandroid/view/View;I)V

    .line 239
    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lccsancom/vungle/warren/VungleBanner;->setAdVisibility(Z)V

    .line 240
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .line 229
    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/VungleBanner;->setAdVisibility(Z)V

    .line 230
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3
    .param p1, "visibility"    # I

    .line 77
    invoke-super {p0, p1}, Lccsanandroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 78
    sget-object v0, Lccsancom/vungle/warren/VungleBanner;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Banner onWindowVisibilityChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lccsancom/vungle/warren/VungleBanner;->setAdVisibility(Z)V

    .line 80
    return-void
.end method

.method public renderAd()V
    .locals 4

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/vungle/warren/VungleBanner;->renderAdRequested:Z

    .line 133
    invoke-virtual {p0}, Lccsancom/vungle/warren/VungleBanner;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    return-void

    .line 137
    :cond_0
    iget-object v1, p0, Lccsancom/vungle/warren/VungleBanner;->bannerAd:Lccsancom/vungle/warren/ui/view/VungleNativeView;

    if-nez v1, :cond_2

    .line 138
    invoke-direct {p0}, Lccsancom/vungle/warren/VungleBanner;->canRender()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    iput-boolean v0, p0, Lccsancom/vungle/warren/VungleBanner;->renderWhenAvailable:Z

    .line 140
    invoke-virtual {p0}, Lccsancom/vungle/warren/VungleBanner;->loadAdInternal()V

    .line 142
    :cond_1
    return-void

    .line 145
    :cond_2
    invoke-virtual {v1}, Lccsancom/vungle/warren/ui/view/VungleNativeView;->renderNativeView()Lccsanandroid/view/View;

    move-result-object v0

    .line 146
    .local v0, "view":Lccsanandroid/view/View;
    invoke-virtual {v0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v1

    if-eq v1, p0, :cond_3

    .line 148
    iget v1, p0, Lccsancom/vungle/warren/VungleBanner;->calculatedPixelWidth:I

    iget v2, p0, Lccsancom/vungle/warren/VungleBanner;->calculatedPixelHeight:I

    invoke-virtual {p0, v0, v1, v2}, Lccsancom/vungle/warren/VungleBanner;->addView(Lccsanandroid/view/View;II)V

    .line 149
    sget-object v1, Lccsancom/vungle/warren/VungleBanner;->TAG:Ljava/lang/String;

    const-string v2, "Add VungleNativeView to Parent"

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_3
    sget-object v1, Lccsancom/vungle/warren/VungleBanner;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rendering new ad for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/vungle/warren/VungleBanner;->placementId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {p0}, Lccsancom/vungle/warren/VungleBanner;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 157
    .local v1, "bannerLayoutParams":Lccsanandroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_4

    .line 159
    iget v2, p0, Lccsancom/vungle/warren/VungleBanner;->calculatedPixelHeight:I

    iput v2, v1, Lccsanandroid/view/ViewGroup$LayoutParams;->height:I

    .line 160
    iget v2, p0, Lccsancom/vungle/warren/VungleBanner;->calculatedPixelWidth:I

    iput v2, v1, Lccsanandroid/view/ViewGroup$LayoutParams;->width:I

    .line 161
    invoke-virtual {p0}, Lccsancom/vungle/warren/VungleBanner;->requestLayout()V

    .line 164
    :cond_4
    iget-object v2, p0, Lccsancom/vungle/warren/VungleBanner;->refreshHandler:Lccsancom/vungle/warren/utility/RefreshHandler;

    invoke-virtual {v2}, Lccsancom/vungle/warren/utility/RefreshHandler;->start()V

    .line 165
    return-void
.end method

.method public setAdVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 216
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lccsancom/vungle/warren/VungleBanner;->canRender()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lccsancom/vungle/warren/VungleBanner;->refreshHandler:Lccsancom/vungle/warren/utility/RefreshHandler;

    invoke-virtual {v0}, Lccsancom/vungle/warren/utility/RefreshHandler;->start()V

    goto :goto_0

    .line 219
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/VungleBanner;->refreshHandler:Lccsancom/vungle/warren/utility/RefreshHandler;

    invoke-virtual {v0}, Lccsancom/vungle/warren/utility/RefreshHandler;->pause()V

    .line 222
    :goto_0
    iget-object v0, p0, Lccsancom/vungle/warren/VungleBanner;->bannerAd:Lccsancom/vungle/warren/ui/view/VungleNativeView;

    if-eqz v0, :cond_1

    .line 223
    invoke-virtual {v0, p1}, Lccsancom/vungle/warren/ui/view/VungleNativeView;->setAdVisibility(Z)V

    .line 225
    :cond_1
    return-void
.end method
