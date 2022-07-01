.class final Lccsankotlin/sequences/SequencesKt___SequencesKt$runningFoldIndexed$1;
.super Lccsankotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "_Sequences.kt"

# interfaces
.implements Lccsankotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsankotlin/sequences/SequencesKt___SequencesKt;->runningFoldIndexed(Lccsankotlin/sequences/Sequence;Ljava/lang/Object;Lccsankotlin/jvm/functions/Function3;)Lccsankotlin/sequences/Sequence;
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
        "-TR;>;",
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
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003*\u0008\u0012\u0004\u0012\u0002H\u00030\u0004H\u008a@\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "R",
        "Lccsankotlin/sequences/SequenceScope;",
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
    c = "kotlin.sequences.SequencesKt___SequencesKt$runningFoldIndexed$1"
    f = "_Sequences.kt"
    i = {
        0x0
    }
    l = {
        0x85f,
        0x864
    }
    m = "invokeSuspend"
    n = {
        "$this$sequence"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $initial:Ljava/lang/Object;

.field final synthetic $operation:Lccsankotlin/jvm/functions/Function3;

.field final synthetic $this_runningFoldIndexed:Lccsankotlin/sequences/Sequence;

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lccsankotlin/sequences/Sequence;Ljava/lang/Object;Lccsankotlin/jvm/functions/Function3;Lccsankotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningFoldIndexed$1;->$this_runningFoldIndexed:Lccsankotlin/sequences/Sequence;

    iput-object p2, p0, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningFoldIndexed$1;->$initial:Ljava/lang/Object;

    iput-object p3, p0, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningFoldIndexed$1;->$operation:Lccsankotlin/jvm/functions/Function3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lccsankotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILccsankotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lccsankotlin/coroutines/Continuation;)Lccsankotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningFoldIndexed$1;

    iget-object v1, p0, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningFoldIndexed$1;->$this_runningFoldIndexed:Lccsankotlin/sequences/Sequence;

    iget-object v2, p0, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningFoldIndexed$1;->$initial:Ljava/lang/Object;

    iget-object v3, p0, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningFoldIndexed$1;->$operation:Lccsankotlin/jvm/functions/Function3;

    invoke-direct {v0, v1, v2, v3, p2}, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningFoldIndexed$1;-><init>(Lccsankotlin/sequences/Sequence;Ljava/lang/Object;Lccsankotlin/jvm/functions/Function3;Lccsankotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningFoldIndexed$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lccsankotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningFoldIndexed$1;->create(Ljava/lang/Object;Lccsankotlin/coroutines/Continuation;)Lccsankotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningFoldIndexed$1;

    sget-object p2, Lccsankotlin/Unit;->INSTANCE:Lccsankotlin/Unit;

    invoke-virtual {p1, p2}, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningFoldIndexed$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lccsankotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 2142
    iget v1, p0, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningFoldIndexed$1;->label:I

    packed-switch v1, :pswitch_data_0

    .line 2150
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2142
    :pswitch_0
    move-object v1, p0

    .local v1, "this":Lccsankotlin/sequences/SequencesKt___SequencesKt$runningFoldIndexed$1;
    .local p1, "$result":Ljava/lang/Object;
    iget v2, v1, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningFoldIndexed$1;->I$0:I

    iget-object v3, v1, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningFoldIndexed$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/util/Iterator;

    iget-object v4, v1, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningFoldIndexed$1;->L$1:Ljava/lang/Object;

    iget-object v5, v1, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningFoldIndexed$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lccsankotlin/sequences/SequenceScope;

    invoke-static {p1}, Lccsankotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .end local v1    # "this":Lccsankotlin/sequences/SequencesKt___SequencesKt$runningFoldIndexed$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v1, p0

    .restart local v1    # "this":Lccsankotlin/sequences/SequencesKt___SequencesKt$runningFoldIndexed$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningFoldIndexed$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lccsankotlin/sequences/SequenceScope;

    .local v2, "$this$sequence":Lccsankotlin/sequences/SequenceScope;
    invoke-static {p1}, Lccsankotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v1    # "this":Lccsankotlin/sequences/SequencesKt___SequencesKt$runningFoldIndexed$1;
    .end local v2    # "$this$sequence":Lccsankotlin/sequences/SequenceScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lccsankotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .restart local v1    # "this":Lccsankotlin/sequences/SequencesKt___SequencesKt$runningFoldIndexed$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningFoldIndexed$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lccsankotlin/sequences/SequenceScope;

    .line 2143
    .restart local v2    # "$this$sequence":Lccsankotlin/sequences/SequenceScope;
    iget-object v3, v1, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningFoldIndexed$1;->$initial:Ljava/lang/Object;

    iput-object v2, v1, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningFoldIndexed$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, v1, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningFoldIndexed$1;->label:I

    invoke-virtual {v2, v3, v1}, Lccsankotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lccsankotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_0

    .line 2142
    return-object v0

    .line 2144
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 2145
    .local v3, "index":I
    iget-object v4, v1, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningFoldIndexed$1;->$initial:Ljava/lang/Object;

    .line 2146
    .local v4, "accumulator":Ljava/lang/Object;
    iget-object v5, v1, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningFoldIndexed$1;->$this_runningFoldIndexed:Lccsankotlin/sequences/Sequence;

    invoke-interface {v5}, Lccsankotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v9, v5

    move-object v5, v2

    move v2, v3

    move-object v3, v9

    .end local v3    # "index":I
    .local v2, "index":I
    .local v5, "$this$sequence":Lccsankotlin/sequences/SequenceScope;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 2147
    .local v6, "element":Ljava/lang/Object;
    iget-object v7, v1, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningFoldIndexed$1;->$operation:Lccsankotlin/jvm/functions/Function3;

    add-int/lit8 v8, v2, 0x1

    .end local v2    # "index":I
    .local v8, "index":I
    if-gez v2, :cond_1

    invoke-static {}, Lccsankotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .end local v4    # "accumulator":Ljava/lang/Object;
    .end local v5    # "$this$sequence":Lccsankotlin/sequences/SequenceScope;
    .end local v6    # "element":Ljava/lang/Object;
    .end local v8    # "index":I
    :cond_1
    invoke-static {v2}, Lccsankotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v2, v4, v6}, Lccsankotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 2148
    iput-object v5, v1, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningFoldIndexed$1;->L$0:Ljava/lang/Object;

    iput-object v4, v1, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningFoldIndexed$1;->L$1:Ljava/lang/Object;

    iput-object v3, v1, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningFoldIndexed$1;->L$2:Ljava/lang/Object;

    iput v8, v1, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningFoldIndexed$1;->I$0:I

    const/4 v2, 0x2

    iput v2, v1, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningFoldIndexed$1;->label:I

    invoke-virtual {v5, v4, v1}, Lccsankotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lccsankotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_2

    .line 2142
    return-object v0

    .line 2148
    :cond_2
    move v2, v8

    .line 2146
    :goto_2
    nop

    .restart local v2    # "index":I
    .restart local v4    # "accumulator":Ljava/lang/Object;
    .restart local v5    # "$this$sequence":Lccsankotlin/sequences/SequenceScope;
    goto :goto_1

    .line 2150
    .end local v2    # "index":I
    .end local v4    # "accumulator":Ljava/lang/Object;
    .end local v5    # "$this$sequence":Lccsankotlin/sequences/SequenceScope;
    :cond_3
    sget-object v0, Lccsankotlin/Unit;->INSTANCE:Lccsankotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
