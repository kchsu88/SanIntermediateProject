.class public final Lccsankotlin/sequences/SequencesKt___SequencesKt$groupingBy$1;
.super Ljava/lang/Object;
.source "_Sequences.kt"

# interfaces
.implements Lccsankotlin/collections/Grouping;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsankotlin/sequences/SequencesKt___SequencesKt;->groupingBy(Lccsankotlin/sequences/Sequence;Lccsankotlin/jvm/functions/Function1;)Lccsankotlin/collections/Grouping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsankotlin/collections/Grouping<",
        "TT;TK;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\n_Sequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt$groupingBy$1\n*L\n1#1,2929:1\n*E\n"
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010(\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0001J\u0015\u0010\u0002\u001a\u00028\u00012\u0006\u0010\u0003\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "kotlin/sequences/SequencesKt___SequencesKt$groupingBy$1",
        "Lccsankotlin/collections/Grouping;",
        "keyOf",
        "element",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "sourceIterator",
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
.field final synthetic $keySelector:Lccsankotlin/jvm/functions/Function1;

.field final synthetic $this_groupingBy:Lccsankotlin/sequences/Sequence;


# direct methods
.method public constructor <init>(Lccsankotlin/sequences/Sequence;Lccsankotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1, "$receiver"    # Lccsankotlin/sequences/Sequence;
    .param p2, "$captured_local_variable$1"    # Lccsankotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsankotlin/sequences/Sequence<",
            "+TT;>;",
            "Lccsankotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    .line 1036
    iput-object p1, p0, Lccsankotlin/sequences/SequencesKt___SequencesKt$groupingBy$1;->$this_groupingBy:Lccsankotlin/sequences/Sequence;

    iput-object p2, p0, Lccsankotlin/sequences/SequencesKt___SequencesKt$groupingBy$1;->$keySelector:Lccsankotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public keyOf(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TK;"
        }
    .end annotation

    .line 1038
    iget-object v0, p0, Lccsankotlin/sequences/SequencesKt___SequencesKt$groupingBy$1;->$keySelector:Lccsankotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lccsankotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public sourceIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 1037
    iget-object v0, p0, Lccsankotlin/sequences/SequencesKt___SequencesKt$groupingBy$1;->$this_groupingBy:Lccsankotlin/sequences/Sequence;

    invoke-interface {v0}, Lccsankotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
