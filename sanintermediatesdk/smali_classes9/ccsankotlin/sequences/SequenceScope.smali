.class public abstract Lccsankotlin/sequences/SequenceScope;
.super Ljava/lang/Object;
.source "SequenceBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u001c\n\u0002\u0008\u0002\n\u0002\u0010(\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\'\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u00020\u0002B\u0007\u0008\u0000\u00a2\u0006\u0002\u0010\u0003J\u0019\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u0000H\u00a6@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0007J\u001f\u0010\u0008\u001a\u00020\u00052\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00000\nH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000bJ\u001f\u0010\u0008\u001a\u00020\u00052\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\rH\u00a6@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000eJ\u001f\u0010\u0008\u001a\u00020\u00052\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0010H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0011\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0012"
    }
    d2 = {
        "Lccsankotlin/sequences/SequenceScope;",
        "T",
        "",
        "()V",
        "yield",
        "",
        "value",
        "(Ljava/lang/Object;Lccsankotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "yieldAll",
        "elements",
        "",
        "(Ljava/lang/Iterable;Lccsankotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "iterator",
        "",
        "(Ljava/util/Iterator;Lccsankotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "sequence",
        "Lccsankotlin/sequences/Sequence;",
        "(Lccsankotlin/sequences/Sequence;Lccsankotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract yield(Ljava/lang/Object;Lccsankotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lccsankotlin/coroutines/Continuation<",
            "-",
            "Lccsankotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public final yieldAll(Ljava/lang/Iterable;Lccsankotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "elements"    # Ljava/lang/Iterable;
    .param p2, "$completion"    # Lccsankotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Lccsankotlin/coroutines/Continuation<",
            "-",
            "Lccsankotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 88
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lccsankotlin/Unit;->INSTANCE:Lccsankotlin/Unit;

    return-object v0

    .line 89
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lccsankotlin/sequences/SequenceScope;->yieldAll(Ljava/util/Iterator;Lccsankotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lccsankotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lccsankotlin/Unit;->INSTANCE:Lccsankotlin/Unit;

    return-object v0
.end method

.method public abstract yieldAll(Ljava/util/Iterator;Lccsankotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TT;>;",
            "Lccsankotlin/coroutines/Continuation<",
            "-",
            "Lccsankotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public final yieldAll(Lccsankotlin/sequences/Sequence;Lccsankotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "sequence"    # Lccsankotlin/sequences/Sequence;
    .param p2, "$completion"    # Lccsankotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsankotlin/sequences/Sequence<",
            "+TT;>;",
            "Lccsankotlin/coroutines/Continuation<",
            "-",
            "Lccsankotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 100
    invoke-interface {p1}, Lccsankotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lccsankotlin/sequences/SequenceScope;->yieldAll(Ljava/util/Iterator;Lccsankotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lccsankotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lccsankotlin/Unit;->INSTANCE:Lccsankotlin/Unit;

    return-object v0
.end method
