.class public final Lccsankotlin/collections/builders/MapBuilderValues;
.super Lccsankotlin/collections/AbstractMutableCollection;
.source "MapBuilder.kt"

# interfaces
.implements Ljava/util/Collection;
.implements Lccsankotlin/jvm/internal/markers/KMutableCollection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsankotlin/collections/AbstractMutableCollection<",
        "TV;>;",
        "Ljava/util/Collection<",
        "TV;>;",
        "Lccsankotlin/jvm/internal/markers/KMutableCollection;"
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u001e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010)\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\u0019\u0008\u0000\u0012\u0010\u0010\u0004\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0004\u0012\u00028\u00000\u0005\u00a2\u0006\u0002\u0010\u0006J\u0015\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0010J\u0016\u0010\u0011\u001a\u00020\u000e2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u0016\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010\u0010J\u0008\u0010\u0017\u001a\u00020\u000eH\u0016J\u000f\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0019H\u0096\u0002J\u0015\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0010J\u0016\u0010\u001b\u001a\u00020\u000e2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0013H\u0016J\u0016\u0010\u001c\u001a\u00020\u000e2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0013H\u0016R\u001b\u0010\u0004\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0004\u0012\u00028\u00000\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u001d"
    }
    d2 = {
        "Lccsankotlin/collections/builders/MapBuilderValues;",
        "V",
        "",
        "Lccsankotlin/collections/AbstractMutableCollection;",
        "backing",
        "Lccsankotlin/collections/builders/MapBuilder;",
        "(Lccsankotlin/collections/builders/MapBuilder;)V",
        "getBacking",
        "()Lccsankotlin/collections/builders/MapBuilder;",
        "size",
        "",
        "getSize",
        "()I",
        "add",
        "",
        "element",
        "(Ljava/lang/Object;)Z",
        "addAll",
        "elements",
        "",
        "clear",
        "",
        "contains",
        "isEmpty",
        "iterator",
        "",
        "remove",
        "removeAll",
        "retainAll",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field private final backing:Lccsankotlin/collections/builders/MapBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsankotlin/collections/builders/MapBuilder<",
            "*TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsankotlin/collections/builders/MapBuilder;)V
    .locals 1
    .param p1, "backing"    # Lccsankotlin/collections/builders/MapBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsankotlin/collections/builders/MapBuilder<",
            "*TV;>;)V"
        }
    .end annotation

    const-string v0, "backing"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 573
    nop

    .line 575
    invoke-direct {p0}, Lccsankotlin/collections/AbstractMutableCollection;-><init>()V

    iput-object p1, p0, Lccsankotlin/collections/builders/MapBuilderValues;->backing:Lccsankotlin/collections/builders/MapBuilder;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 580
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "elements"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TV;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 581
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public clear()V
    .locals 1

    .line 582
    iget-object v0, p0, Lccsankotlin/collections/builders/MapBuilderValues;->backing:Lccsankotlin/collections/builders/MapBuilder;

    invoke-virtual {v0}, Lccsankotlin/collections/builders/MapBuilder;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .line 579
    iget-object v0, p0, Lccsankotlin/collections/builders/MapBuilderValues;->backing:Lccsankotlin/collections/builders/MapBuilder;

    invoke-virtual {v0, p1}, Lccsankotlin/collections/builders/MapBuilder;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getBacking()Lccsankotlin/collections/builders/MapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsankotlin/collections/builders/MapBuilder<",
            "*TV;>;"
        }
    .end annotation

    .line 574
    iget-object v0, p0, Lccsankotlin/collections/builders/MapBuilderValues;->backing:Lccsankotlin/collections/builders/MapBuilder;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 577
    iget-object v0, p0, Lccsankotlin/collections/builders/MapBuilderValues;->backing:Lccsankotlin/collections/builders/MapBuilder;

    invoke-virtual {v0}, Lccsankotlin/collections/builders/MapBuilder;->size()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 578
    iget-object v0, p0, Lccsankotlin/collections/builders/MapBuilderValues;->backing:Lccsankotlin/collections/builders/MapBuilder;

    invoke-virtual {v0}, Lccsankotlin/collections/builders/MapBuilder;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 583
    iget-object v0, p0, Lccsankotlin/collections/builders/MapBuilderValues;->backing:Lccsankotlin/collections/builders/MapBuilder;

    invoke-virtual {v0}, Lccsankotlin/collections/builders/MapBuilder;->valuesIterator$kotlin_stdlib()Lccsankotlin/collections/builders/MapBuilder$ValuesItr;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .line 584
    iget-object v0, p0, Lccsankotlin/collections/builders/MapBuilderValues;->backing:Lccsankotlin/collections/builders/MapBuilder;

    invoke-virtual {v0, p1}, Lccsankotlin/collections/builders/MapBuilder;->removeValue$kotlin_stdlib(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "elements"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lccsankotlin/collections/builders/MapBuilderValues;->backing:Lccsankotlin/collections/builders/MapBuilder;

    invoke-virtual {v0}, Lccsankotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    .line 588
    invoke-super {p0, p1}, Lccsankotlin/collections/AbstractMutableCollection;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "elements"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lccsankotlin/collections/builders/MapBuilderValues;->backing:Lccsankotlin/collections/builders/MapBuilder;

    invoke-virtual {v0}, Lccsankotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    .line 593
    invoke-super {p0, p1}, Lccsankotlin/collections/AbstractMutableCollection;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method
