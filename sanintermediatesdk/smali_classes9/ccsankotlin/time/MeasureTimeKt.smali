.class public final Lccsankotlin/time/MeasureTimeKt;
.super Ljava/lang/Object;
.source "measureTime.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nmeasureTime.kt\nKotlin\n*S Kotlin\n*F\n+ 1 measureTime.kt\nkotlin/time/MeasureTimeKt\n*L\n1#1,86:1\n33#1,7:87\n78#1,7:94\n*S KotlinDebug\n*F\n+ 1 measureTime.kt\nkotlin/time/MeasureTimeKt\n*L\n21#1:87,7\n66#1:94,7\n*E\n"
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a/\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0087\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u00a2\u0006\u0002\u0010\u0005\u001a3\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u0007\"\u0004\u0008\u0000\u0010\u00082\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u0003H\u0087\u0008\u00f8\u0001\u0001\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u001a3\u0010\u0000\u001a\u00020\u0001*\u00020\t2\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0087\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u00a2\u0006\u0002\u0010\n\u001a7\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u0007\"\u0004\u0008\u0000\u0010\u0008*\u00020\t2\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u0003H\u0087\u0008\u00f8\u0001\u0001\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u0082\u0002\u000b\n\u0002\u0008\u0019\n\u0005\u0008\u009920\u0001\u00a8\u0006\u000b"
    }
    d2 = {
        "measureTime",
        "Lccsankotlin/time/Duration;",
        "block",
        "Lccsankotlin/Function0;",
        "",
        "(Lccsankotlin/jvm/functions/Function0;)J",
        "measureTimedValue",
        "Lccsankotlin/time/TimedValue;",
        "T",
        "Lccsankotlin/time/TimeSource;",
        "(Lccsankotlin/time/TimeSource;Lccsankotlin/jvm/functions/Function0;)J",
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
.method public static final measureTime(Lccsankotlin/jvm/functions/Function0;)J
    .locals 4
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

    .local v0, "$i$f$measureTime":I
    const-string v1, "block"

    invoke-static {p0, v1}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    nop

    .line 21
    sget-object v1, Lccsankotlin/time/TimeSource$Monotonic;->INSTANCE:Lccsankotlin/time/TimeSource$Monotonic;

    check-cast v1, Lccsankotlin/time/TimeSource;

    .local v1, "$this$measureTime$iv":Lccsankotlin/time/TimeSource;
    const/4 v2, 0x0

    .line 87
    .local v2, "$i$f$measureTime":I
    nop

    .line 91
    invoke-interface {v1}, Lccsankotlin/time/TimeSource;->markNow()Lccsankotlin/time/TimeMark;

    move-result-object v3

    .line 92
    .local v3, "mark$iv":Lccsankotlin/time/TimeMark;
    invoke-interface {p0}, Lccsankotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 93
    invoke-virtual {v3}, Lccsankotlin/time/TimeMark;->elapsedNow-UwyO8pc()J

    move-result-wide v1

    .line 21
    .end local v1    # "$this$measureTime$iv":Lccsankotlin/time/TimeSource;
    .end local v2    # "$i$f$measureTime":I
    .end local v3    # "mark$iv":Lccsankotlin/time/TimeMark;
    return-wide v1
.end method

.method public static final measureTime(Lccsankotlin/time/TimeSource;Lccsankotlin/jvm/functions/Function0;)J
    .locals 4
    .param p0, "$this$measureTime"    # Lccsankotlin/time/TimeSource;
    .param p1, "block"    # Lccsankotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsankotlin/time/TimeSource;",
            "Lccsankotlin/jvm/functions/Function0<",
            "Lccsankotlin/Unit;",
            ">;)J"
        }
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$measureTime":I
    const-string v1, "$this$measureTime"

    invoke-static {p0, v1}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "block"

    invoke-static {p1, v1}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    nop

    .line 37
    invoke-interface {p0}, Lccsankotlin/time/TimeSource;->markNow()Lccsankotlin/time/TimeMark;

    move-result-object v1

    .line 38
    .local v1, "mark":Lccsankotlin/time/TimeMark;
    invoke-interface {p1}, Lccsankotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 39
    invoke-virtual {v1}, Lccsankotlin/time/TimeMark;->elapsedNow-UwyO8pc()J

    move-result-wide v2

    return-wide v2
.end method

.method public static final measureTimedValue(Lccsankotlin/jvm/functions/Function0;)Lccsankotlin/time/TimedValue;
    .locals 9
    .param p0, "block"    # Lccsankotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsankotlin/jvm/functions/Function0<",
            "+TT;>;)",
            "Lccsankotlin/time/TimedValue<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$measureTimedValue":I
    const-string v1, "block"

    invoke-static {p0, v1}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    nop

    .line 66
    sget-object v1, Lccsankotlin/time/TimeSource$Monotonic;->INSTANCE:Lccsankotlin/time/TimeSource$Monotonic;

    check-cast v1, Lccsankotlin/time/TimeSource;

    .local v1, "$this$measureTimedValue$iv":Lccsankotlin/time/TimeSource;
    const/4 v2, 0x0

    .line 94
    .local v2, "$i$f$measureTimedValue":I
    nop

    .line 98
    invoke-interface {v1}, Lccsankotlin/time/TimeSource;->markNow()Lccsankotlin/time/TimeMark;

    move-result-object v3

    .line 99
    .local v3, "mark$iv":Lccsankotlin/time/TimeMark;
    invoke-interface {p0}, Lccsankotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v4

    .line 100
    .local v4, "result$iv":Ljava/lang/Object;
    new-instance v5, Lccsankotlin/time/TimedValue;

    invoke-virtual {v3}, Lccsankotlin/time/TimeMark;->elapsedNow-UwyO8pc()J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-direct {v5, v4, v6, v7, v8}, Lccsankotlin/time/TimedValue;-><init>(Ljava/lang/Object;JLccsankotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 66
    .end local v1    # "$this$measureTimedValue$iv":Lccsankotlin/time/TimeSource;
    .end local v2    # "$i$f$measureTimedValue":I
    .end local v3    # "mark$iv":Lccsankotlin/time/TimeMark;
    .end local v4    # "result$iv":Ljava/lang/Object;
    return-object v5
.end method

.method public static final measureTimedValue(Lccsankotlin/time/TimeSource;Lccsankotlin/jvm/functions/Function0;)Lccsankotlin/time/TimedValue;
    .locals 7
    .param p0, "$this$measureTimedValue"    # Lccsankotlin/time/TimeSource;
    .param p1, "block"    # Lccsankotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsankotlin/time/TimeSource;",
            "Lccsankotlin/jvm/functions/Function0<",
            "+TT;>;)",
            "Lccsankotlin/time/TimedValue<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$measureTimedValue":I
    const-string v1, "$this$measureTimedValue"

    invoke-static {p0, v1}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "block"

    invoke-static {p1, v1}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    nop

    .line 82
    invoke-interface {p0}, Lccsankotlin/time/TimeSource;->markNow()Lccsankotlin/time/TimeMark;

    move-result-object v1

    .line 83
    .local v1, "mark":Lccsankotlin/time/TimeMark;
    invoke-interface {p1}, Lccsankotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    .line 84
    .local v2, "result":Ljava/lang/Object;
    new-instance v3, Lccsankotlin/time/TimedValue;

    invoke-virtual {v1}, Lccsankotlin/time/TimeMark;->elapsedNow-UwyO8pc()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct {v3, v2, v4, v5, v6}, Lccsankotlin/time/TimedValue;-><init>(Ljava/lang/Object;JLccsankotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3
.end method
