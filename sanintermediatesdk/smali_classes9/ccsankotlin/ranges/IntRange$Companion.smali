.class public final Lccsankotlin/ranges/IntRange$Companion;
.super Ljava/lang/Object;
.source "Ranges.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsankotlin/ranges/IntRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lccsankotlin/ranges/IntRange$Companion;",
        "",
        "()V",
        "EMPTY",
        "Lccsankotlin/ranges/IntRange;",
        "getEMPTY",
        "()Lccsankotlin/ranges/IntRange;",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lccsankotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lccsankotlin/jvm/internal/DefaultConstructorMarker;

    .line 66
    invoke-direct {p0}, Lccsankotlin/ranges/IntRange$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEMPTY()Lccsankotlin/ranges/IntRange;
    .locals 1

    .line 68
    invoke-static {}, Lccsankotlin/ranges/IntRange;->access$getEMPTY$cp()Lccsankotlin/ranges/IntRange;

    move-result-object v0

    return-object v0
.end method
