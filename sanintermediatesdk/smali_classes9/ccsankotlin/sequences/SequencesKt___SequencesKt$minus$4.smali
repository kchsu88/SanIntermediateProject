.class public final Lccsankotlin/sequences/SequencesKt___SequencesKt$minus$4;
.super Ljava/lang/Object;
.source "_Sequences.kt"

# interfaces
.implements Lccsankotlin/sequences/Sequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsankotlin/sequences/SequencesKt___SequencesKt;->minus(Lccsankotlin/sequences/Sequence;Lccsankotlin/sequences/Sequence;)Lccsankotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsankotlin/sequences/Sequence<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u000f\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003H\u0096\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "kotlin/sequences/SequencesKt___SequencesKt$minus$4",
        "Lccsankotlin/sequences/Sequence;",
        "iterator",
        "",
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
.field final synthetic $elements:Lccsankotlin/sequences/Sequence;

.field final synthetic $this_minus:Lccsankotlin/sequences/Sequence;


# direct methods
.method constructor <init>(Lccsankotlin/sequences/Sequence;Lccsankotlin/sequences/Sequence;)V
    .locals 0
    .param p1, "$receiver"    # Lccsankotlin/sequences/Sequence;
    .param p2, "$captured_local_variable$1"    # Lccsankotlin/sequences/Sequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsankotlin/sequences/Sequence<",
            "+TT;>;",
            "Lccsankotlin/sequences/Sequence;",
            ")V"
        }
    .end annotation

    .line 2493
    iput-object p1, p0, Lccsankotlin/sequences/SequencesKt___SequencesKt$minus$4;->$this_minus:Lccsankotlin/sequences/Sequence;

    iput-object p2, p0, Lccsankotlin/sequences/SequencesKt___SequencesKt$minus$4;->$elements:Lccsankotlin/sequences/Sequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 2495
    iget-object v0, p0, Lccsankotlin/sequences/SequencesKt___SequencesKt$minus$4;->$elements:Lccsankotlin/sequences/Sequence;

    invoke-static {v0}, Lccsankotlin/sequences/SequencesKt;->toHashSet(Lccsankotlin/sequences/Sequence;)Ljava/util/HashSet;

    move-result-object v0

    .line 2496
    .local v0, "other":Ljava/util/HashSet;
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2497
    iget-object v1, p0, Lccsankotlin/sequences/SequencesKt___SequencesKt$minus$4;->$this_minus:Lccsankotlin/sequences/Sequence;

    invoke-interface {v1}, Lccsankotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1

    .line 2499
    :cond_0
    iget-object v1, p0, Lccsankotlin/sequences/SequencesKt___SequencesKt$minus$4;->$this_minus:Lccsankotlin/sequences/Sequence;

    new-instance v2, Lccsankotlin/sequences/SequencesKt___SequencesKt$minus$4$iterator$1;

    invoke-direct {v2, v0}, Lccsankotlin/sequences/SequencesKt___SequencesKt$minus$4$iterator$1;-><init>(Ljava/util/HashSet;)V

    check-cast v2, Lccsankotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lccsankotlin/sequences/SequencesKt;->filterNot(Lccsankotlin/sequences/Sequence;Lccsankotlin/jvm/functions/Function1;)Lccsankotlin/sequences/Sequence;

    move-result-object v1

    invoke-interface {v1}, Lccsankotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method
