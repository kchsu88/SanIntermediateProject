.class public final Lccsankotlin/system/TimingKt;
.super Ljava/lang/Object;
.source "Timing.kt"


# annotations
.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u001a\'\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u001a\'\u0010\u0005\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0006"
    }
    d2 = {
        "measureNanoTime",
        "",
        "block",
        "Lccsankotlin/Function0;",
        "",
        "measureTimeMillis",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method public static final measureNanoTime(Lccsankotlin/jvm/functions/Function0;)J
    .locals 5
    .param p0, "block"    # Lccsankotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsankotlin/jvm/functions/Function0<",
            "Lccsankotlin/Unit;",
            ">;)J"
        }
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$measureNanoTime":I
    const-string v1, "block"

    invoke-static {p0, v1}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    nop

    .line 34
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 35
    .local v1, "start":J
    invoke-interface {p0}, Lccsankotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 36
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    return-wide v3
.end method

.method public static final measureTimeMillis(Lccsankotlin/jvm/functions/Function0;)J
    .locals 5
    .param p0, "block"    # Lccsankotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsankotlin/jvm/functions/Function0<",
            "Lccsankotlin/Unit;",
            ">;)J"
        }
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$measureTimeMillis":I
    const-string v1, "block"

    invoke-static {p0, v1}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    nop

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 21
    .local v1, "start":J
    invoke-interface {p0}, Lccsankotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    return-wide v3
.end method
