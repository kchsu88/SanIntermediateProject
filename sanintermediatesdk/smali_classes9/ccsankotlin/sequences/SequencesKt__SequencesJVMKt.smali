.class Lccsankotlin/sequences/SequencesKt__SequencesJVMKt;
.super Lccsankotlin/sequences/SequencesKt__SequenceBuilderKt;
.source "SequencesJVM.kt"


# annotations
.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u001f\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0003H\u0087\u0008\u00a8\u0006\u0004"
    }
    d2 = {
        "asSequence",
        "Lccsankotlin/sequences/Sequence;",
        "T",
        "Ljava/util/Enumeration;",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x1
    xs = "kotlin/sequences/SequencesKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lccsankotlin/sequences/SequencesKt__SequenceBuilderKt;-><init>()V

    return-void
.end method

.method private static final asSequence(Ljava/util/Enumeration;)Lccsankotlin/sequences/Sequence;
    .locals 2
    .param p0, "$this$asSequence"    # Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Enumeration<",
            "TT;>;)",
            "Lccsankotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 16
    .local v0, "$i$f$asSequence":I
    invoke-static {p0}, Lccsankotlin/collections/CollectionsKt;->iterator(Ljava/util/Enumeration;)Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lccsankotlin/sequences/SequencesKt;->asSequence(Ljava/util/Iterator;)Lccsankotlin/sequences/Sequence;

    move-result-object v1

    return-object v1
.end method
