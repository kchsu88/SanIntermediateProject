.class public interface abstract Lccsankotlin/time/TimeSource;
.super Ljava/lang/Object;
.source "TimeSource.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsankotlin/time/TimeSource$Monotonic;,
        Lccsankotlin/time/TimeSource$Companion;
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008g\u0018\u0000 \u00042\u00020\u0001:\u0002\u0004\u0005J\u0008\u0010\u0002\u001a\u00020\u0003H&\u00a8\u0006\u0006"
    }
    d2 = {
        "Lccsankotlin/time/TimeSource;",
        "",
        "markNow",
        "Lccsankotlin/time/TimeMark;",
        "Companion",
        "Monotonic",
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
.field public static final Companion:Lccsankotlin/time/TimeSource$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lccsankotlin/time/TimeSource$Companion;->$$INSTANCE:Lccsankotlin/time/TimeSource$Companion;

    sput-object v0, Lccsankotlin/time/TimeSource;->Companion:Lccsankotlin/time/TimeSource$Companion;

    return-void
.end method


# virtual methods
.method public abstract markNow()Lccsankotlin/time/TimeMark;
.end method
