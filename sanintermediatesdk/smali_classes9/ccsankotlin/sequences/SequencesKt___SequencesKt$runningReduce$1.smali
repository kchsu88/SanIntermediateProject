.class final Lccsankotlin/sequences/SequencesKt___SequencesKt$runningReduce$1;
.super Lccsankotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "_Sequences.kt"

# interfaces
.implements Lccsankotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsankotlin/sequences/SequencesKt___SequencesKt;->runningReduce(Lccsankotlin/sequences/Sequence;Lccsankotlin/jvm/functions/Function2;)Lccsankotlin/sequences/Sequence;
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
        "-TS;>;",
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
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0008\u0008\u0001\u0010\u0003*\u0002H\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0004H\u008a@\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "S",
        "T",
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
    c = "kotlin.sequences.SequencesKt___SequencesKt$runningReduce$1"
    f = "_Sequences.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x1,
        0x1
    }
    l = {
        0x87d,
        0x880
    }
    m = "invokeSuspend"
    n = {
        "$this$sequence",
        "iterator",
        "accumulator",
        "$this$sequence",
        "iterator"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $operation:Lccsankotlin/jvm/functions/Function2;

.field final synthetic $this_runningReduce:Lccsankotlin/sequences/Sequence;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lccsankotlin/sequences/Sequence;Lccsankotlin/jvm/functions/Function2;Lccsankotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningReduce$1;->$this_runningReduce:Lccsankotlin/sequences/Sequence;

    iput-object p2, p0, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningReduce$1;->$operation:Lccsankotlin/jvm/functions/Function2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lccsankotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILccsankotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lccsankotlin/coroutines/Continuation;)Lccsankotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningReduce$1;

    iget-object v1, p0, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningReduce$1;->$this_runningReduce:Lccsankotlin/sequences/Sequence;

    iget-object v2, p0, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningReduce$1;->$operation:Lccsankotlin/jvm/functions/Function2;

    invoke-direct {v0, v1, v2, p2}, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningReduce$1;-><init>(Lccsankotlin/sequences/Sequence;Lccsankotlin/jvm/functions/Function2;Lccsankotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningReduce$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lccsankotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningReduce$1;->create(Ljava/lang/Object;Lccsankotlin/coroutines/Continuation;)Lccsankotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningReduce$1;

    sget-object p2, Lccsankotlin/Unit;->INSTANCE:Lccsankotlin/Unit;

    invoke-virtual {p1, p2}, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningReduce$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lccsankotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 2169
    iget v1, p0, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningReduce$1;->label:I

    packed-switch v1, :pswitch_data_0

    .line 2179
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2169
    :pswitch_0
    move-object v1, p0

    .local v1, "this":Lccsankotlin/sequences/SequencesKt___SequencesKt$runningReduce$1;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v2, v1, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningReduce$1;->L$2:Ljava/lang/Object;

    iget-object v3, v1, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningReduce$1;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/util/Iterator;

    .local v3, "iterator":Ljava/util/Iterator;
    iget-object v4, v1, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningReduce$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lccsankotlin/sequences/SequenceScope;

    .local v4, "$this$sequence":Lccsankotlin/sequences/SequenceScope;
    invoke-static {p1}, Lccsankotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .end local v1    # "this":Lccsankotlin/sequences/SequencesKt___SequencesKt$runningReduce$1;
    .end local v3    # "iterator":Ljava/util/Iterator;
    .end local v4    # "$this$sequence":Lccsankotlin/sequences/SequenceScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v1, p0

    .restart local v1    # "this":Lccsankotlin/sequences/SequencesKt___SequencesKt$runningReduce$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningReduce$1;->L$2:Ljava/lang/Object;

    .local v2, "accumulator":Ljava/lang/Object;
    iget-object v3, v1, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningReduce$1;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/util/Iterator;

    .restart local v3    # "iterator":Ljava/util/Iterator;
    iget-object v4, v1, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningReduce$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lccsankotlin/sequences/SequenceScope;

    .restart local v4    # "$this$sequence":Lccsankotlin/sequences/SequenceScope;
    invoke-static {p1}, Lccsankotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v1    # "this":Lccsankotlin/sequences/SequencesKt___SequencesKt$runningReduce$1;
    .end local v2    # "accumulator":Ljava/lang/Object;
    .end local v3    # "iterator":Ljava/util/Iterator;
    .end local v4    # "$this$sequence":Lccsankotlin/sequences/SequenceScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lccsankotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .restart local v1    # "this":Lccsankotlin/sequences/SequencesKt___SequencesKt$runningReduce$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningReduce$1;->L$0:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Lccsankotlin/sequences/SequenceScope;

    .line 2170
    .restart local v4    # "$this$sequence":Lccsankotlin/sequences/SequenceScope;
    iget-object v2, v1, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningReduce$1;->$this_runningReduce:Lccsankotlin/sequences/Sequence;

    invoke-interface {v2}, Lccsankotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2171
    .restart local v3    # "iterator":Ljava/util/Iterator;
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2172
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2173
    .restart local v2    # "accumulator":Ljava/lang/Object;
    iput-object v4, v1, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningReduce$1;->L$0:Ljava/lang/Object;

    iput-object v3, v1, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningReduce$1;->L$1:Ljava/lang/Object;

    iput-object v2, v1, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningReduce$1;->L$2:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, v1, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningReduce$1;->label:I

    invoke-virtual {v4, v2, v1}, Lccsankotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lccsankotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_0

    .line 2169
    return-object v0

    .line 2174
    :cond_0
    :goto_0
    nop

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2175
    iget-object v5, v1, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningReduce$1;->$operation:Lccsankotlin/jvm/functions/Function2;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Lccsankotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 2176
    .end local v2    # "accumulator":Ljava/lang/Object;
    iput-object v4, v1, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningReduce$1;->L$0:Ljava/lang/Object;

    iput-object v3, v1, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningReduce$1;->L$1:Ljava/lang/Object;

    iput-object v5, v1, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningReduce$1;->L$2:Ljava/lang/Object;

    const/4 v2, 0x2

    iput v2, v1, Lccsankotlin/sequences/SequencesKt___SequencesKt$runningReduce$1;->label:I

    invoke-virtual {v4, v5, v1}, Lccsankotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lccsankotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_1

    .line 2169
    return-object v0

    .line 2176
    :cond_1
    move-object v2, v5

    .line 2174
    :goto_2
    nop

    .restart local v2    # "accumulator":Ljava/lang/Object;
    goto :goto_1

    .line 2179
    .end local v2    # "accumulator":Ljava/lang/Object;
    .end local v3    # "iterator":Ljava/util/Iterator;
    .end local v4    # "$this$sequence":Lccsankotlin/sequences/SequenceScope;
    :cond_2
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
