.class final Lccsankotlin/random/PlatformRandom;
.super Lccsankotlin/random/AbstractPlatformRandom;
.source "PlatformRandom.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsankotlin/random/PlatformRandom$Companion;
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0002\u0018\u0000 \t2\u00020\u00012\u00060\u0002j\u0002`\u0003:\u0001\tB\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lccsankotlin/random/PlatformRandom;",
        "Lccsankotlin/random/AbstractPlatformRandom;",
        "Ljava/io/Serializable;",
        "Lccsankotlin/io/Serializable;",
        "impl",
        "Ljava/util/Random;",
        "(Ljava/util/Random;)V",
        "getImpl",
        "()Ljava/util/Random;",
        "Companion",
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
.field private static final Companion:Lccsankotlin/random/PlatformRandom$Companion;

.field private static final serialVersionUID:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final impl:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lccsankotlin/random/PlatformRandom$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsankotlin/random/PlatformRandom$Companion;-><init>(Lccsankotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lccsankotlin/random/PlatformRandom;->Companion:Lccsankotlin/random/PlatformRandom$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/Random;)V
    .locals 1
    .param p1, "impl"    # Ljava/util/Random;

    const-string v0, "impl"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Lccsankotlin/random/AbstractPlatformRandom;-><init>()V

    iput-object p1, p0, Lccsankotlin/random/PlatformRandom;->impl:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public getImpl()Ljava/util/Random;
    .locals 1

    .line 59
    iget-object v0, p0, Lccsankotlin/random/PlatformRandom;->impl:Ljava/util/Random;

    return-object v0
.end method
