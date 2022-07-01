.class public final Lccsankotlin/time/MonotonicTimeSource;
.super Lccsankotlin/time/AbstractLongTimeSource;
.source "MonoTimeSource.kt"

# interfaces
.implements Lccsankotlin/time/TimeSource;


# annotations
.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u00c1\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0014J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Lccsankotlin/time/MonotonicTimeSource;",
        "Lccsankotlin/time/AbstractLongTimeSource;",
        "Lccsankotlin/time/TimeSource;",
        "()V",
        "read",
        "",
        "toString",
        "",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lccsankotlin/time/MonotonicTimeSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lccsankotlin/time/MonotonicTimeSource;

    invoke-direct {v0}, Lccsankotlin/time/MonotonicTimeSource;-><init>()V

    sput-object v0, Lccsankotlin/time/MonotonicTimeSource;->INSTANCE:Lccsankotlin/time/MonotonicTimeSource;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 10
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0}, Lccsankotlin/time/AbstractLongTimeSource;-><init>(Ljava/util/concurrent/TimeUnit;)V

    return-void
.end method


# virtual methods
.method protected read()J
    .locals 2

    .line 11
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 12
    const-string v0, "TimeSource(System.nanoTime())"

    return-object v0
.end method
