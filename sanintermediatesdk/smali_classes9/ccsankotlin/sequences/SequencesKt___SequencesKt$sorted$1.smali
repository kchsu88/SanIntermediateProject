.class public final Lccsankotlin/sequences/SequencesKt___SequencesKt$sorted$1;
.super Ljava/lang/Object;
.source "_Sequences.kt"

# interfaces
.implements Lccsankotlin/sequences/Sequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsankotlin/sequences/SequencesKt___SequencesKt;->sorted(Lccsankotlin/sequences/Sequence;)Lccsankotlin/sequences/Sequence;
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
        "kotlin/sequences/SequencesKt___SequencesKt$sorted$1",
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
.field final synthetic $this_sorted:Lccsankotlin/sequences/Sequence;


# direct methods
.method constructor <init>(Lccsankotlin/sequences/Sequence;)V
    .locals 0
    .param p1, "$receiver"    # Lccsankotlin/sequences/Sequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsankotlin/sequences/Sequence<",
            "+TT;>;)V"
        }
    .end annotation

    .line 583
    iput-object p1, p0, Lccsankotlin/sequences/SequencesKt___SequencesKt$sorted$1;->$this_sorted:Lccsankotlin/sequences/Sequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 585
    iget-object v0, p0, Lccsankotlin/sequences/SequencesKt___SequencesKt$sorted$1;->$this_sorted:Lccsankotlin/sequences/Sequence;

    invoke-static {v0}, Lccsankotlin/sequences/SequencesKt;->toMutableList(Lccsankotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v0

    .line 586
    .local v0, "sortedList":Ljava/util/List;
    invoke-static {v0}, Lccsankotlin/collections/CollectionsKt;->sort(Ljava/util/List;)V

    .line 587
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method
