.class final Lccsankotlin/collections/builders/ListBuilder$Itr;
.super Ljava/lang/Object;
.source "ListBuilder.kt"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lccsankotlin/jvm/internal/markers/KMutableListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsankotlin/collections/builders/ListBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TE;>;",
        "Lccsankotlin/jvm/internal/markers/KMutableListIterator;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nListBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListBuilder.kt\nkotlin/collections/builders/ListBuilder$Itr\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,370:1\n1#2:371\n*E\n"
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0002\u0018\u0000*\u0004\u0008\u0001\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u001d\u0008\u0016\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0015\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010\u000cJ\t\u0010\r\u001a\u00020\u000eH\u0096\u0002J\u0008\u0010\u000f\u001a\u00020\u000eH\u0016J\u000e\u0010\u0010\u001a\u00028\u0001H\u0096\u0002\u00a2\u0006\u0002\u0010\u0011J\u0008\u0010\u0012\u001a\u00020\u0006H\u0016J\r\u0010\u0013\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010\u0011J\u0008\u0010\u0014\u001a\u00020\u0006H\u0016J\u0008\u0010\u0015\u001a\u00020\nH\u0016J\u0015\u0010\u0016\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010\u000cR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lccsankotlin/collections/builders/ListBuilder$Itr;",
        "E",
        "",
        "list",
        "Lccsankotlin/collections/builders/ListBuilder;",
        "index",
        "",
        "(Lccsankotlin/collections/builders/ListBuilder;I)V",
        "lastIndex",
        "add",
        "",
        "element",
        "(Ljava/lang/Object;)V",
        "hasNext",
        "",
        "hasPrevious",
        "next",
        "()Ljava/lang/Object;",
        "nextIndex",
        "previous",
        "previousIndex",
        "remove",
        "set",
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
.field private index:I

.field private lastIndex:I

.field private final list:Lccsankotlin/collections/builders/ListBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsankotlin/collections/builders/ListBuilder<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsankotlin/collections/builders/ListBuilder;I)V
    .locals 1
    .param p1, "list"    # Lccsankotlin/collections/builders/ListBuilder;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsankotlin/collections/builders/ListBuilder<",
            "TE;>;I)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsankotlin/collections/builders/ListBuilder$Itr;->list:Lccsankotlin/collections/builders/ListBuilder;

    .line 277
    iput p2, p0, Lccsankotlin/collections/builders/ListBuilder$Itr;->index:I

    .line 278
    const/4 v0, -0x1

    iput v0, p0, Lccsankotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lccsankotlin/collections/builders/ListBuilder$Itr;->list:Lccsankotlin/collections/builders/ListBuilder;

    iget v1, p0, Lccsankotlin/collections/builders/ListBuilder$Itr;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lccsankotlin/collections/builders/ListBuilder$Itr;->index:I

    invoke-virtual {v0, v1, p1}, Lccsankotlin/collections/builders/ListBuilder;->add(ILjava/lang/Object;)V

    .line 306
    const/4 v0, -0x1

    iput v0, p0, Lccsankotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    .line 307
    return-void
.end method

.method public hasNext()Z
    .locals 2

    .line 282
    iget v0, p0, Lccsankotlin/collections/builders/ListBuilder$Itr;->index:I

    iget-object v1, p0, Lccsankotlin/collections/builders/ListBuilder$Itr;->list:Lccsankotlin/collections/builders/ListBuilder;

    invoke-static {v1}, Lccsankotlin/collections/builders/ListBuilder;->access$getLength$p(Lccsankotlin/collections/builders/ListBuilder;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 281
    iget v0, p0, Lccsankotlin/collections/builders/ListBuilder$Itr;->index:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 294
    iget v0, p0, Lccsankotlin/collections/builders/ListBuilder$Itr;->index:I

    iget-object v1, p0, Lccsankotlin/collections/builders/ListBuilder$Itr;->list:Lccsankotlin/collections/builders/ListBuilder;

    invoke-static {v1}, Lccsankotlin/collections/builders/ListBuilder;->access$getLength$p(Lccsankotlin/collections/builders/ListBuilder;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 295
    iget v0, p0, Lccsankotlin/collections/builders/ListBuilder$Itr;->index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lccsankotlin/collections/builders/ListBuilder$Itr;->index:I

    iput v0, p0, Lccsankotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    .line 296
    iget-object v0, p0, Lccsankotlin/collections/builders/ListBuilder$Itr;->list:Lccsankotlin/collections/builders/ListBuilder;

    invoke-static {v0}, Lccsankotlin/collections/builders/ListBuilder;->access$getArray$p(Lccsankotlin/collections/builders/ListBuilder;)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lccsankotlin/collections/builders/ListBuilder$Itr;->list:Lccsankotlin/collections/builders/ListBuilder;

    invoke-static {v1}, Lccsankotlin/collections/builders/ListBuilder;->access$getOffset$p(Lccsankotlin/collections/builders/ListBuilder;)I

    move-result v1

    iget v2, p0, Lccsankotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    add-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0

    .line 294
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public nextIndex()I
    .locals 1

    .line 285
    iget v0, p0, Lccsankotlin/collections/builders/ListBuilder$Itr;->index:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 288
    iget v0, p0, Lccsankotlin/collections/builders/ListBuilder$Itr;->index:I

    if-lez v0, :cond_0

    .line 289
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lccsankotlin/collections/builders/ListBuilder$Itr;->index:I

    iput v0, p0, Lccsankotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    .line 290
    iget-object v0, p0, Lccsankotlin/collections/builders/ListBuilder$Itr;->list:Lccsankotlin/collections/builders/ListBuilder;

    invoke-static {v0}, Lccsankotlin/collections/builders/ListBuilder;->access$getArray$p(Lccsankotlin/collections/builders/ListBuilder;)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lccsankotlin/collections/builders/ListBuilder$Itr;->list:Lccsankotlin/collections/builders/ListBuilder;

    invoke-static {v1}, Lccsankotlin/collections/builders/ListBuilder;->access$getOffset$p(Lccsankotlin/collections/builders/ListBuilder;)I

    move-result v1

    iget v2, p0, Lccsankotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    add-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0

    .line 288
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    .line 284
    iget v0, p0, Lccsankotlin/collections/builders/ListBuilder$Itr;->index:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 3

    .line 310
    iget v0, p0, Lccsankotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 311
    iget-object v2, p0, Lccsankotlin/collections/builders/ListBuilder$Itr;->list:Lccsankotlin/collections/builders/ListBuilder;

    invoke-virtual {v2, v0}, Lccsankotlin/collections/builders/ListBuilder;->remove(I)Ljava/lang/Object;

    .line 312
    iget v0, p0, Lccsankotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    iput v0, p0, Lccsankotlin/collections/builders/ListBuilder$Itr;->index:I

    .line 313
    iput v1, p0, Lccsankotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    .line 314
    return-void

    .line 371
    :cond_1
    const/4 v0, 0x0

    .line 310
    .local v0, "$i$a$-check-ListBuilder$Itr$remove$1":I
    nop

    .end local v0    # "$i$a$-check-ListBuilder$Itr$remove$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call next() or previous() before removing element from the iterator."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 300
    iget v0, p0, Lccsankotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 301
    iget-object v1, p0, Lccsankotlin/collections/builders/ListBuilder$Itr;->list:Lccsankotlin/collections/builders/ListBuilder;

    invoke-virtual {v1, v0, p1}, Lccsankotlin/collections/builders/ListBuilder;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 302
    return-void

    .line 371
    :cond_1
    const/4 v0, 0x0

    .line 300
    .local v0, "$i$a$-check-ListBuilder$Itr$set$1":I
    nop

    .end local v0    # "$i$a$-check-ListBuilder$Itr$set$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call next() or previous() before replacing element from the iterator."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
