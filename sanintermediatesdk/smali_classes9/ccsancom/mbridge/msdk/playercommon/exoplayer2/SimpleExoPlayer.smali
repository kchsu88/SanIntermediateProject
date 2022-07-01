.class public Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;
.super Ljava/lang/Object;
.source "SimpleExoPlayer.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$TextComponent;
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$VideoComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer$ComponentListener;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer$VideoListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SimpleExoPlayer"


# instance fields
.field private final analyticsCollector:Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;

.field private audioAttributes:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioAttributes;

.field private final audioDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private audioDecoderCounters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;

.field private audioFormat:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

.field private audioSessionId:I

.field private audioVolume:F

.field private final componentListener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer$ComponentListener;

.field private currentCues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private final eventHandler:Lccsanandroid/os/Handler;

.field private mediaSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

.field private final metadataOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataOutput;",
            ">;"
        }
    .end annotation
.end field

.field private ownsSurface:Z

.field private final player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

.field protected final renderers:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;

.field private surface:Lccsanandroid/view/Surface;

.field private surfaceHolder:Lccsanandroid/view/SurfaceHolder;

.field private final textOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextOutput;",
            ">;"
        }
    .end annotation
.end field

.field private textureView:Lccsanandroid/view/TextureView;

.field private final videoDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private videoDecoderCounters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;

.field private videoFormat:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

.field private final videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoListener;",
            ">;"
        }
    .end annotation
.end field

.field private videoScalingMode:I


# direct methods
.method protected constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/RenderersFactory;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/LoadControl;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/RenderersFactory;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/LoadControl;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;)V"
        }
    .end annotation

    .line 110
    new-instance v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$Factory;

    invoke-direct {v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$Factory;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/RenderersFactory;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/LoadControl;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$Factory;)V

    .line 116
    return-void
.end method

.method protected constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/RenderersFactory;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/LoadControl;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$Factory;)V
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
            ")V"
        }
    .end annotation

    .line 133
    sget-object v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;->DEFAULT:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/RenderersFactory;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/LoadControl;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$Factory;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;)V

    .line 140
    return-void
.end method

.method protected constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/RenderersFactory;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/LoadControl;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$Factory;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;)V
    .locals 13
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
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;",
            ")V"
        }
    .end annotation

    .line 159
    move-object v0, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer$ComponentListener;

    const/4 v1, 0x0

    invoke-direct {v6, p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer$ComponentListener;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer$1;)V

    iput-object v6, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->componentListener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer$ComponentListener;

    .line 161
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 162
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->textOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 163
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->metadataOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 164
    new-instance v10, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v10}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v10, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->videoDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 165
    new-instance v11, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v11}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v11, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->audioDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 166
    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    .line 167
    :goto_0
    new-instance v12, Lccsanandroid/os/Handler;

    invoke-direct {v12, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    iput-object v12, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->eventHandler:Lccsanandroid/os/Handler;

    .line 168
    nop

    .line 169
    move-object v1, p1

    move-object v2, v12

    move-object v3, v6

    move-object v4, v6

    move-object v5, v6

    move-object/from16 v7, p4

    invoke-interface/range {v1 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/RenderersFactory;->createRenderers(Lccsanandroid/os/Handler;Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener;Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextOutput;Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataOutput;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;)[Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;

    move-result-object v1

    iput-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->renderers:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;

    .line 178
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->audioVolume:F

    .line 179
    const/4 v2, 0x0

    iput v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->audioSessionId:I

    .line 180
    sget-object v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioAttributes;->DEFAULT:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioAttributes;

    iput-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->audioAttributes:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioAttributes;

    .line 181
    const/4 v2, 0x1

    iput v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->videoScalingMode:I

    .line 182
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->currentCues:Ljava/util/List;

    .line 185
    move-object v2, p2

    move-object/from16 v3, p3

    invoke-virtual {p0, v1, p2, v3, v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->createExoPlayerImpl([Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/LoadControl;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    move-result-object v1

    iput-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    .line 186
    move-object/from16 v2, p5

    invoke-virtual {v2, v1, v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector$Factory;->createAnalyticsCollector(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v1

    iput-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->analyticsCollector:Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;

    .line 187
    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->addListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;)V

    .line 188
    invoke-virtual {v10, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-virtual {v11, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->addMetadataOutput(Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataOutput;)V

    .line 191
    instance-of v2, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager;

    if-eqz v2, :cond_1

    .line 192
    move-object v2, v8

    check-cast v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-virtual {v2, v12, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager;->addListener(Lccsanandroid/os/Handler;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionEventListener;)V

    .line 194
    :cond_1
    return-void
.end method

.method static synthetic access$1002(Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 60
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->currentCues:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$102(Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;
    .locals 0

    .line 60
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->videoDecoderCounters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;

    return-object p1
.end method

.method static synthetic access$1100(Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 60
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->textOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic access$1200(Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 60
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->metadataOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic access$1300(Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;Lccsanandroid/view/Surface;Z)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Lccsanandroid/view/Surface;Z)V

    return-void
.end method

.method static synthetic access$200(Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 60
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->videoDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic access$302(Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;
    .locals 0

    .line 60
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->videoFormat:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    return-object p1
.end method

.method static synthetic access$400(Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 60
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic access$500(Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;)Lccsanandroid/view/Surface;
    .locals 0

    .line 60
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->surface:Lccsanandroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$602(Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;
    .locals 0

    .line 60
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->audioDecoderCounters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;

    return-object p1
.end method

.method static synthetic access$700(Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 60
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->audioDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic access$802(Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;I)I
    .locals 0

    .line 60
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->audioSessionId:I

    return p1
.end method

.method static synthetic access$902(Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;
    .locals 0

    .line 60
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->audioFormat:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    return-object p1
.end method

.method private removeSurfaceCallbacks()V
    .locals 3

    .line 935
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->textureView:Lccsanandroid/view/TextureView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 936
    invoke-virtual {v0}, Lccsanandroid/view/TextureView;->getSurfaceTextureListener()Lccsanandroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->componentListener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer$ComponentListener;

    if-eq v0, v2, :cond_0

    .line 937
    const-string v0, "SimpleExoPlayer"

    const-string v2, "SurfaceTextureListener already unset or replaced."

    invoke-static {v0, v2}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 939
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->textureView:Lccsanandroid/view/TextureView;

    invoke-virtual {v0, v1}, Lccsanandroid/view/TextureView;->setSurfaceTextureListener(Lccsanandroid/view/TextureView$SurfaceTextureListener;)V

    .line 941
    :goto_0
    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->textureView:Lccsanandroid/view/TextureView;

    .line 943
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->surfaceHolder:Lccsanandroid/view/SurfaceHolder;

    if-eqz v0, :cond_2

    .line 944
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->componentListener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer$ComponentListener;

    invoke-interface {v0, v2}, Lccsanandroid/view/SurfaceHolder;->removeCallback(Lccsanandroid/view/SurfaceHolder$Callback;)V

    .line 945
    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->surfaceHolder:Lccsanandroid/view/SurfaceHolder;

    .line 947
    :cond_2
    return-void
.end method

.method private setVideoSurfaceInternal(Lccsanandroid/view/Surface;Z)V
    .locals 8

    .line 952
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 953
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->renderers:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 954
    invoke-interface {v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;->getTrackType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 955
    iget-object v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    .line 956
    invoke-interface {v6, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->createMessage(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage$Target;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->setType(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;

    move-result-object v5

    invoke-virtual {v5, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;

    move-result-object v5

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->send()Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;

    move-result-object v5

    .line 955
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 953
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 959
    :cond_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->surface:Lccsanandroid/view/Surface;

    if-eqz v1, :cond_3

    if-eq v1, p1, :cond_3

    .line 962
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;

    .line 963
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->blockUntilDelivered()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 964
    goto :goto_1

    .line 967
    :catch_0
    move-exception v0

    .line 968
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->stop(Z)V

    goto :goto_2

    .line 965
    :catch_1
    move-exception v0

    .line 966
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 969
    :cond_2
    nop

    .line 971
    :goto_2
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->ownsSurface:Z

    if-eqz v0, :cond_3

    .line 972
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->surface:Lccsanandroid/view/Surface;

    invoke-virtual {v0}, Lccsanandroid/view/Surface;->release()V

    .line 975
    :cond_3
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->surface:Lccsanandroid/view/Surface;

    .line 976
    iput-boolean p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->ownsSurface:Z

    .line 977
    return-void
.end method


# virtual methods
.method public addAnalyticsListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;)V
    .locals 1

    .line 347
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->analyticsCollector:Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->addListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;)V

    .line 348
    return-void
.end method

.method public addAudioDebugListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;)V
    .locals 1

    .line 635
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->audioDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 636
    return-void
.end method

.method public addListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;)V
    .locals 1

    .line 656
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->addListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;)V

    .line 657
    return-void
.end method

.method public addMetadataOutput(Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataOutput;)V
    .locals 1

    .line 550
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->metadataOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 551
    return-void
.end method

.method public addTextOutput(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextOutput;)V
    .locals 1

    .line 508
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->currentCues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 509
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->currentCues:Ljava/util/List;

    invoke-interface {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextOutput;->onCues(Ljava/util/List;)V

    .line 511
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->textOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 512
    return-void
.end method

.method public addVideoDebugListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener;)V
    .locals 1

    .line 605
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->videoDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 606
    return-void
.end method

.method public addVideoListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoListener;)V
    .locals 1

    .line 472
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 473
    return-void
.end method

.method public varargs blockingSendMessages([Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .locals 1

    .line 815
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->blockingSendMessages([Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    .line 816
    return-void
.end method

.method public clearMetadataOutput(Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataOutput;)V
    .locals 0

    .line 584
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->removeMetadataOutput(Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataOutput;)V

    .line 585
    return-void
.end method

.method public clearTextOutput(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextOutput;)V
    .locals 0

    .line 541
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->removeTextOutput(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextOutput;)V

    .line 542
    return-void
.end method

.method public clearVideoListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer$VideoListener;)V
    .locals 0

    .line 503
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->removeVideoListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoListener;)V

    .line 504
    return-void
.end method

.method public clearVideoSurface()V
    .locals 1

    .line 235
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setVideoSurface(Lccsanandroid/view/Surface;)V

    .line 236
    return-void
.end method

.method public clearVideoSurface(Lccsanandroid/view/Surface;)V
    .locals 1

    .line 246
    if-eqz p1, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->surface:Lccsanandroid/view/Surface;

    if-ne p1, v0, :cond_0

    .line 247
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setVideoSurface(Lccsanandroid/view/Surface;)V

    .line 249
    :cond_0
    return-void
.end method

.method public clearVideoSurfaceHolder(Lccsanandroid/view/SurfaceHolder;)V
    .locals 1

    .line 266
    if-eqz p1, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->surfaceHolder:Lccsanandroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_0

    .line 267
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setVideoSurfaceHolder(Lccsanandroid/view/SurfaceHolder;)V

    .line 269
    :cond_0
    return-void
.end method

.method public clearVideoSurfaceView(Lccsanandroid/view/SurfaceView;)V
    .locals 0

    .line 278
    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lccsanandroid/view/SurfaceView;->getHolder()Lccsanandroid/view/SurfaceHolder;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->clearVideoSurfaceHolder(Lccsanandroid/view/SurfaceHolder;)V

    .line 279
    return-void
.end method

.method public clearVideoTextureView(Lccsanandroid/view/TextureView;)V
    .locals 1

    .line 300
    if-eqz p1, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->textureView:Lccsanandroid/view/TextureView;

    if-ne p1, v0, :cond_0

    .line 301
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setVideoTextureView(Lccsanandroid/view/TextureView;)V

    .line 303
    :cond_0
    return-void
.end method

.method protected createExoPlayerImpl([Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/LoadControl;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;
    .locals 1

    .line 931
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;

    invoke-direct {v0, p1, p2, p3, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;-><init>([Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/LoadControl;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;)V

    return-object v0
.end method

.method public createMessage(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage$Target;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;
    .locals 1

    .line 810
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->createMessage(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage$Target;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;

    move-result-object p1

    return-object p1
.end method

.method public getAnalyticsCollector()Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;
    .locals 1

    .line 338
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->analyticsCollector:Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;

    return-object v0
.end method

.method public getAudioAttributes()Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioAttributes;
    .locals 1

    .line 392
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->audioAttributes:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioAttributes;

    return-object v0
.end method

.method public getAudioDecoderCounters()Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;
    .locals 1

    .line 467
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->audioDecoderCounters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;

    return-object v0
.end method

.method public getAudioFormat()Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;
    .locals 1

    .line 446
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->audioFormat:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    return-object v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .line 453
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->audioSessionId:I

    return v0
.end method

.method public getAudioStreamType()I
    .locals 1

    .line 333
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->audioAttributes:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioAttributes;

    iget v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioAttributes;->usage:I

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getStreamTypeForAudioUsage(I)I

    move-result v0

    return v0
.end method

.method public getBufferedPercentage()I
    .locals 1

    .line 885
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->getBufferedPercentage()I

    move-result v0

    return v0
.end method

.method public getBufferedPosition()J
    .locals 2

    .line 880
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentPosition()J
    .locals 2

    .line 915
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->getContentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentAdGroupIndex()I
    .locals 1

    .line 905
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->getCurrentAdGroupIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .locals 1

    .line 910
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->getCurrentAdIndexInAdGroup()I

    move-result v0

    return v0
.end method

.method public getCurrentManifest()Ljava/lang/Object;
    .locals 1

    .line 845
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->getCurrentManifest()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPeriodIndex()I
    .locals 1

    .line 850
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->getCurrentPeriodIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 875
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentTag()Ljava/lang/Object;
    .locals 1

    .line 768
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->getCurrentTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTimeline()Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;
    .locals 1

    .line 840
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->getCurrentTimeline()Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTrackGroups()Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 830
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->getCurrentTrackGroups()Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTrackSelections()Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectionArray;
    .locals 1

    .line 835
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->getCurrentTrackSelections()Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectionArray;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentWindowIndex()I
    .locals 1

    .line 855
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->getCurrentWindowIndex()I

    move-result v0

    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 870
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextWindowIndex()I
    .locals 1

    .line 860
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->getNextWindowIndex()I

    move-result v0

    return v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .line 699
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->getPlayWhenReady()Z

    move-result v0

    return v0
.end method

.method public getPlaybackError()Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
    .locals 1

    .line 671
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->getPlaybackError()Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackLooper()Lccsanandroid/os/Looper;
    .locals 1

    .line 651
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->getPlaybackLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackParameters()Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;
    .locals 1

    .line 758
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->getPlaybackParameters()Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackState()I
    .locals 1

    .line 666
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->getPlaybackState()I

    move-result v0

    return v0
.end method

.method public getPreviousWindowIndex()I
    .locals 1

    .line 865
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->getPreviousWindowIndex()I

    move-result v0

    return v0
.end method

.method public getRendererCount()I
    .locals 1

    .line 820
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->getRendererCount()I

    move-result v0

    return v0
.end method

.method public getRendererType(I)I
    .locals 1

    .line 825
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->getRendererType(I)I

    move-result p1

    return p1
.end method

.method public getRepeatMode()I
    .locals 1

    .line 704
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getShuffleModeEnabled()Z
    .locals 1

    .line 719
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->getShuffleModeEnabled()Z

    move-result v0

    return v0
.end method

.method public getTextComponent()Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$TextComponent;
    .locals 0

    .line 203
    return-object p0
.end method

.method public getVideoComponent()Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$VideoComponent;
    .locals 0

    .line 198
    return-object p0
.end method

.method public getVideoDecoderCounters()Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;
    .locals 1

    .line 460
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->videoDecoderCounters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;

    return-object v0
.end method

.method public getVideoFormat()Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;
    .locals 1

    .line 439
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->videoFormat:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    return-object v0
.end method

.method public getVideoScalingMode()I
    .locals 1

    .line 230
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->videoScalingMode:I

    return v0
.end method

.method public getVolume()F
    .locals 1

    .line 413
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->audioVolume:F

    return v0
.end method

.method public isCurrentWindowDynamic()Z
    .locals 1

    .line 890
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->isCurrentWindowDynamic()Z

    move-result v0

    return v0
.end method

.method public isCurrentWindowSeekable()Z
    .locals 1

    .line 895
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->isCurrentWindowSeekable()Z

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 724
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->isLoading()Z

    move-result v0

    return v0
.end method

.method public final isPlaying()Z
    .locals 2

    .line 1166
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1167
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1166
    :goto_0
    return v0
.end method

.method public isPlayingAd()Z
    .locals 1

    .line 900
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->isPlayingAd()Z

    move-result v0

    return v0
.end method

.method public prepare(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;)V
    .locals 1

    .line 676
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->prepare(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;ZZ)V

    .line 677
    return-void
.end method

.method public prepare(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;ZZ)V
    .locals 2

    .line 681
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->mediaSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    if-eq v0, p1, :cond_1

    .line 682
    if-eqz v0, :cond_0

    .line 683
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->analyticsCollector:Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;->removeEventListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener;)V

    .line 684
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->analyticsCollector:Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->resetForNewMediaSource()V

    .line 686
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->eventHandler:Lccsanandroid/os/Handler;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->analyticsCollector:Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;

    invoke-interface {p1, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;->addEventListener(Lccsanandroid/os/Handler;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener;)V

    .line 687
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->mediaSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    .line 689
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->prepare(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;ZZ)V

    .line 690
    return-void
.end method

.method public release()V
    .locals 2

    .line 789
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->release()V

    .line 790
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->removeSurfaceCallbacks()V

    .line 791
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->surface:Lccsanandroid/view/Surface;

    if-eqz v0, :cond_1

    .line 792
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->ownsSurface:Z

    if-eqz v1, :cond_0

    .line 793
    invoke-virtual {v0}, Lccsanandroid/view/Surface;->release()V

    .line 795
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->surface:Lccsanandroid/view/Surface;

    .line 797
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->mediaSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    if-eqz v0, :cond_2

    .line 798
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->analyticsCollector:Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;->removeEventListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener;)V

    .line 800
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->currentCues:Ljava/util/List;

    .line 801
    return-void
.end method

.method public removeAnalyticsListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;)V
    .locals 1

    .line 356
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->analyticsCollector:Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->removeListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;)V

    .line 357
    return-void
.end method

.method public removeAudioDebugListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;)V
    .locals 1

    .line 644
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->audioDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 645
    return-void
.end method

.method public removeListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;)V
    .locals 1

    .line 661
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->removeListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;)V

    .line 662
    return-void
.end method

.method public removeMetadataOutput(Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataOutput;)V
    .locals 1

    .line 559
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->metadataOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 560
    return-void
.end method

.method public removeTextOutput(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextOutput;)V
    .locals 1

    .line 516
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->textOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 517
    return-void
.end method

.method public removeVideoDebugListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener;)V
    .locals 1

    .line 614
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->videoDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 615
    return-void
.end method

.method public removeVideoListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoListener;)V
    .locals 1

    .line 477
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 478
    return-void
.end method

.method public seekTo(IJ)V
    .locals 1

    .line 747
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->analyticsCollector:Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->notifySeekStarted()V

    .line 748
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->seekTo(IJ)V

    .line 749
    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .line 741
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->analyticsCollector:Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->notifySeekStarted()V

    .line 742
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->seekTo(J)V

    .line 743
    return-void
.end method

.method public seekToDefaultPosition()V
    .locals 1

    .line 729
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->analyticsCollector:Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->notifySeekStarted()V

    .line 730
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->seekToDefaultPosition()V

    .line 731
    return-void
.end method

.method public seekToDefaultPosition(I)V
    .locals 1

    .line 735
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->analyticsCollector:Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->notifySeekStarted()V

    .line 736
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->seekToDefaultPosition(I)V

    .line 737
    return-void
.end method

.method public varargs sendMessages([Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .locals 1

    .line 805
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->sendMessages([Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    .line 806
    return-void
.end method

.method public setAudioAttributes(Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioAttributes;)V
    .locals 6

    .line 376
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->audioAttributes:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioAttributes;

    .line 377
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->renderers:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 378
    invoke-interface {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;->getTrackType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 379
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    .line 380
    invoke-interface {v4, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->createMessage(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage$Target;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;

    move-result-object v3

    const/4 v4, 0x3

    .line 381
    invoke-virtual {v3, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->setType(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;

    move-result-object v3

    .line 382
    invoke-virtual {v3, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;

    move-result-object v3

    .line 383
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->send()Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;

    .line 377
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 386
    :cond_1
    return-void
.end method

.method public setAudioDebugListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;)V
    .locals 2

    .line 623
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->audioDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->analyticsCollector:Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->retainAll(Ljava/util/Collection;)Z

    .line 624
    if-eqz p1, :cond_0

    .line 625
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->addAudioDebugListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;)V

    .line 627
    :cond_0
    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 2

    .line 319
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getAudioUsageForStreamType(I)I

    move-result v0

    .line 320
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getAudioContentTypeForStreamType(I)I

    move-result p1

    .line 321
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioAttributes$Builder;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioAttributes$Builder;-><init>()V

    .line 322
    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioAttributes$Builder;->setUsage(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioAttributes$Builder;->setContentType(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioAttributes$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioAttributes$Builder;->build()Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioAttributes;

    move-result-object p1

    .line 323
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setAudioAttributes(Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioAttributes;)V

    .line 324
    return-void
.end method

.method public setMetadataOutput(Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataOutput;)V
    .locals 2

    .line 570
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->metadataOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->analyticsCollector:Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->retainAll(Ljava/util/Collection;)Z

    .line 571
    if-eqz p1, :cond_0

    .line 572
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->addMetadataOutput(Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/MetadataOutput;)V

    .line 574
    :cond_0
    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 1

    .line 694
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    .line 695
    return-void
.end method

.method public setPlaybackParameters(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;)V
    .locals 1

    .line 753
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->setPlaybackParameters(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;)V

    .line 754
    return-void
.end method

.method public setPlaybackParams(Lccsanandroid/media/PlaybackParams;)V
    .locals 2

    .line 426
    if-eqz p1, :cond_0

    .line 427
    invoke-virtual {p1}, Lccsanandroid/media/PlaybackParams;->allowDefaults()Lccsanandroid/media/PlaybackParams;

    .line 428
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;

    invoke-virtual {p1}, Lccsanandroid/media/PlaybackParams;->getSpeed()F

    move-result v1

    invoke-virtual {p1}, Lccsanandroid/media/PlaybackParams;->getPitch()F

    move-result p1

    invoke-direct {v0, v1, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;-><init>(FF)V

    goto :goto_0

    .line 430
    :cond_0
    const/4 v0, 0x0

    .line 432
    :goto_0
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setPlaybackParameters(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;)V

    .line 433
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    .line 709
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->setRepeatMode(I)V

    .line 710
    return-void
.end method

.method public setSeekParameters(Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;)V
    .locals 1

    .line 763
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->setSeekParameters(Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;)V

    .line 764
    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .locals 1

    .line 714
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->setShuffleModeEnabled(Z)V

    .line 715
    return-void
.end method

.method public setTextOutput(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextOutput;)V
    .locals 1

    .line 527
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->textOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 528
    if-eqz p1, :cond_0

    .line 529
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->addTextOutput(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/TextOutput;)V

    .line 531
    :cond_0
    return-void
.end method

.method public setVideoDebugListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener;)V
    .locals 2

    .line 593
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->videoDebugListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->analyticsCollector:Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->retainAll(Ljava/util/Collection;)Z

    .line 594
    if-eqz p1, :cond_0

    .line 595
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->addVideoDebugListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoRendererEventListener;)V

    .line 597
    :cond_0
    return-void
.end method

.method public setVideoListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer$VideoListener;)V
    .locals 1

    .line 488
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 489
    if-eqz p1, :cond_0

    .line 490
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->addVideoListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoListener;)V

    .line 492
    :cond_0
    return-void
.end method

.method public setVideoScalingMode(I)V
    .locals 6

    .line 216
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->videoScalingMode:I

    .line 217
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->renderers:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 218
    invoke-interface {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;->getTrackType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 219
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    .line 220
    invoke-interface {v4, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->createMessage(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage$Target;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;

    move-result-object v3

    const/4 v4, 0x4

    .line 221
    invoke-virtual {v3, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->setType(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;

    move-result-object v3

    .line 222
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;

    move-result-object v3

    .line 223
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->send()Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;

    .line 217
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 226
    :cond_1
    return-void
.end method

.method public setVideoSurface(Lccsanandroid/view/Surface;)V
    .locals 1

    .line 240
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->removeSurfaceCallbacks()V

    .line 241
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Lccsanandroid/view/Surface;Z)V

    .line 242
    return-void
.end method

.method public setVideoSurfaceHolder(Lccsanandroid/view/SurfaceHolder;)V
    .locals 1

    .line 253
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->removeSurfaceCallbacks()V

    .line 254
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->surfaceHolder:Lccsanandroid/view/SurfaceHolder;

    .line 255
    if-nez p1, :cond_0

    .line 256
    goto :goto_0

    .line 258
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->componentListener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer$ComponentListener;

    invoke-interface {p1, v0}, Lccsanandroid/view/SurfaceHolder;->addCallback(Lccsanandroid/view/SurfaceHolder$Callback;)V

    .line 259
    invoke-interface {p1}, Lccsanandroid/view/SurfaceHolder;->getSurface()Lccsanandroid/view/Surface;

    move-result-object p1

    .line 260
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lccsanandroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Lccsanandroid/view/Surface;Z)V

    .line 262
    return-void
.end method

.method public setVideoSurfaceView(Lccsanandroid/view/SurfaceView;)V
    .locals 0

    .line 273
    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lccsanandroid/view/SurfaceView;->getHolder()Lccsanandroid/view/SurfaceHolder;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setVideoSurfaceHolder(Lccsanandroid/view/SurfaceHolder;)V

    .line 274
    return-void
.end method

.method public setVideoTextureView(Lccsanandroid/view/TextureView;)V
    .locals 3

    .line 283
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->removeSurfaceCallbacks()V

    .line 284
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->textureView:Lccsanandroid/view/TextureView;

    .line 285
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 286
    goto :goto_1

    .line 288
    :cond_0
    invoke-virtual {p1}, Lccsanandroid/view/TextureView;->getSurfaceTextureListener()Lccsanandroid/view/TextureView$SurfaceTextureListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 289
    const-string v1, "SimpleExoPlayer"

    const-string v2, "Replacing existing SurfaceTextureListener."

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->componentListener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer$ComponentListener;

    invoke-virtual {p1, v1}, Lccsanandroid/view/TextureView;->setSurfaceTextureListener(Lccsanandroid/view/TextureView$SurfaceTextureListener;)V

    .line 292
    invoke-virtual {p1}, Lccsanandroid/view/TextureView;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lccsanandroid/view/TextureView;->getSurfaceTexture()Lccsanandroid/graphics/SurfaceTexture;

    move-result-object p1

    goto :goto_0

    .line 293
    :cond_2
    move-object p1, v0

    .line 294
    :goto_0
    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Lccsanandroid/view/Surface;

    invoke-direct {v0, p1}, Lccsanandroid/view/Surface;-><init>(Lccsanandroid/graphics/SurfaceTexture;)V

    :goto_1
    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setVideoSurfaceInternal(Lccsanandroid/view/Surface;Z)V

    .line 296
    return-void
.end method

.method public setVolume(F)V
    .locals 6

    .line 401
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->audioVolume:F

    .line 402
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->renderers:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 403
    invoke-interface {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;->getTrackType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 404
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v4, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->createMessage(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage$Target;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->setType(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->send()Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;

    .line 402
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 407
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 1

    .line 773
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->stop(Z)V

    .line 774
    return-void
.end method

.method public stop(Z)V
    .locals 1

    .line 778
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->player:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;->stop(Z)V

    .line 779
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->mediaSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    if-eqz p1, :cond_0

    .line 780
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->analyticsCollector:Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;

    invoke-interface {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;->removeEventListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener;)V

    .line 781
    const/4 p1, 0x0

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->mediaSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    .line 782
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->analyticsCollector:Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsCollector;->resetForNewMediaSource()V

    .line 784
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->currentCues:Ljava/util/List;

    .line 785
    return-void
.end method
