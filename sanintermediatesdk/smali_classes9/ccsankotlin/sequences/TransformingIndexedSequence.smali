.class public final Lccsankotlin/sequences/TransformingIndexedSequence;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Lccsankotlin/sequences/Sequence;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsankotlin/sequences/Sequence<",
        "TR;>;"
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010(\n\u0000\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u0008\u0012\u0004\u0012\u0002H\u00020\u0003B-\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0018\u0010\u0005\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u00a2\u0006\u0002\u0010\u0008J\u000f\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00010\nH\u0096\u0002R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u0005\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lccsankotlin/sequences/TransformingIndexedSequence;",
        "T",
        "R",
        "Lccsankotlin/sequences/Sequence;",
        "sequence",
        "transformer",
        "Lccsankotlin/Function2;",
        "",
        "(Lccsankotlin/sequences/Sequence;Lccsankotlin/jvm/functions/Function2;)V",
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
.field private final sequence:Lccsankotlin/sequences/Sequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsankotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final transformer:Lccsankotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsankotlin/jvm/functions/Function2<",
            "Ljava/lang/Integer;",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsankotlin/sequences/Sequence;Lccsankotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1, "sequence"    # Lccsankotlin/sequences/Sequence;
    .param p2, "transformer"    # Lccsankotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsankotlin/sequences/Sequence<",
            "+TT;>;",
            "Lccsankotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-TT;+TR;>;)V"
        }
    .end annotation

    const-string v0, "sequence"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transformer"

    invoke-static {p2, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsankotlin/sequences/TransformingIndexedSequence;->sequence:Lccsankotlin/sequences/Sequence;

    iput-object p2, p0, Lccsankotlin/sequences/TransformingIndexedSequence;->transformer:Lccsankotlin/jvm/functions/Function2;

    return-void
.end method

.method public static final synthetic access$getSequence$p(Lccsankotlin/sequences/TransformingIndexedSequence;)Lccsankotlin/sequences/Sequence;
    .locals 1
    .param p0, "$this"    # Lccsankotlin/sequences/TransformingIndexedSequence;

    .line 228
    iget-object v0, p0, Lccsankotlin/sequences/TransformingIndexedSequence;->sequence:Lccsankotlin/sequences/Sequence;

    return-object v0
.end method

.method public static final synthetic access$getTransformer$p(Lccsankotlin/sequences/TransformingIndexedSequence;)Lccsankotlin/jvm/functions/Function2;
    .locals 1
    .param p0, "$this"    # Lccsankotlin/sequences/TransformingIndexedSequence;

    .line 228
    iget-object v0, p0, Lccsankotlin/sequences/TransformingIndexedSequence;->transformer:Lccsankotlin/jvm/functions/Function2;

    return-object v0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TR;>;"
        }
    .end annotation

    .line 230
    new-instance v0, Lccsankotlin/sequences/TransformingIndexedSequence$iterator$1;

    invoke-direct {v0, p0}, Lccsankotlin/sequences/TransformingIndexedSequence$iterator$1;-><init>(Lccsankotlin/sequences/TransformingIndexedSequence;)V

    check-cast v0, Ljava/util/Iterator;

    .line 240
    return-object v0
.end method
