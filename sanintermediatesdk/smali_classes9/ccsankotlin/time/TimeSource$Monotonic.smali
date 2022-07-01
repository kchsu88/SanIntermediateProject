.class public final Lccsankotlin/time/TimeSource$Monotonic;
.super Ljava/lang/Object;
.source "TimeSource.kt"

# interfaces
.implements Lccsankotlin/time/TimeSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsankotlin/time/TimeSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Monotonic"
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\t\u0010\u0003\u001a\u00020\u0004H\u0096\u0001J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lccsankotlin/time/TimeSource$Monotonic;",
        "Lccsankotlin/time/TimeSource;",
        "()V",
        "markNow",
        "Lccsankotlin/time/TimeMark;",
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
.field public static final INSTANCE:Lccsankotlin/time/TimeSource$Monotonic;


# instance fields
.field private final synthetic $$delegate_0:Lccsankotlin/time/MonotonicTimeSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lccsankotlin/time/TimeSource$Monotonic;

    invoke-direct {v0}, Lccsankotlin/time/TimeSource$Monotonic;-><init>()V

    sput-object v0, Lccsankotlin/time/TimeSource$Monotonic;->INSTANCE:Lccsankotlin/time/TimeSource$Monotonic;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lccsankotlin/time/MonotonicTimeSource;->INSTANCE:Lccsankotlin/time/MonotonicTimeSource;

    iput-object v0, p0, Lccsankotlin/time/TimeSource$Monotonic;->$$delegate_0:Lccsankotlin/time/MonotonicTimeSource;

    return-void
.end method


# virtual methods
.method public markNow()Lccsankotlin/time/TimeMark;
    .locals 1

    iget-object v0, p0, Lccsankotlin/time/TimeSource$Monotonic;->$$delegate_0:Lccsankotlin/time/MonotonicTimeSource;

    invoke-virtual {v0}, Lccsankotlin/time/MonotonicTimeSource;->markNow()Lccsankotlin/time/TimeMark;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lccsankotlin/time/MonotonicTimeSource;->INSTANCE:Lccsankotlin/time/MonotonicTimeSource;

    invoke-virtual {v0}, Lccsankotlin/time/MonotonicTimeSource;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
