.class public Lccsankotlin/collections/builders/MapBuilder$Itr;
.super Ljava/lang/Object;
.source "MapBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsankotlin/collections/builders/MapBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMapBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MapBuilder.kt\nkotlin/collections/builders/MapBuilder$Itr\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,627:1\n1#2:628\n*E\n"
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0010\u0018\u0000*\u0004\u0008\u0002\u0010\u0001*\u0004\u0008\u0003\u0010\u00022\u00020\u0003B\u0019\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u0012\u001a\u00020\u0013J\r\u0010\u0014\u001a\u00020\u0015H\u0000\u00a2\u0006\u0002\u0008\u0016J\u0006\u0010\u0017\u001a\u00020\u0015R\u001a\u0010\u0007\u001a\u00020\u0008X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u00020\u0008X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\n\"\u0004\u0008\u000f\u0010\u000cR \u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0018"
    }
    d2 = {
        "Lccsankotlin/collections/builders/MapBuilder$Itr;",
        "K",
        "V",
        "",
        "map",
        "Lccsankotlin/collections/builders/MapBuilder;",
        "(Lccsankotlin/collections/builders/MapBuilder;)V",
        "index",
        "",
        "getIndex$kotlin_stdlib",
        "()I",
        "setIndex$kotlin_stdlib",
        "(I)V",
        "lastIndex",
        "getLastIndex$kotlin_stdlib",
        "setLastIndex$kotlin_stdlib",
        "getMap$kotlin_stdlib",
        "()Lccsankotlin/collections/builders/MapBuilder;",
        "hasNext",
        "",
        "initNext",
        "",
        "initNext$kotlin_stdlib",
        "remove",
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

.field private final map:Lccsankotlin/collections/builders/MapBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsankotlin/collections/builders/MapBuilder<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsankotlin/collections/builders/MapBuilder;)V
    .locals 1
    .param p1, "map"    # Lccsankotlin/collections/builders/MapBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsankotlin/collections/builders/MapBuilder<",
            "TK;TV;>;)V"
        }
    .end annotation

    const-string v0, "map"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsankotlin/collections/builders/MapBuilder$Itr;->map:Lccsankotlin/collections/builders/MapBuilder;

    .line 448
    const/4 v0, -0x1

    iput v0, p0, Lccsankotlin/collections/builders/MapBuilder$Itr;->lastIndex:I

    .line 450
    nop

    .line 451
    invoke-virtual {p0}, Lccsankotlin/collections/builders/MapBuilder$Itr;->initNext$kotlin_stdlib()V

    .line 452
    return-void
.end method


# virtual methods
.method public final getIndex$kotlin_stdlib()I
    .locals 1

    .line 447
    iget v0, p0, Lccsankotlin/collections/builders/MapBuilder$Itr;->index:I

    return v0
.end method

.method public final getLastIndex$kotlin_stdlib()I
    .locals 1

    .line 448
    iget v0, p0, Lccsankotlin/collections/builders/MapBuilder$Itr;->lastIndex:I

    return v0
.end method

.method public final getMap$kotlin_stdlib()Lccsankotlin/collections/builders/MapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsankotlin/collections/builders/MapBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lccsankotlin/collections/builders/MapBuilder$Itr;->map:Lccsankotlin/collections/builders/MapBuilder;

    return-object v0
.end method

.method public final hasNext()Z
    .locals 2

    .line 459
    iget v0, p0, Lccsankotlin/collections/builders/MapBuilder$Itr;->index:I

    iget-object v1, p0, Lccsankotlin/collections/builders/MapBuilder$Itr;->map:Lccsankotlin/collections/builders/MapBuilder;

    invoke-static {v1}, Lccsankotlin/collections/builders/MapBuilder;->access$getLength$p(Lccsankotlin/collections/builders/MapBuilder;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final initNext$kotlin_stdlib()V
    .locals 2

    .line 455
    :goto_0
    iget v0, p0, Lccsankotlin/collections/builders/MapBuilder$Itr;->index:I

    iget-object v1, p0, Lccsankotlin/collections/builders/MapBuilder$Itr;->map:Lccsankotlin/collections/builders/MapBuilder;

    invoke-static {v1}, Lccsankotlin/collections/builders/MapBuilder;->access$getLength$p(Lccsankotlin/collections/builders/MapBuilder;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lccsankotlin/collections/builders/MapBuilder$Itr;->map:Lccsankotlin/collections/builders/MapBuilder;

    invoke-static {v0}, Lccsankotlin/collections/builders/MapBuilder;->access$getPresenceArray$p(Lccsankotlin/collections/builders/MapBuilder;)[I

    move-result-object v0

    iget v1, p0, Lccsankotlin/collections/builders/MapBuilder$Itr;->index:I

    aget v0, v0, v1

    if-gez v0, :cond_0

    .line 456
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lccsankotlin/collections/builders/MapBuilder$Itr;->index:I

    .line 455
    goto :goto_0

    .line 457
    :cond_0
    return-void
.end method

.method public final remove()V
    .locals 3

    .line 462
    iget v0, p0, Lccsankotlin/collections/builders/MapBuilder$Itr;->lastIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 463
    iget-object v0, p0, Lccsankotlin/collections/builders/MapBuilder$Itr;->map:Lccsankotlin/collections/builders/MapBuilder;

    invoke-virtual {v0}, Lccsankotlin/collections/builders/MapBuilder;->checkIsMutable$kotlin_stdlib()V

    .line 464
    iget-object v0, p0, Lccsankotlin/collections/builders/MapBuilder$Itr;->map:Lccsankotlin/collections/builders/MapBuilder;

    iget v2, p0, Lccsankotlin/collections/builders/MapBuilder$Itr;->lastIndex:I

    invoke-static {v0, v2}, Lccsankotlin/collections/builders/MapBuilder;->access$removeKeyAt(Lccsankotlin/collections/builders/MapBuilder;I)V

    .line 465
    iput v1, p0, Lccsankotlin/collections/builders/MapBuilder$Itr;->lastIndex:I

    .line 466
    return-void

    .line 628
    :cond_1
    const/4 v0, 0x0

    .line 462
    .local v0, "$i$a$-check-MapBuilder$Itr$remove$1":I
    nop

    .end local v0    # "$i$a$-check-MapBuilder$Itr$remove$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call next() before removing element from the iterator."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final setIndex$kotlin_stdlib(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 447
    iput p1, p0, Lccsankotlin/collections/builders/MapBuilder$Itr;->index:I

    return-void
.end method

.method public final setLastIndex$kotlin_stdlib(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 448
    iput p1, p0, Lccsankotlin/collections/builders/MapBuilder$Itr;->lastIndex:I

    return-void
.end method
