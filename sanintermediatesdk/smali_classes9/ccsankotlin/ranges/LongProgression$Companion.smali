.class public final Lccsankotlin/ranges/LongProgression$Companion;
.super Ljava/lang/Object;
.source "Progressions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsankotlin/ranges/LongProgression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lccsankotlin/ranges/LongProgression$Companion;",
        "",
        "()V",
        "fromClosedRange",
        "Lccsankotlin/ranges/LongProgression;",
        "rangeStart",
        "",
        "rangeEnd",
        "step",
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

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lccsankotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lccsankotlin/jvm/internal/DefaultConstructorMarker;

    .line 185
    invoke-direct {p0}, Lccsankotlin/ranges/LongProgression$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromClosedRange(JJJ)Lccsankotlin/ranges/LongProgression;
    .locals 8
    .param p1, "rangeStart"    # J
    .param p3, "rangeEnd"    # J
    .param p5, "step"    # J

    .line 194
    new-instance v7, Lccsankotlin/ranges/LongProgression;

    move-object v0, v7

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lccsankotlin/ranges/LongProgression;-><init>(JJJ)V

    return-object v7
.end method
