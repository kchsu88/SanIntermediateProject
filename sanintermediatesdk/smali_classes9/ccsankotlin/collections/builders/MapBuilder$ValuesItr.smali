.class public final Lccsankotlin/collections/builders/MapBuilder$ValuesItr;
.super Lccsankotlin/collections/builders/MapBuilder$Itr;
.source "MapBuilder.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lccsankotlin/jvm/internal/markers/KMutableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsankotlin/collections/builders/MapBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ValuesItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsankotlin/collections/builders/MapBuilder$Itr<",
        "TK;TV;>;",
        "Ljava/util/Iterator<",
        "TV;>;",
        "Lccsankotlin/jvm/internal/markers/KMutableIterator;"
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000*\u0004\u0008\u0002\u0010\u0001*\u0004\u0008\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00032\u0008\u0012\u0004\u0012\u0002H\u00020\u0004B\u0019\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0006\u00a2\u0006\u0002\u0010\u0007J\u000e\u0010\u0008\u001a\u00028\u0003H\u0096\u0002\u00a2\u0006\u0002\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lccsankotlin/collections/builders/MapBuilder$ValuesItr;",
        "K",
        "V",
        "Lccsankotlin/collections/builders/MapBuilder$Itr;",
        "",
        "map",
        "Lccsankotlin/collections/builders/MapBuilder;",
        "(Lccsankotlin/collections/builders/MapBuilder;)V",
        "next",
        "()Ljava/lang/Object;",
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

    .line 480
    invoke-direct {p0, p1}, Lccsankotlin/collections/builders/MapBuilder$Itr;-><init>(Lccsankotlin/collections/builders/MapBuilder;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 482
    invoke-virtual {p0}, Lccsankotlin/collections/builders/MapBuilder$ValuesItr;->getIndex$kotlin_stdlib()I

    move-result v0

    invoke-virtual {p0}, Lccsankotlin/collections/builders/MapBuilder$ValuesItr;->getMap$kotlin_stdlib()Lccsankotlin/collections/builders/MapBuilder;

    move-result-object v1

    invoke-static {v1}, Lccsankotlin/collections/builders/MapBuilder;->access$getLength$p(Lccsankotlin/collections/builders/MapBuilder;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 483
    invoke-virtual {p0}, Lccsankotlin/collections/builders/MapBuilder$ValuesItr;->getIndex$kotlin_stdlib()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lccsankotlin/collections/builders/MapBuilder$ValuesItr;->setIndex$kotlin_stdlib(I)V

    invoke-virtual {p0, v0}, Lccsankotlin/collections/builders/MapBuilder$ValuesItr;->setLastIndex$kotlin_stdlib(I)V

    .line 484
    invoke-virtual {p0}, Lccsankotlin/collections/builders/MapBuilder$ValuesItr;->getMap$kotlin_stdlib()Lccsankotlin/collections/builders/MapBuilder;

    move-result-object v0

    invoke-static {v0}, Lccsankotlin/collections/builders/MapBuilder;->access$getValuesArray$p(Lccsankotlin/collections/builders/MapBuilder;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lccsankotlin/collections/builders/MapBuilder$ValuesItr;->getLastIndex$kotlin_stdlib()I

    move-result v1

    aget-object v0, v0, v1

    .line 485
    .local v0, "result":Ljava/lang/Object;
    invoke-virtual {p0}, Lccsankotlin/collections/builders/MapBuilder$ValuesItr;->initNext$kotlin_stdlib()V

    .line 486
    return-object v0

    .line 482
    .end local v0    # "result":Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
