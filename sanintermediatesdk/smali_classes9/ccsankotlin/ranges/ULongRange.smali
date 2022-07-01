.class public final Lccsankotlin/ranges/ULongRange;
.super Lccsankotlin/ranges/ULongProgression;
.source "ULongRange.kt"

# interfaces
.implements Lccsankotlin/ranges/ClosedRange;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsankotlin/ranges/ULongRange$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsankotlin/ranges/ULongProgression;",
        "Lccsankotlin/ranges/ClosedRange<",
        "Lccsankotlin/ULong;",
        ">;"
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u00172\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u0002:\u0001\u0017B\u0018\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0006J\u001b\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0003H\u0096\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0013\u0010\u000f\u001a\u00020\u000b2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u000bH\u0016J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016R\u001a\u0010\u0005\u001a\u00020\u00038VX\u0096\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\u0004\u001a\u00020\u00038VX\u0096\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u0008\u00f8\u0001\u0000\u0082\u0002\u0008\n\u0002\u0008\u0019\n\u0002\u0008!\u00a8\u0006\u0018"
    }
    d2 = {
        "Lccsankotlin/ranges/ULongRange;",
        "Lccsankotlin/ranges/ULongProgression;",
        "Lccsankotlin/ranges/ClosedRange;",
        "Lccsankotlin/ULong;",
        "start",
        "endInclusive",
        "(JJLccsankotlin/jvm/internal/DefaultConstructorMarker;)V",
        "getEndInclusive-s-VKNKU",
        "()J",
        "getStart-s-VKNKU",
        "contains",
        "",
        "value",
        "contains-VKZWuLQ",
        "(J)Z",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "isEmpty",
        "toString",
        "",
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
.field public static final Companion:Lccsankotlin/ranges/ULongRange$Companion;

.field private static final EMPTY:Lccsankotlin/ranges/ULongRange;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lccsankotlin/ranges/ULongRange$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsankotlin/ranges/ULongRange$Companion;-><init>(Lccsankotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lccsankotlin/ranges/ULongRange;->Companion:Lccsankotlin/ranges/ULongRange$Companion;

    .line 43
    new-instance v0, Lccsankotlin/ranges/ULongRange;

    const-wide/16 v1, -0x1

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lccsankotlin/ranges/ULongRange;-><init>(JJ)V

    sput-object v0, Lccsankotlin/ranges/ULongRange;->EMPTY:Lccsankotlin/ranges/ULongRange;

    return-void
.end method

.method private constructor <init>(JJ)V
    .locals 8
    .param p1, "start"    # J
    .param p3, "endInclusive"    # J

    .line 19
    const-wide/16 v5, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v7}, Lccsankotlin/ranges/ULongProgression;-><init>(JJJLccsankotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(JJLccsankotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "start"    # J
    .param p3, "endInclusive"    # J
    .param p5, "$constructor_marker"    # Lccsankotlin/jvm/internal/DefaultConstructorMarker;

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lccsankotlin/ranges/ULongRange;-><init>(JJ)V

    return-void
.end method

.method public static final synthetic access$getEMPTY$cp()Lccsankotlin/ranges/ULongRange;
    .locals 1

    .line 19
    sget-object v0, Lccsankotlin/ranges/ULongRange;->EMPTY:Lccsankotlin/ranges/ULongRange;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic contains(Ljava/lang/Comparable;)Z
    .locals 2

    .line 19
    check-cast p1, Lccsankotlin/ULong;

    invoke-virtual {p1}, Lccsankotlin/ULong;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lccsankotlin/ranges/ULongRange;->contains-VKZWuLQ(J)Z

    move-result p1

    return p1
.end method

.method public contains-VKZWuLQ(J)Z
    .locals 2
    .param p1, "value"    # J

    .line 23
    invoke-virtual {p0}, Lccsankotlin/ranges/ULongRange;->getFirst-s-VKNKU()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lccsankotlin/UnsignedKt;->ulongCompare(JJ)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lccsankotlin/ranges/ULongRange;->getLast-s-VKNKU()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lccsankotlin/UnsignedKt;->ulongCompare(JJ)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 33
    nop

    .line 34
    nop

    .line 33
    instance-of v0, p1, Lccsankotlin/ranges/ULongRange;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lccsankotlin/ranges/ULongRange;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lccsankotlin/ranges/ULongRange;

    invoke-virtual {v0}, Lccsankotlin/ranges/ULongRange;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lccsankotlin/ranges/ULongRange;->getFirst-s-VKNKU()J

    move-result-wide v0

    move-object v2, p1

    check-cast v2, Lccsankotlin/ranges/ULongRange;

    invoke-virtual {v2}, Lccsankotlin/ranges/ULongRange;->getFirst-s-VKNKU()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lccsankotlin/ranges/ULongRange;->getLast-s-VKNKU()J

    move-result-wide v0

    move-object v2, p1

    check-cast v2, Lccsankotlin/ranges/ULongRange;

    invoke-virtual {v2}, Lccsankotlin/ranges/ULongRange;->getLast-s-VKNKU()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0
.end method

.method public bridge synthetic getEndInclusive()Ljava/lang/Comparable;
    .locals 2

    .line 19
    invoke-virtual {p0}, Lccsankotlin/ranges/ULongRange;->getEndInclusive-s-VKNKU()J

    move-result-wide v0

    invoke-static {v0, v1}, Lccsankotlin/ULong;->box-impl(J)Lccsankotlin/ULong;

    move-result-object v0

    return-object v0
.end method

.method public getEndInclusive-s-VKNKU()J
    .locals 2

    .line 21
    invoke-virtual {p0}, Lccsankotlin/ranges/ULongRange;->getLast-s-VKNKU()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getStart()Ljava/lang/Comparable;
    .locals 2

    .line 19
    invoke-virtual {p0}, Lccsankotlin/ranges/ULongRange;->getStart-s-VKNKU()J

    move-result-wide v0

    invoke-static {v0, v1}, Lccsankotlin/ULong;->box-impl(J)Lccsankotlin/ULong;

    move-result-object v0

    return-object v0
.end method

.method public getStart-s-VKNKU()J
    .locals 2

    .line 20
    invoke-virtual {p0}, Lccsankotlin/ranges/ULongRange;->getFirst-s-VKNKU()J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .line 37
    invoke-virtual {p0}, Lccsankotlin/ranges/ULongRange;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lccsankotlin/ranges/ULongRange;->getFirst-s-VKNKU()J

    move-result-wide v0

    invoke-virtual {p0}, Lccsankotlin/ranges/ULongRange;->getFirst-s-VKNKU()J

    move-result-wide v2

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    invoke-static {v2, v3}, Lccsankotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    xor-long/2addr v0, v2

    invoke-static {v0, v1}, Lccsankotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0}, Lccsankotlin/ranges/ULongRange;->getLast-s-VKNKU()J

    move-result-wide v2

    invoke-virtual {p0}, Lccsankotlin/ranges/ULongRange;->getLast-s-VKNKU()J

    move-result-wide v5

    ushr-long v4, v5, v4

    invoke-static {v4, v5}, Lccsankotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    xor-long/2addr v2, v4

    invoke-static {v2, v3}, Lccsankotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    long-to-int v0, v2

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 4

    .line 30
    invoke-virtual {p0}, Lccsankotlin/ranges/ULongRange;->getFirst-s-VKNKU()J

    move-result-wide v0

    invoke-virtual {p0}, Lccsankotlin/ranges/ULongRange;->getLast-s-VKNKU()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lccsankotlin/UnsignedKt;->ulongCompare(JJ)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lccsankotlin/ranges/ULongRange;->getFirst-s-VKNKU()J

    move-result-wide v1

    invoke-static {v1, v2}, Lccsankotlin/ULong;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsankotlin/ranges/ULongRange;->getLast-s-VKNKU()J

    move-result-wide v1

    invoke-static {v1, v2}, Lccsankotlin/ULong;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
