.class public final Lccsankotlin/sequences/SequencesKt___SequencesKt$minus$1;
.super Ljava/lang/Object;
.source "_Sequences.kt"

# interfaces
.implements Lccsankotlin/sequences/Sequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsankotlin/sequences/SequencesKt___SequencesKt;->minus(Lccsankotlin/sequences/Sequence;Ljava/lang/Object;)Lccsankotlin/sequences/Sequence;
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
        "kotlin/sequences/SequencesKt___SequencesKt$minus$1",
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
.field final synthetic $element:Ljava/lang/Object;

.field final synthetic $this_minus:Lccsankotlin/sequences/Sequence;


# direct methods
.method constructor <init>(Lccsankotlin/sequences/Sequence;Ljava/lang/Object;)V
    .locals 0
    .param p1, "$receiver"    # Lccsankotlin/sequences/Sequence;
    .param p2, "$captured_local_variable$1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsankotlin/sequences/Sequence<",
            "+TT;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 2429
    iput-object p1, p0, Lccsankotlin/sequences/SequencesKt___SequencesKt$minus$1;->$this_minus:Lccsankotlin/sequences/Sequence;

    iput-object p2, p0, Lccsankotlin/sequences/SequencesKt___SequencesKt$minus$1;->$element:Ljava/lang/Object;

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

    .line 2431
    new-instance v0, Lccsankotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lccsankotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lccsankotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 2432
    .local v0, "removed":Lccsankotlin/jvm/internal/Ref$BooleanRef;
    iget-object v1, p0, Lccsankotlin/sequences/SequencesKt___SequencesKt$minus$1;->$this_minus:Lccsankotlin/sequences/Sequence;

    new-instance v2, Lccsankotlin/sequences/SequencesKt___SequencesKt$minus$1$iterator$1;

    invoke-direct {v2, p0, v0}, Lccsankotlin/sequences/SequencesKt___SequencesKt$minus$1$iterator$1;-><init>(Lccsankotlin/sequences/SequencesKt___SequencesKt$minus$1;Lccsankotlin/jvm/internal/Ref$BooleanRef;)V

    check-cast v2, Lccsankotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lccsankotlin/sequences/SequencesKt;->filter(Lccsankotlin/sequences/Sequence;Lccsankotlin/jvm/functions/Function1;)Lccsankotlin/sequences/Sequence;

    move-result-object v1

    invoke-interface {v1}, Lccsankotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method
