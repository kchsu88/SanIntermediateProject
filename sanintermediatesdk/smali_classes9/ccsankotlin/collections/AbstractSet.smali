.class public abstract Lccsankotlin/collections/AbstractSet;
.super Lccsankotlin/collections/AbstractCollection;
.source "AbstractSet.kt"

# interfaces
.implements Ljava/util/Set;
.implements Lccsankotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsankotlin/collections/AbstractSet$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lccsankotlin/collections/AbstractCollection<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;",
        "Lccsankotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\'\u0018\u0000 \u000b*\u0006\u0008\u0000\u0010\u0001 \u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001\u000bB\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0004J\u0013\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0096\u0002J\u0008\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lccsankotlin/collections/AbstractSet;",
        "E",
        "Lccsankotlin/collections/AbstractCollection;",
        "",
        "()V",
        "equals",
        "",
        "other",
        "",
        "hashCode",
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
.field public static final Companion:Lccsankotlin/collections/AbstractSet$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lccsankotlin/collections/AbstractSet$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsankotlin/collections/AbstractSet$Companion;-><init>(Lccsankotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lccsankotlin/collections/AbstractSet;->Companion:Lccsankotlin/collections/AbstractSet$Companion;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lccsankotlin/collections/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 23
    move-object v0, p0

    check-cast v0, Lccsankotlin/collections/AbstractSet;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 24
    :cond_0
    instance-of v0, p1, Ljava/util/Set;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 25
    :cond_1
    sget-object v0, Lccsankotlin/collections/AbstractSet;->Companion:Lccsankotlin/collections/AbstractSet$Companion;

    move-object v1, p0

    check-cast v1, Ljava/util/Set;

    move-object v2, p1

    check-cast v2, Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lccsankotlin/collections/AbstractSet$Companion;->setEquals$kotlin_stdlib(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 31
    sget-object v0, Lccsankotlin/collections/AbstractSet;->Companion:Lccsankotlin/collections/AbstractSet$Companion;

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lccsankotlin/collections/AbstractSet$Companion;->unorderedHashCode$kotlin_stdlib(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
