.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ConcatenatingMediaSource$DeferredTimeline;
.super Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ForwardingTimeline;
.source "ConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ConcatenatingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeferredTimeline"
.end annotation


# static fields
.field private static final DUMMY_ID:Ljava/lang/Object;

.field private static final dummyTimeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ConcatenatingMediaSource$DummyTimeline;

.field private static final period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;


# instance fields
.field private final replacedId:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 812
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ConcatenatingMediaSource$DeferredTimeline;->DUMMY_ID:Ljava/lang/Object;

    .line 813
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ConcatenatingMediaSource$DeferredTimeline;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    .line 814
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ConcatenatingMediaSource$DummyTimeline;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ConcatenatingMediaSource$DummyTimeline;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ConcatenatingMediaSource$1;)V

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ConcatenatingMediaSource$DeferredTimeline;->dummyTimeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ConcatenatingMediaSource$DummyTimeline;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 819
    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ConcatenatingMediaSource$DeferredTimeline;->dummyTimeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ConcatenatingMediaSource$DummyTimeline;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ConcatenatingMediaSource$DeferredTimeline;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;Ljava/lang/Object;)V

    .line 820
    return-void
.end method

.method private constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 0

    .line 823
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ForwardingTimeline;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;)V

    .line 824
    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ConcatenatingMediaSource$DeferredTimeline;->replacedId:Ljava/lang/Object;

    .line 825
    return-void
.end method


# virtual methods
.method public final cloneWithNewTimeline(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ConcatenatingMediaSource$DeferredTimeline;
    .locals 4

    .line 828
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ConcatenatingMediaSource$DeferredTimeline;

    .line 830
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ConcatenatingMediaSource$DeferredTimeline;->replacedId:Ljava/lang/Object;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getPeriodCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 831
    const/4 v1, 0x0

    sget-object v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ConcatenatingMediaSource$DeferredTimeline;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getPeriod(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    move-result-object v1

    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    goto :goto_0

    .line 832
    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ConcatenatingMediaSource$DeferredTimeline;->replacedId:Ljava/lang/Object;

    :goto_0
    invoke-direct {v0, p1, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ConcatenatingMediaSource$DeferredTimeline;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;Ljava/lang/Object;)V

    .line 828
    return-object v0
.end method

.method public final getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 2

    .line 850
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ConcatenatingMediaSource$DeferredTimeline;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    sget-object v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ConcatenatingMediaSource$DeferredTimeline;->DUMMY_ID:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ConcatenatingMediaSource$DeferredTimeline;->replacedId:Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final getPeriod(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;
    .locals 1

    .line 841
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ConcatenatingMediaSource$DeferredTimeline;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    invoke-virtual {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getPeriod(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    .line 842
    iget-object p1, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    iget-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ConcatenatingMediaSource$DeferredTimeline;->replacedId:Ljava/lang/Object;

    invoke-static {p1, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 843
    sget-object p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ConcatenatingMediaSource$DeferredTimeline;->DUMMY_ID:Ljava/lang/Object;

    iput-object p1, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    .line 845
    :cond_0
    return-object p2
.end method

.method public final getTimeline()Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;
    .locals 1

    .line 836
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ConcatenatingMediaSource$DeferredTimeline;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    return-object v0
.end method
