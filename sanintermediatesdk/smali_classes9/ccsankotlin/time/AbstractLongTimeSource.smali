.class public abstract Lccsankotlin/time/AbstractLongTimeSource;
.super Ljava/lang/Object;
.source "TimeSources.kt"

# interfaces
.implements Lccsankotlin/time/TimeSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsankotlin/time/AbstractLongTimeSource$LongTimeMark;
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\u0008\'\u0018\u00002\u00020\u0001:\u0001\u000cB\u0011\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\u000bH$R\u0018\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lccsankotlin/time/AbstractLongTimeSource;",
        "Lccsankotlin/time/TimeSource;",
        "unit",
        "Ljava/util/concurrent/TimeUnit;",
        "Lccsankotlin/time/DurationUnit;",
        "(Ljava/util/concurrent/TimeUnit;)V",
        "getUnit",
        "()Ljava/util/concurrent/TimeUnit;",
        "markNow",
        "Lccsankotlin/time/TimeMark;",
        "read",
        "",
        "LongTimeMark",
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
.field private final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/TimeUnit;)V
    .locals 1
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    const-string v0, "unit"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsankotlin/time/AbstractLongTimeSource;->unit:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method protected final getUnit()Ljava/util/concurrent/TimeUnit;
    .locals 1

    .line 19
    iget-object v0, p0, Lccsankotlin/time/AbstractLongTimeSource;->unit:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method

.method public markNow()Lccsankotlin/time/TimeMark;
    .locals 8

    .line 31
    new-instance v7, Lccsankotlin/time/AbstractLongTimeSource$LongTimeMark;

    invoke-virtual {p0}, Lccsankotlin/time/AbstractLongTimeSource;->read()J

    move-result-wide v1

    sget-object v0, Lccsankotlin/time/Duration;->Companion:Lccsankotlin/time/Duration$Companion;

    invoke-virtual {v0}, Lccsankotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v0, v7

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lccsankotlin/time/AbstractLongTimeSource$LongTimeMark;-><init>(JLccsankotlin/time/AbstractLongTimeSource;JLccsankotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v7, Lccsankotlin/time/TimeMark;

    return-object v7
.end method

.method protected abstract read()J
.end method