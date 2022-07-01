.class final Lccsankotlin/random/Random$Default$Serialized;
.super Ljava/lang/Object;
.source "Random.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsankotlin/random/Random$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Serialized"
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0000\n\u0000\u0008\u00c2\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0007H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lccsankotlin/random/Random$Default$Serialized;",
        "Ljava/io/Serializable;",
        "Lccsankotlin/io/Serializable;",
        "()V",
        "serialVersionUID",
        "",
        "readResolve",
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
.field public static final INSTANCE:Lccsankotlin/random/Random$Default$Serialized;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 273
    new-instance v0, Lccsankotlin/random/Random$Default$Serialized;

    invoke-direct {v0}, Lccsankotlin/random/Random$Default$Serialized;-><init>()V

    sput-object v0, Lccsankotlin/random/Random$Default$Serialized;->INSTANCE:Lccsankotlin/random/Random$Default$Serialized;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .locals 1

    .line 276
    sget-object v0, Lccsankotlin/random/Random;->Default:Lccsankotlin/random/Random$Default;

    return-object v0
.end method
