.class public final Lccsankotlin/random/XorWowRandom;
.super Lccsankotlin/random/Random;
.source "XorWowRandom.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsankotlin/random/XorWowRandom$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nXorWowRandom.kt\nKotlin\n*S Kotlin\n*F\n+ 1 XorWowRandom.kt\nkotlin/random/XorWowRandom\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,60:1\n1#2:61\n*E\n"
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000e\u0008\u0000\u0018\u0000 \u00122\u00020\u00012\u00060\u0002j\u0002`\u0003:\u0001\u0012B\u0017\u0008\u0010\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0007B7\u0008\u0000\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\u000c\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0005H\u0016J\u0008\u0010\u0011\u001a\u00020\u0005H\u0016R\u000e\u0010\r\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lccsankotlin/random/XorWowRandom;",
        "Lccsankotlin/random/Random;",
        "Ljava/io/Serializable;",
        "Lccsankotlin/io/Serializable;",
        "seed1",
        "",
        "seed2",
        "(II)V",
        "x",
        "y",
        "z",
        "w",
        "v",
        "addend",
        "(IIIIII)V",
        "nextBits",
        "bitCount",
        "nextInt",
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
.field private static final Companion:Lccsankotlin/random/XorWowRandom$Companion;

.field private static final serialVersionUID:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private addend:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lccsankotlin/random/XorWowRandom$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsankotlin/random/XorWowRandom$Companion;-><init>(Lccsankotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lccsankotlin/random/XorWowRandom;->Companion:Lccsankotlin/random/XorWowRandom$Companion;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 7
    .param p1, "seed1"    # I
    .param p2, "seed2"    # I

    .line 27
    nop

    .line 28
    xor-int/lit8 v5, p1, -0x1

    shl-int/lit8 v0, p1, 0xa

    ushr-int/lit8 v1, p2, 0x4

    xor-int v6, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lccsankotlin/random/XorWowRandom;-><init>(IIIIII)V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I
    .param p4, "w"    # I
    .param p5, "v"    # I
    .param p6, "addend"    # I

    .line 18
    nop

    .line 25
    invoke-direct {p0}, Lccsankotlin/random/Random;-><init>()V

    iput p1, p0, Lccsankotlin/random/XorWowRandom;->x:I

    iput p2, p0, Lccsankotlin/random/XorWowRandom;->y:I

    iput p3, p0, Lccsankotlin/random/XorWowRandom;->z:I

    iput p4, p0, Lccsankotlin/random/XorWowRandom;->w:I

    iput p5, p0, Lccsankotlin/random/XorWowRandom;->v:I

    iput p6, p0, Lccsankotlin/random/XorWowRandom;->addend:I

    .line 30
    nop

    .line 31
    or-int v0, p1, p2

    or-int/2addr v0, p3

    or-int/2addr v0, p4

    or-int/2addr v0, p5

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 34
    const/16 v0, 0x40

    :goto_1
    if-ge v1, v0, :cond_1

    move v2, v1

    .line 61
    .local v2, "it":I
    const/4 v3, 0x0

    .line 34
    .local v3, "$i$a$-repeat-XorWowRandom$2":I
    invoke-virtual {p0}, Lccsankotlin/random/XorWowRandom;->nextInt()I

    .end local v2    # "it":I
    .end local v3    # "$i$a$-repeat-XorWowRandom$2":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 35
    :cond_1
    return-void

    .line 61
    :cond_2
    const/4 v0, 0x0

    .line 31
    .local v0, "$i$a$-require-XorWowRandom$1":I
    nop

    .end local v0    # "$i$a$-require-XorWowRandom$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Initial state must have at least one non-zero element."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public nextBits(I)I
    .locals 1
    .param p1, "bitCount"    # I

    .line 54
    invoke-virtual {p0}, Lccsankotlin/random/XorWowRandom;->nextInt()I

    move-result v0

    invoke-static {v0, p1}, Lccsankotlin/random/RandomKt;->takeUpperBits(II)I

    move-result v0

    return v0
.end method

.method public nextInt()I
    .locals 4

    .line 40
    iget v0, p0, Lccsankotlin/random/XorWowRandom;->x:I

    .line 41
    .local v0, "t":I
    ushr-int/lit8 v1, v0, 0x2

    xor-int/2addr v0, v1

    .line 42
    iget v1, p0, Lccsankotlin/random/XorWowRandom;->y:I

    iput v1, p0, Lccsankotlin/random/XorWowRandom;->x:I

    .line 43
    iget v1, p0, Lccsankotlin/random/XorWowRandom;->z:I

    iput v1, p0, Lccsankotlin/random/XorWowRandom;->y:I

    .line 44
    iget v1, p0, Lccsankotlin/random/XorWowRandom;->w:I

    iput v1, p0, Lccsankotlin/random/XorWowRandom;->z:I

    .line 45
    iget v1, p0, Lccsankotlin/random/XorWowRandom;->v:I

    .line 46
    .local v1, "v0":I
    iput v1, p0, Lccsankotlin/random/XorWowRandom;->w:I

    .line 47
    shl-int/lit8 v2, v0, 0x1

    xor-int/2addr v2, v0

    xor-int/2addr v2, v1

    shl-int/lit8 v3, v1, 0x4

    xor-int v0, v2, v3

    .line 48
    iput v0, p0, Lccsankotlin/random/XorWowRandom;->v:I

    .line 49
    iget v2, p0, Lccsankotlin/random/XorWowRandom;->addend:I

    const v3, 0x587c5

    add-int/2addr v2, v3

    iput v2, p0, Lccsankotlin/random/XorWowRandom;->addend:I

    .line 50
    add-int/2addr v2, v0

    return v2
.end method
