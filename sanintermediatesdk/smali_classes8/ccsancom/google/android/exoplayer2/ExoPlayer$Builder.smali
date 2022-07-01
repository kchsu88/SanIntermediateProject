.class public final Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;
.super Ljava/lang/Object;
.source "ExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/ExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field analyticsCollectorSupplier:Lccsancom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/base/Supplier<",
            "Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;",
            ">;"
        }
    .end annotation
.end field

.field audioAttributes:Lccsancom/google/android/exoplayer2/audio/AudioAttributes;

.field bandwidthMeterSupplier:Lccsancom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/base/Supplier<",
            "Lccsancom/google/android/exoplayer2/upstream/BandwidthMeter;",
            ">;"
        }
    .end annotation
.end field

.field buildCalled:Z

.field clock:Lccsancom/google/android/exoplayer2/util/Clock;

.field final context:Lccsanandroid/content/Context;

.field detachSurfaceTimeoutMs:J

.field foregroundModeTimeoutMs:J

.field handleAudioBecomingNoisy:Z

.field handleAudioFocus:Z

.field livePlaybackSpeedControl:Lccsancom/google/android/exoplayer2/LivePlaybackSpeedControl;

.field loadControlSupplier:Lccsancom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/base/Supplier<",
            "Lccsancom/google/android/exoplayer2/LoadControl;",
            ">;"
        }
    .end annotation
.end field

.field looper:Lccsanandroid/os/Looper;

.field mediaSourceFactorySupplier:Lccsancom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/base/Supplier<",
            "Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;",
            ">;"
        }
    .end annotation
.end field

.field pauseAtEndOfMediaItems:Z

.field priorityTaskManager:Lccsancom/google/android/exoplayer2/util/PriorityTaskManager;

.field releaseTimeoutMs:J

.field renderersFactorySupplier:Lccsancom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/base/Supplier<",
            "Lccsancom/google/android/exoplayer2/RenderersFactory;",
            ">;"
        }
    .end annotation
.end field

.field seekBackIncrementMs:J

.field seekForwardIncrementMs:J

.field seekParameters:Lccsancom/google/android/exoplayer2/SeekParameters;

.field skipSilenceEnabled:Z

.field trackSelectorSupplier:Lccsancom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/base/Supplier<",
            "Lccsancom/google/android/exoplayer2/trackselection/TrackSelector;",
            ">;"
        }
    .end annotation
.end field

.field useLazyPreparation:Z

.field videoChangeFrameRateStrategy:I

.field videoScalingMode:I

.field wakeMode:I


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 440
    new-instance v0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda0;-><init>(Lccsanandroid/content/Context;)V

    new-instance v1, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda11;

    invoke-direct {v1, p1}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda11;-><init>(Lccsanandroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Lccsanandroid/content/Context;Lccsancom/google/common/base/Supplier;Lccsancom/google/common/base/Supplier;)V

    .line 444
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/google/android/exoplayer2/RenderersFactory;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "renderersFactory"    # Lccsancom/google/android/exoplayer2/RenderersFactory;

    .line 459
    new-instance v0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda23;

    invoke-direct {v0, p2}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda23;-><init>(Lccsancom/google/android/exoplayer2/RenderersFactory;)V

    new-instance v1, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda18;

    invoke-direct {v1, p1}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda18;-><init>(Lccsanandroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Lccsanandroid/content/Context;Lccsancom/google/common/base/Supplier;Lccsancom/google/common/base/Supplier;)V

    .line 463
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/google/android/exoplayer2/RenderersFactory;Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "renderersFactory"    # Lccsancom/google/android/exoplayer2/RenderersFactory;
    .param p3, "mediaSourceFactory"    # Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;

    .line 499
    new-instance v0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda1;-><init>(Lccsancom/google/android/exoplayer2/RenderersFactory;)V

    new-instance v1, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda7;

    invoke-direct {v1, p3}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda7;-><init>(Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;)V

    invoke-direct {p0, p1, v0, v1}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Lccsanandroid/content/Context;Lccsancom/google/common/base/Supplier;Lccsancom/google/common/base/Supplier;)V

    .line 500
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/google/android/exoplayer2/RenderersFactory;Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;Lccsancom/google/android/exoplayer2/trackselection/TrackSelector;Lccsancom/google/android/exoplayer2/LoadControl;Lccsancom/google/android/exoplayer2/upstream/BandwidthMeter;Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;)V
    .locals 8
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "renderersFactory"    # Lccsancom/google/android/exoplayer2/RenderersFactory;
    .param p3, "mediaSourceFactory"    # Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;
    .param p4, "trackSelector"    # Lccsancom/google/android/exoplayer2/trackselection/TrackSelector;
    .param p5, "loadControl"    # Lccsancom/google/android/exoplayer2/LoadControl;
    .param p6, "bandwidthMeter"    # Lccsancom/google/android/exoplayer2/upstream/BandwidthMeter;
    .param p7, "analyticsCollector"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;

    .line 525
    new-instance v2, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda2;

    invoke-direct {v2, p2}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda2;-><init>(Lccsancom/google/android/exoplayer2/RenderersFactory;)V

    new-instance v3, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda8;

    invoke-direct {v3, p3}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda8;-><init>(Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;)V

    new-instance v4, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda10;

    invoke-direct {v4, p4}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda10;-><init>(Lccsancom/google/android/exoplayer2/trackselection/TrackSelector;)V

    new-instance v5, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda21;

    invoke-direct {v5, p5}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda21;-><init>(Lccsancom/google/android/exoplayer2/LoadControl;)V

    new-instance v6, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda13;

    invoke-direct {v6, p6}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda13;-><init>(Lccsancom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    new-instance v7, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda4;

    invoke-direct {v7, p7}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda4;-><init>(Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Lccsanandroid/content/Context;Lccsancom/google/common/base/Supplier;Lccsancom/google/common/base/Supplier;Lccsancom/google/common/base/Supplier;Lccsancom/google/common/base/Supplier;Lccsancom/google/common/base/Supplier;Lccsancom/google/common/base/Supplier;)V

    .line 533
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "mediaSourceFactory"    # Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;

    .line 479
    new-instance v0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda19;

    invoke-direct {v0, p1}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda19;-><init>(Lccsanandroid/content/Context;)V

    new-instance v1, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda6;

    invoke-direct {v1, p2}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda6;-><init>(Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;)V

    invoke-direct {p0, p1, v0, v1}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Lccsanandroid/content/Context;Lccsancom/google/common/base/Supplier;Lccsancom/google/common/base/Supplier;)V

    .line 480
    return-void
.end method

.method private constructor <init>(Lccsanandroid/content/Context;Lccsancom/google/common/base/Supplier;Lccsancom/google/common/base/Supplier;)V
    .locals 8
    .param p1, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsancom/google/common/base/Supplier<",
            "Lccsancom/google/android/exoplayer2/RenderersFactory;",
            ">;",
            "Lccsancom/google/common/base/Supplier<",
            "Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;",
            ">;)V"
        }
    .end annotation

    .line 539
    .local p2, "renderersFactorySupplier":Lccsancom/google/common/base/Supplier;, "Lccsancom/google/common/base/Supplier<Lccsancom/google/android/exoplayer2/RenderersFactory;>;"
    .local p3, "mediaSourceFactorySupplier":Lccsancom/google/common/base/Supplier;, "Lccsancom/google/common/base/Supplier<Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;>;"
    new-instance v4, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda16;

    invoke-direct {v4, p1}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda16;-><init>(Lccsanandroid/content/Context;)V

    sget-object v5, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda15;->INSTANCE:Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda15;

    new-instance v6, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda17;

    invoke-direct {v6, p1}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda17;-><init>(Lccsanandroid/content/Context;)V

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Lccsanandroid/content/Context;Lccsancom/google/common/base/Supplier;Lccsancom/google/common/base/Supplier;Lccsancom/google/common/base/Supplier;Lccsancom/google/common/base/Supplier;Lccsancom/google/common/base/Supplier;Lccsancom/google/common/base/Supplier;)V

    .line 547
    return-void
.end method

.method private constructor <init>(Lccsanandroid/content/Context;Lccsancom/google/common/base/Supplier;Lccsancom/google/common/base/Supplier;Lccsancom/google/common/base/Supplier;Lccsancom/google/common/base/Supplier;Lccsancom/google/common/base/Supplier;Lccsancom/google/common/base/Supplier;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsancom/google/common/base/Supplier<",
            "Lccsancom/google/android/exoplayer2/RenderersFactory;",
            ">;",
            "Lccsancom/google/common/base/Supplier<",
            "Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;",
            ">;",
            "Lccsancom/google/common/base/Supplier<",
            "Lccsancom/google/android/exoplayer2/trackselection/TrackSelector;",
            ">;",
            "Lccsancom/google/common/base/Supplier<",
            "Lccsancom/google/android/exoplayer2/LoadControl;",
            ">;",
            "Lccsancom/google/common/base/Supplier<",
            "Lccsancom/google/android/exoplayer2/upstream/BandwidthMeter;",
            ">;",
            "Lccsancom/google/common/base/Supplier<",
            "Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;",
            ">;)V"
        }
    .end annotation

    .line 556
    .local p2, "renderersFactorySupplier":Lccsancom/google/common/base/Supplier;, "Lccsancom/google/common/base/Supplier<Lccsancom/google/android/exoplayer2/RenderersFactory;>;"
    .local p3, "mediaSourceFactorySupplier":Lccsancom/google/common/base/Supplier;, "Lccsancom/google/common/base/Supplier<Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;>;"
    .local p4, "trackSelectorSupplier":Lccsancom/google/common/base/Supplier;, "Lccsancom/google/common/base/Supplier<Lccsancom/google/android/exoplayer2/trackselection/TrackSelector;>;"
    .local p5, "loadControlSupplier":Lccsancom/google/common/base/Supplier;, "Lccsancom/google/common/base/Supplier<Lccsancom/google/android/exoplayer2/LoadControl;>;"
    .local p6, "bandwidthMeterSupplier":Lccsancom/google/common/base/Supplier;, "Lccsancom/google/common/base/Supplier<Lccsancom/google/android/exoplayer2/upstream/BandwidthMeter;>;"
    .local p7, "analyticsCollectorSupplier":Lccsancom/google/common/base/Supplier;, "Lccsancom/google/common/base/Supplier<Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->context:Lccsanandroid/content/Context;

    .line 558
    iput-object p2, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->renderersFactorySupplier:Lccsancom/google/common/base/Supplier;

    .line 559
    iput-object p3, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->mediaSourceFactorySupplier:Lccsancom/google/common/base/Supplier;

    .line 560
    iput-object p4, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->trackSelectorSupplier:Lccsancom/google/common/base/Supplier;

    .line 561
    iput-object p5, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->loadControlSupplier:Lccsancom/google/common/base/Supplier;

    .line 562
    iput-object p6, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->bandwidthMeterSupplier:Lccsancom/google/common/base/Supplier;

    .line 563
    nop

    .line 564
    if-eqz p7, :cond_0

    .line 565
    move-object v0, p7

    goto :goto_0

    .line 566
    :cond_0
    new-instance v0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda20;-><init>(Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;)V

    :goto_0
    iput-object v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->analyticsCollectorSupplier:Lccsancom/google/common/base/Supplier;

    .line 567
    invoke-static {}, Lccsancom/google/android/exoplayer2/util/Util;->getCurrentOrMainLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->looper:Lccsanandroid/os/Looper;

    .line 568
    sget-object v0, Lccsancom/google/android/exoplayer2/audio/AudioAttributes;->DEFAULT:Lccsancom/google/android/exoplayer2/audio/AudioAttributes;

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->audioAttributes:Lccsancom/google/android/exoplayer2/audio/AudioAttributes;

    .line 569
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->wakeMode:I

    .line 570
    const/4 v1, 0x1

    iput v1, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->videoScalingMode:I

    .line 571
    iput v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->videoChangeFrameRateStrategy:I

    .line 572
    iput-boolean v1, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->useLazyPreparation:Z

    .line 573
    sget-object v0, Lccsancom/google/android/exoplayer2/SeekParameters;->DEFAULT:Lccsancom/google/android/exoplayer2/SeekParameters;

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->seekParameters:Lccsancom/google/android/exoplayer2/SeekParameters;

    .line 574
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->seekBackIncrementMs:J

    .line 575
    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->seekForwardIncrementMs:J

    .line 576
    new-instance v0, Lccsancom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;-><init>()V

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->build()Lccsancom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->livePlaybackSpeedControl:Lccsancom/google/android/exoplayer2/LivePlaybackSpeedControl;

    .line 577
    sget-object v0, Lccsancom/google/android/exoplayer2/util/Clock;->DEFAULT:Lccsancom/google/android/exoplayer2/util/Clock;

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->clock:Lccsancom/google/android/exoplayer2/util/Clock;

    .line 578
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->releaseTimeoutMs:J

    .line 579
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->detachSurfaceTimeoutMs:J

    .line 580
    return-void
.end method

.method static synthetic lambda$new$0(Lccsanandroid/content/Context;)Lccsancom/google/android/exoplayer2/RenderersFactory;
    .locals 1
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 442
    new-instance v0, Lccsancom/google/android/exoplayer2/DefaultRenderersFactory;

    invoke-direct {v0, p0}, Lccsancom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Lccsanandroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$new$1(Lccsanandroid/content/Context;)Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 443
    new-instance v0, Lccsancom/google/android/exoplayer2/source/DefaultMediaSourceFactory;

    new-instance v1, Lccsancom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v1}, Lccsancom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    invoke-direct {v0, p0, v1}, Lccsancom/google/android/exoplayer2/source/DefaultMediaSourceFactory;-><init>(Lccsanandroid/content/Context;Lccsancom/google/android/exoplayer2/extractor/ExtractorsFactory;)V

    return-object v0
.end method

.method static synthetic lambda$new$10(Lccsancom/google/android/exoplayer2/trackselection/TrackSelector;)Lccsancom/google/android/exoplayer2/trackselection/TrackSelector;
    .locals 0
    .param p0, "trackSelector"    # Lccsancom/google/android/exoplayer2/trackselection/TrackSelector;

    .line 529
    return-object p0
.end method

.method static synthetic lambda$new$11(Lccsancom/google/android/exoplayer2/LoadControl;)Lccsancom/google/android/exoplayer2/LoadControl;
    .locals 0
    .param p0, "loadControl"    # Lccsancom/google/android/exoplayer2/LoadControl;

    .line 530
    return-object p0
.end method

.method static synthetic lambda$new$12(Lccsancom/google/android/exoplayer2/upstream/BandwidthMeter;)Lccsancom/google/android/exoplayer2/upstream/BandwidthMeter;
    .locals 0
    .param p0, "bandwidthMeter"    # Lccsancom/google/android/exoplayer2/upstream/BandwidthMeter;

    .line 531
    return-object p0
.end method

.method static synthetic lambda$new$13(Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;)Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;
    .locals 0
    .param p0, "analyticsCollector"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;

    .line 532
    return-object p0
.end method

.method static synthetic lambda$new$14(Lccsanandroid/content/Context;)Lccsancom/google/android/exoplayer2/trackselection/TrackSelector;
    .locals 1
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 543
    new-instance v0, Lccsancom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v0, p0}, Lccsancom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lccsanandroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$new$15(Lccsanandroid/content/Context;)Lccsancom/google/android/exoplayer2/upstream/BandwidthMeter;
    .locals 1
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 545
    invoke-static {p0}, Lccsancom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->getSingletonInstance(Lccsanandroid/content/Context;)Lccsancom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$new$2(Lccsancom/google/android/exoplayer2/RenderersFactory;)Lccsancom/google/android/exoplayer2/RenderersFactory;
    .locals 0
    .param p0, "renderersFactory"    # Lccsancom/google/android/exoplayer2/RenderersFactory;

    .line 461
    return-object p0
.end method

.method static synthetic lambda$new$3(Lccsanandroid/content/Context;)Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 462
    new-instance v0, Lccsancom/google/android/exoplayer2/source/DefaultMediaSourceFactory;

    new-instance v1, Lccsancom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v1}, Lccsancom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    invoke-direct {v0, p0, v1}, Lccsancom/google/android/exoplayer2/source/DefaultMediaSourceFactory;-><init>(Lccsanandroid/content/Context;Lccsancom/google/android/exoplayer2/extractor/ExtractorsFactory;)V

    return-object v0
.end method

.method static synthetic lambda$new$4(Lccsanandroid/content/Context;)Lccsancom/google/android/exoplayer2/RenderersFactory;
    .locals 1
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 479
    new-instance v0, Lccsancom/google/android/exoplayer2/DefaultRenderersFactory;

    invoke-direct {v0, p0}, Lccsancom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Lccsanandroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$new$5(Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;)Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;
    .locals 0
    .param p0, "mediaSourceFactory"    # Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;

    .line 479
    return-object p0
.end method

.method static synthetic lambda$new$6(Lccsancom/google/android/exoplayer2/RenderersFactory;)Lccsancom/google/android/exoplayer2/RenderersFactory;
    .locals 0
    .param p0, "renderersFactory"    # Lccsancom/google/android/exoplayer2/RenderersFactory;

    .line 499
    return-object p0
.end method

.method static synthetic lambda$new$7(Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;)Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;
    .locals 0
    .param p0, "mediaSourceFactory"    # Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;

    .line 499
    return-object p0
.end method

.method static synthetic lambda$new$8(Lccsancom/google/android/exoplayer2/RenderersFactory;)Lccsancom/google/android/exoplayer2/RenderersFactory;
    .locals 0
    .param p0, "renderersFactory"    # Lccsancom/google/android/exoplayer2/RenderersFactory;

    .line 527
    return-object p0
.end method

.method static synthetic lambda$new$9(Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;)Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;
    .locals 0
    .param p0, "mediaSourceFactory"    # Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;

    .line 528
    return-object p0
.end method

.method static synthetic lambda$setAnalyticsCollector$22(Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;)Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;
    .locals 0
    .param p0, "analyticsCollector"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;

    .line 685
    return-object p0
.end method

.method static synthetic lambda$setBandwidthMeter$21(Lccsancom/google/android/exoplayer2/upstream/BandwidthMeter;)Lccsancom/google/android/exoplayer2/upstream/BandwidthMeter;
    .locals 0
    .param p0, "bandwidthMeter"    # Lccsancom/google/android/exoplayer2/upstream/BandwidthMeter;

    .line 658
    return-object p0
.end method

.method static synthetic lambda$setLoadControl$20(Lccsancom/google/android/exoplayer2/LoadControl;)Lccsancom/google/android/exoplayer2/LoadControl;
    .locals 0
    .param p0, "loadControl"    # Lccsancom/google/android/exoplayer2/LoadControl;

    .line 645
    return-object p0
.end method

.method static synthetic lambda$setMediaSourceFactory$18(Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;)Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;
    .locals 0
    .param p0, "mediaSourceFactory"    # Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;

    .line 619
    return-object p0
.end method

.method static synthetic lambda$setRenderersFactory$17(Lccsancom/google/android/exoplayer2/RenderersFactory;)Lccsancom/google/android/exoplayer2/RenderersFactory;
    .locals 0
    .param p0, "renderersFactory"    # Lccsancom/google/android/exoplayer2/RenderersFactory;

    .line 606
    return-object p0
.end method

.method static synthetic lambda$setTrackSelector$19(Lccsancom/google/android/exoplayer2/trackselection/TrackSelector;)Lccsancom/google/android/exoplayer2/trackselection/TrackSelector;
    .locals 0
    .param p0, "trackSelector"    # Lccsancom/google/android/exoplayer2/trackselection/TrackSelector;

    .line 632
    return-object p0
.end method


# virtual methods
.method public build()Lccsancom/google/android/exoplayer2/ExoPlayer;
    .locals 1

    .line 961
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->buildSimpleExoPlayer()Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    return-object v0
.end method

.method buildSimpleExoPlayer()Lccsancom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 2

    .line 965
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 966
    iput-boolean v1, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    .line 967
    new-instance v0, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-direct {v0, p0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;-><init>(Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;)V

    return-object v0
.end method

.method public experimentalSetForegroundModeTimeoutMs(J)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1
    .param p1, "timeoutMs"    # J

    .line 592
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 593
    iput-wide p1, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->foregroundModeTimeoutMs:J

    .line 594
    return-object p0
.end method

.method public synthetic lambda$new$16$com-google-android-exoplayer2-ExoPlayer$Builder()Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;
    .locals 2

    .line 566
    new-instance v0, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->clock:Lccsancom/google/android/exoplayer2/util/Clock;

    invoke-static {v1}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/exoplayer2/util/Clock;

    invoke-direct {v0, v1}, Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;-><init>(Lccsancom/google/android/exoplayer2/util/Clock;)V

    return-object v0
.end method

.method public setAnalyticsCollector(Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1
    .param p1, "analyticsCollector"    # Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;

    .line 684
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 685
    new-instance v0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda5;-><init>(Lccsancom/google/android/exoplayer2/analytics/AnalyticsCollector;)V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->analyticsCollectorSupplier:Lccsancom/google/common/base/Supplier;

    .line 686
    return-object p0
.end method

.method public setAudioAttributes(Lccsancom/google/android/exoplayer2/audio/AudioAttributes;Z)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1
    .param p1, "audioAttributes"    # Lccsancom/google/android/exoplayer2/audio/AudioAttributes;
    .param p2, "handleAudioFocus"    # Z

    .line 718
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 719
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->audioAttributes:Lccsancom/google/android/exoplayer2/audio/AudioAttributes;

    .line 720
    iput-boolean p2, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->handleAudioFocus:Z

    .line 721
    return-object p0
.end method

.method public setBandwidthMeter(Lccsancom/google/android/exoplayer2/upstream/BandwidthMeter;)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1
    .param p1, "bandwidthMeter"    # Lccsancom/google/android/exoplayer2/upstream/BandwidthMeter;

    .line 657
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 658
    new-instance v0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda14;

    invoke-direct {v0, p1}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda14;-><init>(Lccsancom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->bandwidthMeterSupplier:Lccsancom/google/common/base/Supplier;

    .line 659
    return-object p0
.end method

.method public setClock(Lccsancom/google/android/exoplayer2/util/Clock;)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1
    .param p1, "clock"    # Lccsancom/google/android/exoplayer2/util/Clock;

    .line 950
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 951
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->clock:Lccsancom/google/android/exoplayer2/util/Clock;

    .line 952
    return-object p0
.end method

.method public setDetachSurfaceTimeoutMs(J)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1
    .param p1, "detachSurfaceTimeoutMs"    # J

    .line 903
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 904
    iput-wide p1, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->detachSurfaceTimeoutMs:J

    .line 905
    return-object p0
.end method

.method public setHandleAudioBecomingNoisy(Z)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1
    .param p1, "handleAudioBecomingNoisy"    # Z

    .line 759
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 760
    iput-boolean p1, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->handleAudioBecomingNoisy:Z

    .line 761
    return-object p0
.end method

.method public setLivePlaybackSpeedControl(Lccsancom/google/android/exoplayer2/LivePlaybackSpeedControl;)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1
    .param p1, "livePlaybackSpeedControl"    # Lccsancom/google/android/exoplayer2/LivePlaybackSpeedControl;

    .line 935
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 936
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->livePlaybackSpeedControl:Lccsancom/google/android/exoplayer2/LivePlaybackSpeedControl;

    .line 937
    return-object p0
.end method

.method public setLoadControl(Lccsancom/google/android/exoplayer2/LoadControl;)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1
    .param p1, "loadControl"    # Lccsancom/google/android/exoplayer2/LoadControl;

    .line 644
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 645
    new-instance v0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda22;

    invoke-direct {v0, p1}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda22;-><init>(Lccsancom/google/android/exoplayer2/LoadControl;)V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->loadControlSupplier:Lccsancom/google/common/base/Supplier;

    .line 646
    return-object p0
.end method

.method public setLooper(Lccsanandroid/os/Looper;)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1
    .param p1, "looper"    # Lccsanandroid/os/Looper;

    .line 671
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 672
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->looper:Lccsanandroid/os/Looper;

    .line 673
    return-object p0
.end method

.method public setMediaSourceFactory(Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1
    .param p1, "mediaSourceFactory"    # Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;

    .line 618
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 619
    new-instance v0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda9;-><init>(Lccsancom/google/android/exoplayer2/source/MediaSourceFactory;)V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->mediaSourceFactorySupplier:Lccsancom/google/common/base/Supplier;

    .line 620
    return-object p0
.end method

.method public setPauseAtEndOfMediaItems(Z)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1
    .param p1, "pauseAtEndOfMediaItems"    # Z

    .line 921
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 922
    iput-boolean p1, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->pauseAtEndOfMediaItems:Z

    .line 923
    return-object p0
.end method

.method public setPriorityTaskManager(Lccsancom/google/android/exoplayer2/util/PriorityTaskManager;)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1
    .param p1, "priorityTaskManager"    # Lccsancom/google/android/exoplayer2/util/PriorityTaskManager;

    .line 699
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 700
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->priorityTaskManager:Lccsancom/google/android/exoplayer2/util/PriorityTaskManager;

    .line 701
    return-object p0
.end method

.method public setReleaseTimeoutMs(J)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1
    .param p1, "releaseTimeoutMs"    # J

    .line 886
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 887
    iput-wide p1, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->releaseTimeoutMs:J

    .line 888
    return-object p0
.end method

.method public setRenderersFactory(Lccsancom/google/android/exoplayer2/RenderersFactory;)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1
    .param p1, "renderersFactory"    # Lccsancom/google/android/exoplayer2/RenderersFactory;

    .line 605
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 606
    new-instance v0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda3;-><init>(Lccsancom/google/android/exoplayer2/RenderersFactory;)V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->renderersFactorySupplier:Lccsancom/google/common/base/Supplier;

    .line 607
    return-object p0
.end method

.method public setSeekBackIncrementMs(J)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 4
    .param p1, "seekBackIncrementMs"    # J

    .line 853
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 854
    iget-boolean v1, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/2addr v0, v1

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 855
    iput-wide p1, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->seekBackIncrementMs:J

    .line 856
    return-object p0
.end method

.method public setSeekForwardIncrementMs(J)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 4
    .param p1, "seekForwardIncrementMs"    # J

    .line 868
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 869
    iget-boolean v1, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/2addr v0, v1

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 870
    iput-wide p1, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->seekForwardIncrementMs:J

    .line 871
    return-object p0
.end method

.method public setSeekParameters(Lccsancom/google/android/exoplayer2/SeekParameters;)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1
    .param p1, "seekParameters"    # Lccsancom/google/android/exoplayer2/SeekParameters;

    .line 839
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 840
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->seekParameters:Lccsancom/google/android/exoplayer2/SeekParameters;

    .line 841
    return-object p0
.end method

.method public setSkipSilenceEnabled(Z)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1
    .param p1, "skipSilenceEnabled"    # Z

    .line 772
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 773
    iput-boolean p1, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->skipSilenceEnabled:Z

    .line 774
    return-object p0
.end method

.method public setTrackSelector(Lccsancom/google/android/exoplayer2/trackselection/TrackSelector;)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1
    .param p1, "trackSelector"    # Lccsancom/google/android/exoplayer2/trackselection/TrackSelector;

    .line 631
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 632
    new-instance v0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1}, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda12;-><init>(Lccsancom/google/android/exoplayer2/trackselection/TrackSelector;)V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->trackSelectorSupplier:Lccsancom/google/common/base/Supplier;

    .line 633
    return-object p0
.end method

.method public setUseLazyPreparation(Z)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1
    .param p1, "useLazyPreparation"    # Z

    .line 826
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 827
    iput-boolean p1, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->useLazyPreparation:Z

    .line 828
    return-object p0
.end method

.method public setVideoChangeFrameRateStrategy(I)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1
    .param p1, "videoChangeFrameRateStrategy"    # I

    .line 809
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 810
    iput p1, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->videoChangeFrameRateStrategy:I

    .line 811
    return-object p0
.end method

.method public setVideoScalingMode(I)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1
    .param p1, "videoScalingMode"    # I

    .line 788
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 789
    iput p1, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->videoScalingMode:I

    .line 790
    return-object p0
.end method

.method public setWakeMode(I)Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1
    .param p1, "wakeMode"    # I

    .line 742
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 743
    iput p1, p0, Lccsancom/google/android/exoplayer2/ExoPlayer$Builder;->wakeMode:I

    .line 744
    return-object p0
.end method
