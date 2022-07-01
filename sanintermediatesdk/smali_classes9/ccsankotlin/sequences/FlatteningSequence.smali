.class public final Lccsankotlin/sequences/FlatteningSequence;
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
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsankotlin/sequences/Sequence<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u0002*\u0004\u0008\u0002\u0010\u00032\u0008\u0012\u0004\u0012\u0002H\u00030\u0004BA\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007\u0012\u0018\u0010\u0008\u001a\u0014\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00020\t0\u0007\u00a2\u0006\u0002\u0010\nJ\u000f\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00020\tH\u0096\u0002R \u0010\u0008\u001a\u0014\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00020\t0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lccsankotlin/sequences/FlatteningSequence;",
        "T",
        "R",
        "E",
        "Lccsankotlin/sequences/Sequence;",
        "sequence",
        "transformer",
        "Lccsankotlin/Function1;",
        "iterator",
        "",
        "(Lccsankotlin/sequences/Sequence;Lccsankotlin/jvm/functions/Function1;Lccsankotlin/jvm/functions/Function1;)V",
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
.field private final iterator:Lccsankotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsankotlin/jvm/functions/Function1<",
            "TR;",
            "Ljava/util/Iterator<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private final sequence:Lccsankotlin/sequences/Sequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsankotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final transformer:Lccsankotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsankotlin/jvm/functions/Function1<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsankotlin/sequences/Sequence;Lccsankotlin/jvm/functions/Function1;Lccsankotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "sequence"    # Lccsankotlin/sequences/Sequence;
    .param p2, "transformer"    # Lccsankotlin/jvm/functions/Function1;
    .param p3, "iterator"    # Lccsankotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsankotlin/sequences/Sequence<",
            "+TT;>;",
            "Lccsankotlin/jvm/functions/Function1<",
            "-TT;+TR;>;",
            "Lccsankotlin/jvm/functions/Function1<",
            "-TR;+",
            "Ljava/util/Iterator<",
            "+TE;>;>;)V"
        }
    .end annotation

    const-string v0, "sequence"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transformer"

    invoke-static {p2, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iterator"

    invoke-static {p3, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsankotlin/sequences/FlatteningSequence;->sequence:Lccsankotlin/sequences/Sequence;

    iput-object p2, p0, Lccsankotlin/sequences/FlatteningSequence;->transformer:Lccsankotlin/jvm/functions/Function1;

    iput-object p3, p0, Lccsankotlin/sequences/FlatteningSequence;->iterator:Lccsankotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic access$getIterator$p(Lccsankotlin/sequences/FlatteningSequence;)Lccsankotlin/jvm/functions/Function1;
    .locals 1
    .param p0, "$this"    # Lccsankotlin/sequences/FlatteningSequence;

    .line 286
    iget-object v0, p0, Lccsankotlin/sequences/FlatteningSequence;->iterator:Lccsankotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final synthetic access$getSequence$p(Lccsankotlin/sequences/FlatteningSequence;)Lccsankotlin/sequences/Sequence;
    .locals 1
    .param p0, "$this"    # Lccsankotlin/sequences/FlatteningSequence;

    .line 286
    iget-object v0, p0, Lccsankotlin/sequences/FlatteningSequence;->sequence:Lccsankotlin/sequences/Sequence;

    return-object v0
.end method

.method public static final synthetic access$getTransformer$p(Lccsankotlin/sequences/FlatteningSequence;)Lccsankotlin/jvm/functions/Function1;
    .locals 1
    .param p0, "$this"    # Lccsankotlin/sequences/FlatteningSequence;

    .line 286
    iget-object v0, p0, Lccsankotlin/sequences/FlatteningSequence;->transformer:Lccsankotlin/jvm/functions/Function1;

    return-object v0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 292
    new-instance v0, Lccsankotlin/sequences/FlatteningSequence$iterator$1;

    invoke-direct {v0, p0}, Lccsankotlin/sequences/FlatteningSequence$iterator$1;-><init>(Lccsankotlin/sequences/FlatteningSequence;)V

    check-cast v0, Ljava/util/Iterator;

    .line 324
    return-object v0
.end method
