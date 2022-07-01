.class final Lccsankotlin/sequences/GeneratorSequence;
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
        "\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010(\n\u0000\u0008\u0002\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B+\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0005\u0012\u0014\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0007\u00a2\u0006\u0002\u0010\u0008J\u000f\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00000\nH\u0096\u0002R\u0016\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lccsankotlin/sequences/GeneratorSequence;",
        "T",
        "",
        "Lccsankotlin/sequences/Sequence;",
        "getInitialValue",
        "Lccsankotlin/Function0;",
        "getNextValue",
        "Lccsankotlin/Function1;",
        "(Lccsankotlin/jvm/functions/Function0;Lccsankotlin/jvm/functions/Function1;)V",
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
.field private final getInitialValue:Lccsankotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsankotlin/jvm/functions/Function0<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final getNextValue:Lccsankotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsankotlin/jvm/functions/Function1<",
            "TT;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsankotlin/jvm/functions/Function0;Lccsankotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "getInitialValue"    # Lccsankotlin/jvm/functions/Function0;
    .param p2, "getNextValue"    # Lccsankotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsankotlin/jvm/functions/Function0<",
            "+TT;>;",
            "Lccsankotlin/jvm/functions/Function1<",
            "-TT;+TT;>;)V"
        }
    .end annotation

    const-string v0, "getInitialValue"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getNextValue"

    invoke-static {p2, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsankotlin/sequences/GeneratorSequence;->getInitialValue:Lccsankotlin/jvm/functions/Function0;

    iput-object p2, p0, Lccsankotlin/sequences/GeneratorSequence;->getNextValue:Lccsankotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic access$getGetInitialValue$p(Lccsankotlin/sequences/GeneratorSequence;)Lccsankotlin/jvm/functions/Function0;
    .locals 1
    .param p0, "$this"    # Lccsankotlin/sequences/GeneratorSequence;

    .line 585
    iget-object v0, p0, Lccsankotlin/sequences/GeneratorSequence;->getInitialValue:Lccsankotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public static final synthetic access$getGetNextValue$p(Lccsankotlin/sequences/GeneratorSequence;)Lccsankotlin/jvm/functions/Function1;
    .locals 1
    .param p0, "$this"    # Lccsankotlin/sequences/GeneratorSequence;

    .line 585
    iget-object v0, p0, Lccsankotlin/sequences/GeneratorSequence;->getNextValue:Lccsankotlin/jvm/functions/Function1;

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

    .line 586
    new-instance v0, Lccsankotlin/sequences/GeneratorSequence$iterator$1;

    invoke-direct {v0, p0}, Lccsankotlin/sequences/GeneratorSequence$iterator$1;-><init>(Lccsankotlin/sequences/GeneratorSequence;)V

    check-cast v0, Ljava/util/Iterator;

    .line 612
    return-object v0
.end method
