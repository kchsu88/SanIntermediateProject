.class public final Lccsankotlin/KotlinVersion;
.super Ljava/lang/Object;
.source "KotlinVersion.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsankotlin/KotlinVersion$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lccsankotlin/KotlinVersion;",
        ">;"
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u00172\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0017B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007J\u0011\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0000H\u0096\u0002J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\u0008\u0010\u0012\u001a\u00020\u0003H\u0016J\u0016\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003J\u001e\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0003J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J \u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0003H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tR\u000e\u0010\u000c\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lccsankotlin/KotlinVersion;",
        "",
        "major",
        "",
        "minor",
        "(II)V",
        "patch",
        "(III)V",
        "getMajor",
        "()I",
        "getMinor",
        "getPatch",
        "version",
        "compareTo",
        "other",
        "equals",
        "",
        "",
        "hashCode",
        "isAtLeast",
        "toString",
        "",
        "versionOf",
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
.field public static final CURRENT:Lccsankotlin/KotlinVersion;

.field public static final Companion:Lccsankotlin/KotlinVersion$Companion;

.field public static final MAX_COMPONENT_VALUE:I = 0xff


# instance fields
.field private final major:I

.field private final minor:I

.field private final patch:I

.field private final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lccsankotlin/KotlinVersion$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsankotlin/KotlinVersion$Companion;-><init>(Lccsankotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lccsankotlin/KotlinVersion;->Companion:Lccsankotlin/KotlinVersion$Companion;

    .line 75
    invoke-static {}, Lccsankotlin/KotlinVersionCurrentValue;->get()Lccsankotlin/KotlinVersion;

    move-result-object v0

    sput-object v0, Lccsankotlin/KotlinVersion;->CURRENT:Lccsankotlin/KotlinVersion;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "major"    # I
    .param p2, "minor"    # I

    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsankotlin/KotlinVersion;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "major"    # I
    .param p2, "minor"    # I
    .param p3, "patch"    # I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lccsankotlin/KotlinVersion;->major:I

    iput p2, p0, Lccsankotlin/KotlinVersion;->minor:I

    iput p3, p0, Lccsankotlin/KotlinVersion;->patch:I

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lccsankotlin/KotlinVersion;->versionOf(III)I

    move-result v0

    iput v0, p0, Lccsankotlin/KotlinVersion;->version:I

    return-void
.end method

.method private final versionOf(III)I
    .locals 3
    .param p1, "major"    # I
    .param p2, "minor"    # I
    .param p3, "patch"    # I

    .line 26
    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xff

    if-lt v0, p1, :cond_3

    if-gez p2, :cond_1

    goto :goto_0

    :cond_1
    if-lt v0, p2, :cond_3

    if-gez p3, :cond_2

    goto :goto_0

    :cond_2
    if-lt v0, p3, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    .line 29
    shl-int/lit8 v0, p1, 0x10

    shl-int/lit8 v1, p2, 0x8

    add-int/2addr v0, v1

    add-int/2addr v0, p3

    return v0

    .line 26
    :cond_4
    const/4 v0, 0x0

    .line 27
    .local v0, "$i$a$-require-KotlinVersion$versionOf$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Version components are out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    .end local v0    # "$i$a$-require-KotlinVersion$versionOf$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 17
    check-cast p1, Lccsankotlin/KotlinVersion;

    invoke-virtual {p0, p1}, Lccsankotlin/KotlinVersion;->compareTo(Lccsankotlin/KotlinVersion;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lccsankotlin/KotlinVersion;)I
    .locals 2
    .param p1, "other"    # Lccsankotlin/KotlinVersion;

    const-string v0, "other"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget v0, p0, Lccsankotlin/KotlinVersion;->version:I

    iget v1, p1, Lccsankotlin/KotlinVersion;->version:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 38
    move-object v0, p0

    check-cast v0, Lccsankotlin/KotlinVersion;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    .line 39
    :cond_0
    instance-of v0, p1, Lccsankotlin/KotlinVersion;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    check-cast v0, Lccsankotlin/KotlinVersion;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 40
    .local v0, "otherVersion":Lccsankotlin/KotlinVersion;
    iget v3, p0, Lccsankotlin/KotlinVersion;->version:I

    iget v4, v0, Lccsankotlin/KotlinVersion;->version:I

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 39
    .end local v0    # "otherVersion":Lccsankotlin/KotlinVersion;
    :cond_3
    return v2
.end method

.method public final getMajor()I
    .locals 1

    .line 17
    iget v0, p0, Lccsankotlin/KotlinVersion;->major:I

    return v0
.end method

.method public final getMinor()I
    .locals 1

    .line 17
    iget v0, p0, Lccsankotlin/KotlinVersion;->minor:I

    return v0
.end method

.method public final getPatch()I
    .locals 1

    .line 17
    iget v0, p0, Lccsankotlin/KotlinVersion;->patch:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 43
    iget v0, p0, Lccsankotlin/KotlinVersion;->version:I

    return v0
.end method

.method public final isAtLeast(II)Z
    .locals 1
    .param p1, "major"    # I
    .param p2, "minor"    # I

    .line 52
    nop

    .line 53
    iget v0, p0, Lccsankotlin/KotlinVersion;->major:I

    if-gt v0, p1, :cond_1

    if-ne v0, p1, :cond_0

    iget v0, p0, Lccsankotlin/KotlinVersion;->minor:I

    if-lt v0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isAtLeast(III)Z
    .locals 1
    .param p1, "major"    # I
    .param p2, "minor"    # I
    .param p3, "patch"    # I

    .line 60
    nop

    .line 61
    nop

    .line 62
    iget v0, p0, Lccsankotlin/KotlinVersion;->major:I

    if-gt v0, p1, :cond_1

    if-ne v0, p1, :cond_0

    iget v0, p0, Lccsankotlin/KotlinVersion;->minor:I

    if-gt v0, p2, :cond_1

    if-ne v0, p2, :cond_0

    iget v0, p0, Lccsankotlin/KotlinVersion;->patch:I

    if-lt v0, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lccsankotlin/KotlinVersion;->major:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsankotlin/KotlinVersion;->minor:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsankotlin/KotlinVersion;->patch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
