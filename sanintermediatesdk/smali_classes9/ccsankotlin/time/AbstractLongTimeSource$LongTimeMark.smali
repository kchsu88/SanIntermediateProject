.class final Lccsankotlin/time/AbstractLongTimeSource$LongTimeMark;
.super Lccsankotlin/time/TimeMark;
.source "TimeSources.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsankotlin/time/AbstractLongTimeSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LongTimeMark"
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0002\u0018\u00002\u00020\u0001B \u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0008J\u0015\u0010\n\u001a\u00020\u0007H\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001b\u0010\r\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\u0007H\u0096\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\n\u0002\u0010\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0008\n\u0002\u0008\u0019\n\u0002\u0008!\u00a8\u0006\u0011"
    }
    d2 = {
        "Lccsankotlin/time/AbstractLongTimeSource$LongTimeMark;",
        "Lccsankotlin/time/TimeMark;",
        "startedAt",
        "",
        "timeSource",
        "Lccsankotlin/time/AbstractLongTimeSource;",
        "offset",
        "Lccsankotlin/time/Duration;",
        "(JLccsankotlin/time/AbstractLongTimeSource;JLccsankotlin/jvm/internal/DefaultConstructorMarker;)V",
        "J",
        "elapsedNow",
        "elapsedNow-UwyO8pc",
        "()J",
        "plus",
        "duration",
        "plus-LRDsOJo",
        "(J)Lccsankotlin/time/TimeMark;",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field private final offset:J

.field private final startedAt:J

.field private final timeSource:Lccsankotlin/time/AbstractLongTimeSource;


# direct methods
.method private constructor <init>(JLccsankotlin/time/AbstractLongTimeSource;J)V
    .locals 0
    .param p1, "startedAt"    # J
    .param p3, "timeSource"    # Lccsankotlin/time/AbstractLongTimeSource;
    .param p4, "offset"    # J

    .line 26
    invoke-direct {p0}, Lccsankotlin/time/TimeMark;-><init>()V

    iput-wide p1, p0, Lccsankotlin/time/AbstractLongTimeSource$LongTimeMark;->startedAt:J

    iput-object p3, p0, Lccsankotlin/time/AbstractLongTimeSource$LongTimeMark;->timeSource:Lccsankotlin/time/AbstractLongTimeSource;

    iput-wide p4, p0, Lccsankotlin/time/AbstractLongTimeSource$LongTimeMark;->offset:J

    return-void
.end method

.method public synthetic constructor <init>(JLccsankotlin/time/AbstractLongTimeSource;JLccsankotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "startedAt"    # J
    .param p3, "timeSource"    # Lccsankotlin/time/AbstractLongTimeSource;
    .param p4, "offset"    # J
    .param p6, "$constructor_marker"    # Lccsankotlin/jvm/internal/DefaultConstructorMarker;

    .line 26
    invoke-direct/range {p0 .. p5}, Lccsankotlin/time/AbstractLongTimeSource$LongTimeMark;-><init>(JLccsankotlin/time/AbstractLongTimeSource;J)V

    return-void
.end method


# virtual methods
.method public elapsedNow-UwyO8pc()J
    .locals 4

    .line 27
    iget-object v0, p0, Lccsankotlin/time/AbstractLongTimeSource$LongTimeMark;->timeSource:Lccsankotlin/time/AbstractLongTimeSource;

    invoke-virtual {v0}, Lccsankotlin/time/AbstractLongTimeSource;->read()J

    move-result-wide v0

    iget-wide v2, p0, Lccsankotlin/time/AbstractLongTimeSource$LongTimeMark;->startedAt:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lccsankotlin/time/AbstractLongTimeSource$LongTimeMark;->timeSource:Lccsankotlin/time/AbstractLongTimeSource;

    invoke-virtual {v2}, Lccsankotlin/time/AbstractLongTimeSource;->getUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lccsankotlin/time/DurationKt;->toDuration(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lccsankotlin/time/AbstractLongTimeSource$LongTimeMark;->offset:J

    invoke-static {v0, v1, v2, v3}, Lccsankotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public plus-LRDsOJo(J)Lccsankotlin/time/TimeMark;
    .locals 7
    .param p1, "duration"    # J

    .line 28
    new-instance v6, Lccsankotlin/time/AbstractLongTimeSource$LongTimeMark;

    iget-wide v1, p0, Lccsankotlin/time/AbstractLongTimeSource$LongTimeMark;->startedAt:J

    iget-object v3, p0, Lccsankotlin/time/AbstractLongTimeSource$LongTimeMark;->timeSource:Lccsankotlin/time/AbstractLongTimeSource;

    iget-wide v4, p0, Lccsankotlin/time/AbstractLongTimeSource$LongTimeMark;->offset:J

    invoke-static {v4, v5, p1, p2}, Lccsankotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lccsankotlin/time/AbstractLongTimeSource$LongTimeMark;-><init>(JLccsankotlin/time/AbstractLongTimeSource;J)V

    check-cast v6, Lccsankotlin/time/TimeMark;

    return-object v6
.end method
