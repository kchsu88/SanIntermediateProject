.class public final Lccsankotlin/sequences/FilteringSequence;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Lccsankotlin/sequences/Sequence;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsankotlin/sequences/Sequence<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010(\n\u0000\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B1\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00050\u0007\u00a2\u0006\u0002\u0010\u0008J\u000f\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00000\nH\u0096\u0002R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00050\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lccsankotlin/sequences/FilteringSequence;",
        "T",
        "Lccsankotlin/sequences/Sequence;",
        "sequence",
        "sendWhen",
        "",
        "predicate",
        "Lccsankotlin/Function1;",
        "(Lccsankotlin/sequences/Sequence;ZLccsankotlin/jvm/functions/Function1;)V",
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
.field private final predicate:Lccsankotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsankotlin/jvm/functions/Function1<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final sendWhen:Z

.field private final sequence:Lccsankotlin/sequences/Sequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsankotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsankotlin/sequences/Sequence;ZLccsankotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "sequence"    # Lccsankotlin/sequences/Sequence;
    .param p2, "sendWhen"    # Z
    .param p3, "predicate"    # Lccsankotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsankotlin/sequences/Sequence<",
            "+TT;>;Z",
            "Lccsankotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sequence"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predicate"

    invoke-static {p3, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsankotlin/sequences/FilteringSequence;->sequence:Lccsankotlin/sequences/Sequence;

    iput-boolean p2, p0, Lccsankotlin/sequences/FilteringSequence;->sendWhen:Z

    iput-object p3, p0, Lccsankotlin/sequences/FilteringSequence;->predicate:Lccsankotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Lccsankotlin/sequences/Sequence;ZLccsankotlin/jvm/functions/Function1;ILccsankotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 159
    const/4 p2, 0x1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lccsankotlin/sequences/FilteringSequence;-><init>(Lccsankotlin/sequences/Sequence;ZLccsankotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$getPredicate$p(Lccsankotlin/sequences/FilteringSequence;)Lccsankotlin/jvm/functions/Function1;
    .locals 1
    .param p0, "$this"    # Lccsankotlin/sequences/FilteringSequence;

    .line 157
    iget-object v0, p0, Lccsankotlin/sequences/FilteringSequence;->predicate:Lccsankotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final synthetic access$getSendWhen$p(Lccsankotlin/sequences/FilteringSequence;)Z
    .locals 1
    .param p0, "$this"    # Lccsankotlin/sequences/FilteringSequence;

    .line 157
    iget-boolean v0, p0, Lccsankotlin/sequences/FilteringSequence;->sendWhen:Z

    return v0
.end method

.method public static final synthetic access$getSequence$p(Lccsankotlin/sequences/FilteringSequence;)Lccsankotlin/sequences/Sequence;
    .locals 1
    .param p0, "$this"    # Lccsankotlin/sequences/FilteringSequence;

    .line 157
    iget-object v0, p0, Lccsankotlin/sequences/FilteringSequence;->sequence:Lccsankotlin/sequences/Sequence;

    return-object v0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 163
    new-instance v0, Lccsankotlin/sequences/FilteringSequence$iterator$1;

    invoke-direct {v0, p0}, Lccsankotlin/sequences/FilteringSequence$iterator$1;-><init>(Lccsankotlin/sequences/FilteringSequence;)V

    check-cast v0, Ljava/util/Iterator;

    .line 197
    return-object v0
.end method
