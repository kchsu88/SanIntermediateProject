.class final Lccsankotlin/sequences/SequencesKt___SequencesKt$requireNoNulls$1;
.super Lccsankotlin/jvm/internal/Lambda;
.source "_Sequences.kt"

# interfaces
.implements Lccsankotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsankotlin/sequences/SequencesKt___SequencesKt;->requireNoNulls(Lccsankotlin/sequences/Sequence;)Lccsankotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsankotlin/jvm/internal/Lambda;",
        "Lccsankotlin/jvm/functions/Function1<",
        "TT;TT;>;"
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0010\u0000\u001a\u0002H\u0001\"\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u0001H\u0001H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "T",
        "",
        "it",
        "invoke",
        "(Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $this_requireNoNulls:Lccsankotlin/sequences/Sequence;


# direct methods
.method constructor <init>(Lccsankotlin/sequences/Sequence;)V
    .locals 0

    iput-object p1, p0, Lccsankotlin/sequences/SequencesKt___SequencesKt$requireNoNulls$1;->$this_requireNoNulls:Lccsankotlin/sequences/Sequence;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lccsankotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "it"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 2383
    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "null element found in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsankotlin/sequences/SequencesKt___SequencesKt$requireNoNulls$1;->$this_requireNoNulls:Lccsankotlin/sequences/Sequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
