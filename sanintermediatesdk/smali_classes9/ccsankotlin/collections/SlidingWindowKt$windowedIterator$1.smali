.class final Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;
.super Lccsankotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "SlidingWindow.kt"

# interfaces
.implements Lccsankotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsankotlin/collections/SlidingWindowKt;->windowedIterator(Ljava/util/Iterator;IIZZ)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsankotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lccsankotlin/jvm/functions/Function2<",
        "Lccsankotlin/sequences/SequenceScope<",
        "-",
        "Ljava/util/List<",
        "+TT;>;>;",
        "Lccsankotlin/coroutines/Continuation<",
        "-",
        "Lccsankotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00040\u0003H\u008a@\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lccsankotlin/sequences/SequenceScope;",
        "",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation

.annotation runtime Lccsankotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlin.collections.SlidingWindowKt$windowedIterator$1"
    f = "SlidingWindow.kt"
    i = {}
    l = {
        0x22,
        0x28,
        0x31,
        0x37,
        0x3a
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $iterator:Ljava/util/Iterator;

.field final synthetic $partialWindows:Z

.field final synthetic $reuseBuffer:Z

.field final synthetic $size:I

.field final synthetic $step:I

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(IILjava/util/Iterator;ZZLccsankotlin/coroutines/Continuation;)V
    .locals 0

    iput p1, p0, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    iput p2, p0, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    iput-object p3, p0, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->$iterator:Ljava/util/Iterator;

    iput-boolean p4, p0, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    iput-boolean p5, p0, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->$partialWindows:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lccsankotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILccsankotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lccsankotlin/coroutines/Continuation;)Lccsankotlin/coroutines/Continuation;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lccsankotlin/coroutines/Continuation<",
            "*>;)",
            "Lccsankotlin/coroutines/Continuation<",
            "Lccsankotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;

    iget v2, p0, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    iget v3, p0, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    iget-object v4, p0, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->$iterator:Ljava/util/Iterator;

    iget-boolean v5, p0, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    iget-boolean v6, p0, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->$partialWindows:Z

    move-object v1, v0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;-><init>(IILjava/util/Iterator;ZZLccsankotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lccsankotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->create(Ljava/lang/Object;Lccsankotlin/coroutines/Continuation;)Lccsankotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;

    sget-object p2, Lccsankotlin/Unit;->INSTANCE:Lccsankotlin/Unit;

    invoke-virtual {p1, p2}, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lccsankotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 24
    iget v1, p0, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    .line 61
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lccsankotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_c

    .end local v0    # "this":Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v1, p0

    .local v1, "this":Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v4, v1, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lccsankotlin/collections/RingBuffer;

    iget-object v5, v1, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lccsankotlin/sequences/SequenceScope;

    invoke-static {p1}, Lccsankotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_b

    .end local v1    # "this":Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    move-object v1, p0

    .restart local v1    # "this":Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v4, v1, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    iget-object v5, v1, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lccsankotlin/collections/RingBuffer;

    iget-object v6, v1, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lccsankotlin/sequences/SequenceScope;

    invoke-static {p1}, Lccsankotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    .end local v1    # "this":Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_3
    move-object v0, p0

    .restart local v0    # "this":Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    invoke-static {p1}, Lccsankotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    .end local v0    # "this":Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_4
    move-object v1, p0

    .restart local v1    # "this":Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget v4, v1, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    iget-object v5, v1, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    check-cast v5, Ljava/util/Iterator;

    iget-object v6, v1, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    iget-object v7, v1, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lccsankotlin/sequences/SequenceScope;

    invoke-static {p1}, Lccsankotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v1    # "this":Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_5
    invoke-static {p1}, Lccsankotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .restart local v1    # "this":Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v4, v1, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lccsankotlin/sequences/SequenceScope;

    .line 25
    .local v4, "$this$iterator":Lccsankotlin/sequences/SequenceScope;
    iget v5, v1, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    const/16 v6, 0x400

    invoke-static {v5, v6}, Lccsankotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v5

    .line 26
    .local v5, "bufferInitialCapacity":I
    iget v6, v1, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    iget v7, v1, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    sub-int/2addr v6, v7

    .line 27
    .local v6, "gap":I
    if-ltz v6, :cond_7

    .line 28
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, v7

    .line 29
    .local v5, "buffer":Ljava/util/ArrayList;
    const/4 v7, 0x0

    .line 30
    .local v7, "skip":I
    iget-object v8, v1, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->$iterator:Ljava/util/Iterator;

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    move-object v12, v8

    move-object v8, v4

    move v4, v6

    move-object v6, v5

    move-object v5, v12

    .end local v1    # "this":Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;
    .end local v4    # "$this$iterator":Lccsankotlin/sequences/SequenceScope;
    .end local v5    # "buffer":Ljava/util/ArrayList;
    .end local v6    # "gap":I
    .end local v7    # "skip":I
    .restart local v0    # "this":Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 31
    .local v9, "e":Ljava/lang/Object;
    if-lez v7, :cond_0

    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 32
    .end local v9    # "e":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget v10, v0, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    if-ne v9, v10, :cond_3

    .line 34
    iput-object v8, v0, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    iput v2, v0, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    invoke-virtual {v8, v6, v0}, Lccsankotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lccsankotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_1

    .line 24
    return-object v1

    .line 34
    :cond_1
    move-object v7, v8

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    .line 35
    .end local v0    # "this":Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;
    .restart local v1    # "this":Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;
    :goto_1
    iget-boolean v8, v1, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    if-eqz v8, :cond_2

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    iget v8, v1, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    :goto_2
    move-object v8, v7

    move v7, v4

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    .line 30
    .end local v1    # "this":Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;
    .restart local v0    # "this":Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;
    :cond_3
    :goto_3
    goto :goto_0

    .line 39
    :cond_4
    move-object v4, v6

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v2, v4

    if-eqz v2, :cond_12

    .line 40
    iget-boolean v2, v0, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->$partialWindows:Z

    if-nez v2, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v4, v0, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    if-ne v2, v4, :cond_6

    :cond_5
    iput-object v3, v0, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    const/4 v2, 0x2

    iput v2, v0, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    invoke-virtual {v8, v6, v0}, Lccsankotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lccsankotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6

    .line 24
    return-object v1

    .line 40
    :cond_6
    :goto_4
    goto/16 :goto_d

    .line 43
    .end local v0    # "this":Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;
    .restart local v1    # "this":Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;
    :cond_7
    new-instance v6, Lccsankotlin/collections/RingBuffer;

    invoke-direct {v6, v5}, Lccsankotlin/collections/RingBuffer;-><init>(I)V

    move-object v5, v6

    .line 44
    .local v5, "buffer":Lccsankotlin/collections/RingBuffer;
    iget-object v6, v1, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->$iterator:Ljava/util/Iterator;

    move-object v11, v6

    move-object v6, v4

    move-object v4, v11

    .end local v5    # "buffer":Lccsankotlin/collections/RingBuffer;
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 45
    .local v7, "e":Ljava/lang/Object;
    invoke-virtual {v5, v7}, Lccsankotlin/collections/RingBuffer;->add(Ljava/lang/Object;)V

    .line 46
    .end local v7    # "e":Ljava/lang/Object;
    invoke-virtual {v5}, Lccsankotlin/collections/RingBuffer;->isFull()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 47
    invoke-virtual {v5}, Lccsankotlin/collections/RingBuffer;->size()I

    move-result v7

    iget v8, v1, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    if-ge v7, v8, :cond_8

    invoke-virtual {v5, v8}, Lccsankotlin/collections/RingBuffer;->expanded(I)Lccsankotlin/collections/RingBuffer;

    move-result-object v5

    goto :goto_8

    .line 49
    :cond_8
    iget-boolean v7, v1, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    if-eqz v7, :cond_9

    move-object v7, v5

    check-cast v7, Ljava/util/List;

    goto :goto_6

    :cond_9
    new-instance v7, Ljava/util/ArrayList;

    move-object v8, v5

    check-cast v8, Ljava/util/Collection;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v7, Ljava/util/List;

    :goto_6
    iput-object v6, v1, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    iput-object v5, v1, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    iput-object v4, v1, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    const/4 v8, 0x3

    iput v8, v1, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    invoke-virtual {v6, v7, v1}, Lccsankotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lccsankotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_a

    .line 24
    return-object v0

    .line 50
    :cond_a
    :goto_7
    iget v7, v1, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    invoke-virtual {v5, v7}, Lccsankotlin/collections/RingBuffer;->removeFirst(I)V

    .line 44
    :cond_b
    :goto_8
    goto :goto_5

    .line 53
    :cond_c
    iget-boolean v4, v1, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->$partialWindows:Z

    if-eqz v4, :cond_11

    move-object v4, v5

    move-object v5, v6

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    .line 54
    .end local v1    # "this":Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;
    .restart local v0    # "this":Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;
    :goto_9
    invoke-virtual {v4}, Lccsankotlin/collections/RingBuffer;->size()I

    move-result v6

    iget v7, v0, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    if-le v6, v7, :cond_f

    .line 55
    iget-boolean v6, v0, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    if-eqz v6, :cond_d

    move-object v6, v4

    check-cast v6, Ljava/util/List;

    goto :goto_a

    :cond_d
    new-instance v6, Ljava/util/ArrayList;

    move-object v7, v4

    check-cast v7, Ljava/util/Collection;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v6, Ljava/util/List;

    :goto_a
    iput-object v5, v0, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    const/4 v7, 0x4

    iput v7, v0, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    invoke-virtual {v5, v6, v0}, Lccsankotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lccsankotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_e

    .line 24
    return-object v1

    .line 56
    :cond_e
    :goto_b
    iget v6, v0, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    invoke-virtual {v4, v6}, Lccsankotlin/collections/RingBuffer;->removeFirst(I)V

    .line 54
    goto :goto_9

    .line 58
    :cond_f
    move-object v6, v4

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/2addr v2, v6

    if-eqz v2, :cond_12

    iput-object v3, v0, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    const/4 v2, 0x5

    iput v2, v0, Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    invoke-virtual {v5, v4, v0}, Lccsankotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lccsankotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_10

    .line 24
    return-object v1

    .line 60
    :cond_10
    :goto_c
    goto :goto_d

    .line 53
    .end local v0    # "this":Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;
    .restart local v1    # "this":Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;
    :cond_11
    move-object v0, v1

    .line 61
    .end local v1    # "this":Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;
    .restart local v0    # "this":Lccsankotlin/collections/SlidingWindowKt$windowedIterator$1;
    :cond_12
    :goto_d
    sget-object v1, Lccsankotlin/Unit;->INSTANCE:Lccsankotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
