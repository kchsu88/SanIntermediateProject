.class public final Lccsankotlin/ranges/UIntProgression$Companion;
.super Ljava/lang/Object;
.source "UIntRange.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsankotlin/ranges/UIntProgression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\t\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\n\u0010\u000b\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000c"
    }
    d2 = {
        "Lccsankotlin/ranges/UIntProgression$Companion;",
        "",
        "()V",
        "fromClosedRange",
        "Lccsankotlin/ranges/UIntProgression;",
        "rangeStart",
        "Lccsankotlin/UInt;",
        "rangeEnd",
        "step",
        "",
        "fromClosedRange-Nkh28Cs",
        "(III)Lccsankotlin/ranges/UIntProgression;",
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

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lccsankotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lccsankotlin/jvm/internal/DefaultConstructorMarker;

    .line 97
    invoke-direct {p0}, Lccsankotlin/ranges/UIntProgression$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromClosedRange-Nkh28Cs(III)Lccsankotlin/ranges/UIntProgression;
    .locals 2
    .param p1, "rangeStart"    # I
    .param p2, "rangeEnd"    # I
    .param p3, "step"    # I

    .line 106
    new-instance v0, Lccsankotlin/ranges/UIntProgression;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lccsankotlin/ranges/UIntProgression;-><init>(IIILccsankotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
