.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerFactory;
.super Ljava/lang/Object;
.source "ExoPlayerFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance([Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;
    .locals 1

    .line 207
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;-><init>()V

    invoke-static {p0, p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerFactory;->newInstance([Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/LoadControl;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance([Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/LoadControl;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;
    .locals 2

    .line 219
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;

    sget-object v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;->DEFAULT:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;

    invoke-direct {v0, p0, p1, p2, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;-><init>([Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/LoadControl;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;)V

    return-object v0
.end method

.method public static newSimpleInstance(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;
    .locals 1

    .line 119
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;-><init>(Lccsanandroid/content/Context;)V

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Lccsancom/mbridge/msdk/playercommon/exoplayer2/RenderersFactory;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    move-result-object p0

    return-object p0
.end method

.method public static newSimpleInstance(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/LoadControl;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;
    .locals 1

    .line 44
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;-><init>(Lccsanandroid/content/Context;)V

    .line 45
    invoke-static {v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Lccsancom/mbridge/msdk/playercommon/exoplayer2/RenderersFactory;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/LoadControl;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    move-result-object p0

    return-object p0
.end method

.method public static newSimpleInstance(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/LoadControl;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/LoadControl;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;)",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;"
        }
    .end annotation

    .line 62
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;-><init>(Lccsanandroid/content/Context;)V

    .line 63
    invoke-static {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Lccsancom/mbridge/msdk/playercommon/exoplayer2/RenderersFactory;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/LoadControl;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    move-result-object p0

    return-object p0
.end method

.method public static newSimpleInstance(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/LoadControl;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/LoadControl;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;I)",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;"
        }
    .end annotation

    .line 83
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;

    invoke-direct {v0, p0, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;-><init>(Lccsanandroid/content/Context;I)V

    .line 84
    invoke-static {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Lccsancom/mbridge/msdk/playercommon/exoplayer2/RenderersFactory;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/LoadControl;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    move-result-object p0

    return-object p0
.end method

.method public static newSimpleInstance(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/LoadControl;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;IJ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/LoadControl;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;IJ)",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;"
        }
    .end annotation

    .line 107
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;

    invoke-direct {v0, p0, p4, p5, p6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;-><init>(Lccsanandroid/content/Context;IJ)V

    .line 109
    invoke-static {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Lccsancom/mbridge/msdk/playercommon/exoplayer2/RenderersFactory;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/LoadControl;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    move-result-object p0

    return-object p0
.end method

.method public static newSimpleInstance(Lccsancom/mbridge/msdk/playercommon/exoplayer2/RenderersFactory;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;
    .locals 1

    .line 130
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;-><init>()V

    invoke-static {p0, p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Lccsancom/mbridge/msdk/playercommon/exoplayer2/RenderersFactory;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/LoadControl;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    move-result-object p0

    return-object p0
.end method

.method public static newSimpleInstance(Lccsancom/mbridge/msdk/playercommon/exoplayer2/RenderersFactory;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/LoadControl;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;
    .locals 2

    .line 158
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/RenderersFactory;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/LoadControl;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;)V

    return-object v0
.end method

.method public static newSimpleInstance(Lccsancom/mbridge/msdk/playercommon/exoplayer2/RenderersFactory;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/LoadControl;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/RenderersFactory;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/LoadControl;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;)",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;"
        }
    .end annotation

    .line 176
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-direct {v0, p0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/RenderersFactory;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/LoadControl;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;)V

    return-object v0
.end method

.method public static newSimpleInstance(Lccsancom/mbridge/msdk/playercommon/exoplayer2/RenderersFactory;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/LoadControl;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$Factory;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/RenderersFactory;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/LoadControl;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$Factory;",
            ")",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;"
        }
    .end annotation

    .line 196
    new-instance v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/RenderersFactory;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/LoadControl;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$Factory;)V

    return-object v6
.end method

.method public static newSimpleInstance(Lccsancom/mbridge/msdk/playercommon/exoplayer2/RenderersFactory;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/RenderersFactory;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;)",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;"
        }
    .end annotation

    .line 145
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;-><init>()V

    invoke-static {p0, p1, v0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Lccsancom/mbridge/msdk/playercommon/exoplayer2/RenderersFactory;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/LoadControl;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    move-result-object p0

    return-object p0
.end method
