.class public final Lccsankotlin/ranges/UIntRange;
.super Lccsankotlin/ranges/UIntProgression;
.source "UIntRange.kt"

# interfaces
.implements Lccsankotlin/ranges/ClosedRange;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsankotlin/ranges/UIntRange$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsankotlin/ranges/UIntProgression;",
        "Lccsankotlin/ranges/ClosedRange<",
        "Lccsankotlin/UInt;",
        ">;"
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u00172\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u0002:\u0001\u0017B\u0018\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0006J\u001b\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0003H\u0096\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0013\u0010\u000f\u001a\u00020\u000b2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u000bH\u0016J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016R\u001a\u0010\u0005\u001a\u00020\u00038VX\u0096\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\u0004\u001a\u00020\u00038VX\u0096\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u0008\u00f8\u0001\u0000\u0082\u0002\u0008\n\u0002\u0008\u0019\n\u0002\u0008!\u00a8\u0006\u0018"
    }
    d2 = {
        "Lccsankotlin/ranges/UIntRange;",
        "Lccsankotlin/ranges/UIntProgression;",
        "Lccsankotlin/ranges/ClosedRange;",
        "Lccsankotlin/UInt;",
        "start",
        "endInclusive",
        "(IILccsankotlin/jvm/internal/DefaultConstructorMarker;)V",
        "getEndInclusive-pVg5ArA",
        "()I",
        "getStart-pVg5ArA",
        "contains",
        "",
        "value",
        "contains-WZ4Q5Ns",
        "(I)Z",
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
.field public static final Companion:Lccsankotlin/ranges/UIntRange$Companion;

.field private static final EMPTY:Lccsankotlin/ranges/UIntRange;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lccsankotlin/ranges/UIntRange$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsankotlin/ranges/UIntRange$Companion;-><init>(Lccsankotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lccsankotlin/ranges/UIntRange;->Companion:Lccsankotlin/ranges/UIntRange$Companion;

    .line 43
    new-instance v0, Lccsankotlin/ranges/UIntRange;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsankotlin/ranges/UIntRange;-><init>(II)V

    sput-object v0, Lccsankotlin/ranges/UIntRange;->EMPTY:Lccsankotlin/ranges/UIntRange;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "endInclusive"    # I

    .line 19
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lccsankotlin/ranges/UIntProgression;-><init>(IIILccsankotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(IILccsankotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "endInclusive"    # I
    .param p3, "$constructor_marker"    # Lccsankotlin/jvm/internal/DefaultConstructorMarker;

    .line 19
    invoke-direct {p0, p1, p2}, Lccsankotlin/ranges/UIntRange;-><init>(II)V

    return-void
.end method

.method public static final synthetic access$getEMPTY$cp()Lccsankotlin/ranges/UIntRange;
    .locals 1

    .line 19
    sget-object v0, Lccsankotlin/ranges/UIntRange;->EMPTY:Lccsankotlin/ranges/UIntRange;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic contains(Ljava/lang/Comparable;)Z
    .locals 0

    .line 19
    check-cast p1, Lccsankotlin/UInt;

    invoke-virtual {p1}, Lccsankotlin/UInt;->unbox-impl()I

    move-result p1

    invoke-virtual {p0, p1}, Lccsankotlin/ranges/UIntRange;->contains-WZ4Q5Ns(I)Z

    move-result p1

    return p1
.end method

.method public contains-WZ4Q5Ns(I)Z
    .locals 1
    .param p1, "value"    # I

    .line 23
    invoke-virtual {p0}, Lccsankotlin/ranges/UIntRange;->getFirst-pVg5ArA()I

    move-result v0

    invoke-static {v0, p1}, Lccsankotlin/UnsignedKt;->uintCompare(II)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lccsankotlin/ranges/UIntRange;->getLast-pVg5ArA()I

    move-result v0

    invoke-static {p1, v0}, Lccsankotlin/UnsignedKt;->uintCompare(II)I

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
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 33
    nop

    .line 34
    nop

    .line 33
    instance-of v0, p1, Lccsankotlin/ranges/UIntRange;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lccsankotlin/ranges/UIntRange;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lccsankotlin/ranges/UIntRange;

    invoke-virtual {v0}, Lccsankotlin/ranges/UIntRange;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lccsankotlin/ranges/UIntRange;->getFirst-pVg5ArA()I

    move-result v0

    move-object v1, p1

    check-cast v1, Lccsankotlin/ranges/UIntRange;

    invoke-virtual {v1}, Lccsankotlin/ranges/UIntRange;->getFirst-pVg5ArA()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lccsankotlin/ranges/UIntRange;->getLast-pVg5ArA()I

    move-result v0

    move-object v1, p1

    check-cast v1, Lccsankotlin/ranges/UIntRange;

    invoke-virtual {v1}, Lccsankotlin/ranges/UIntRange;->getLast-pVg5ArA()I

    move-result v1

    if-ne v0, v1, :cond_2

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
    .locals 1

    .line 19
    invoke-virtual {p0}, Lccsankotlin/ranges/UIntRange;->getEndInclusive-pVg5ArA()I

    move-result v0

    invoke-static {v0}, Lccsankotlin/UInt;->box-impl(I)Lccsankotlin/UInt;

    move-result-object v0

    return-object v0
.end method

.method public getEndInclusive-pVg5ArA()I
    .locals 1

    .line 21
    invoke-virtual {p0}, Lccsankotlin/ranges/UIntRange;->getLast-pVg5ArA()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getStart()Ljava/lang/Comparable;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lccsankotlin/ranges/UIntRange;->getStart-pVg5ArA()I

    move-result v0

    invoke-static {v0}, Lccsankotlin/UInt;->box-impl(I)Lccsankotlin/UInt;

    move-result-object v0

    return-object v0
.end method

.method public getStart-pVg5ArA()I
    .locals 1

    .line 20
    invoke-virtual {p0}, Lccsankotlin/ranges/UIntRange;->getFirst-pVg5ArA()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 37
    invoke-virtual {p0}, Lccsankotlin/ranges/UIntRange;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lccsankotlin/ranges/UIntRange;->getFirst-pVg5ArA()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lccsankotlin/ranges/UIntRange;->getLast-pVg5ArA()I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 30
    invoke-virtual {p0}, Lccsankotlin/ranges/UIntRange;->getFirst-pVg5ArA()I

    move-result v0

    invoke-virtual {p0}, Lccsankotlin/ranges/UIntRange;->getLast-pVg5ArA()I

    move-result v1

    invoke-static {v0, v1}, Lccsankotlin/UnsignedKt;->uintCompare(II)I

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
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lccsankotlin/ranges/UIntRange;->getFirst-pVg5ArA()I

    move-result v1

    invoke-static {v1}, Lccsankotlin/UInt;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsankotlin/ranges/UIntRange;->getLast-pVg5ArA()I

    move-result v1

    invoke-static {v1}, Lccsankotlin/UInt;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
