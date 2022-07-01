.class final Lccsankotlin/sequences/SequencesKt__SequencesKt$shuffled$1;
.super Lccsankotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "Sequences.kt"

# interfaces
.implements Lccsankotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsankotlin/sequences/SequencesKt__SequencesKt;->shuffled(Lccsankotlin/sequences/Sequence;Lccsankotlin/random/Random;)Lccsankotlin/sequences/Sequence;
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
        "-TT;>;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0003H\u008a@\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
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
    c = "kotlin.sequences.SequencesKt__SequencesKt$shuffled$1"
    f = "Sequences.kt"
    i = {}
    l = {
        0x91
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $random:Lccsankotlin/random/Random;

.field final synthetic $this_shuffled:Lccsankotlin/sequences/Sequence;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lccsankotlin/sequences/Sequence;Lccsankotlin/random/Random;Lccsankotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lccsankotlin/sequences/SequencesKt__SequencesKt$shuffled$1;->$this_shuffled:Lccsankotlin/sequences/Sequence;

    iput-object p2, p0, Lccsankotlin/sequences/SequencesKt__SequencesKt$shuffled$1;->$random:Lccsankotlin/random/Random;

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

    new-instance v0, Lccsankotlin/sequences/SequencesKt__SequencesKt$shuffled$1;

    iget-object v1, p0, Lccsankotlin/sequences/SequencesKt__SequencesKt$shuffled$1;->$this_shuffled:Lccsankotlin/sequences/Sequence;

    iget-object v2, p0, Lccsankotlin/sequences/SequencesKt__SequencesKt$shuffled$1;->$random:Lccsankotlin/random/Random;

    invoke-direct {v0, v1, v2, p2}, Lccsankotlin/sequences/SequencesKt__SequencesKt$shuffled$1;-><init>(Lccsankotlin/sequences/Sequence;Lccsankotlin/random/Random;Lccsankotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lccsankotlin/sequences/SequencesKt__SequencesKt$shuffled$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lccsankotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lccsankotlin/sequences/SequencesKt__SequencesKt$shuffled$1;->create(Ljava/lang/Object;Lccsankotlin/coroutines/Continuation;)Lccsankotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lccsankotlin/sequences/SequencesKt__SequencesKt$shuffled$1;

    sget-object p2, Lccsankotlin/Unit;->INSTANCE:Lccsankotlin/Unit;

    invoke-virtual {p1, p2}, Lccsankotlin/sequences/SequencesKt__SequencesKt$shuffled$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lccsankotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 139
    iget v1, p0, Lccsankotlin/sequences/SequencesKt__SequencesKt$shuffled$1;->label:I

    packed-switch v1, :pswitch_data_0

    .line 147
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 139
    :pswitch_0
    move-object v1, p0

    .local v1, "this":Lccsankotlin/sequences/SequencesKt__SequencesKt$shuffled$1;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v2, v1, Lccsankotlin/sequences/SequencesKt__SequencesKt$shuffled$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v3, v1, Lccsankotlin/sequences/SequencesKt__SequencesKt$shuffled$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lccsankotlin/sequences/SequenceScope;

    invoke-static {p1}, Lccsankotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v1    # "this":Lccsankotlin/sequences/SequencesKt__SequencesKt$shuffled$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lccsankotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .restart local v1    # "this":Lccsankotlin/sequences/SequencesKt__SequencesKt$shuffled$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lccsankotlin/sequences/SequencesKt__SequencesKt$shuffled$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lccsankotlin/sequences/SequenceScope;

    .line 140
    .local v2, "$this$sequence":Lccsankotlin/sequences/SequenceScope;
    iget-object v3, v1, Lccsankotlin/sequences/SequencesKt__SequencesKt$shuffled$1;->$this_shuffled:Lccsankotlin/sequences/Sequence;

    invoke-static {v3}, Lccsankotlin/sequences/SequencesKt;->toMutableList(Lccsankotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v3

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    .line 141
    .local v2, "buffer":Ljava/util/List;
    .local v3, "$this$sequence":Lccsankotlin/sequences/SequenceScope;
    :goto_0
    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    .end local v2    # "buffer":Ljava/util/List;
    .end local v3    # "$this$sequence":Lccsankotlin/sequences/SequenceScope;
    const/4 v5, 0x1

    xor-int/2addr v4, v5

    if-eqz v4, :cond_2

    .line 142
    iget-object v4, v1, Lccsankotlin/sequences/SequencesKt__SequencesKt$shuffled$1;->$random:Lccsankotlin/random/Random;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Lccsankotlin/random/Random;->nextInt(I)I

    move-result v4

    .line 143
    .local v4, "j":I
    invoke-static {v2}, Lccsankotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    .line 144
    .local v6, "last":Ljava/lang/Object;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_0

    invoke-interface {v2, v4, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    nop

    .end local v4    # "j":I
    .end local v6    # "last":Ljava/lang/Object;
    :cond_0
    move-object v4, v6

    .line 145
    .local v4, "value":Ljava/lang/Object;
    iput-object v3, v1, Lccsankotlin/sequences/SequencesKt__SequencesKt$shuffled$1;->L$0:Ljava/lang/Object;

    iput-object v2, v1, Lccsankotlin/sequences/SequencesKt__SequencesKt$shuffled$1;->L$1:Ljava/lang/Object;

    iput v5, v1, Lccsankotlin/sequences/SequencesKt__SequencesKt$shuffled$1;->label:I

    invoke-virtual {v3, v4, v1}, Lccsankotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lccsankotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "value":Ljava/lang/Object;
    if-ne v4, v0, :cond_1

    .line 139
    return-object v0

    .line 141
    :cond_1
    :goto_1
    nop

    .restart local v2    # "buffer":Ljava/util/List;
    .restart local v3    # "$this$sequence":Lccsankotlin/sequences/SequenceScope;
    goto :goto_0

    .line 147
    .end local v2    # "buffer":Ljava/util/List;
    .end local v3    # "$this$sequence":Lccsankotlin/sequences/SequenceScope;
    :cond_2
    sget-object v0, Lccsankotlin/Unit;->INSTANCE:Lccsankotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
