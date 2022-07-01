.class final synthetic Lccsankotlin/sequences/SequencesKt___SequencesKt$flatMapIndexed$2;
.super Lccsankotlin/jvm/internal/FunctionReferenceImpl;
.source "_Sequences.kt"

# interfaces
.implements Lccsankotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsankotlin/sequences/SequencesKt___SequencesKt;->flatMapIndexedSequence(Lccsankotlin/sequences/Sequence;Lccsankotlin/jvm/functions/Function2;)Lccsankotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsankotlin/jvm/internal/FunctionReferenceImpl;",
        "Lccsankotlin/jvm/functions/Function1<",
        "Lccsankotlin/sequences/Sequence<",
        "+TR;>;",
        "Ljava/util/Iterator<",
        "+TR;>;>;"
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010(\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0003\"\u0004\u0008\u0001\u0010\u00022\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0005\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "T",
        "p1",
        "Lccsankotlin/sequences/Sequence;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lccsankotlin/sequences/SequencesKt___SequencesKt$flatMapIndexed$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lccsankotlin/sequences/SequencesKt___SequencesKt$flatMapIndexed$2;

    invoke-direct {v0}, Lccsankotlin/sequences/SequencesKt___SequencesKt$flatMapIndexed$2;-><init>()V

    sput-object v0, Lccsankotlin/sequences/SequencesKt___SequencesKt$flatMapIndexed$2;->INSTANCE:Lccsankotlin/sequences/SequencesKt___SequencesKt$flatMapIndexed$2;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    const-class v2, Lccsankotlin/sequences/Sequence;

    const/4 v1, 0x1

    const-string v3, "iterator"

    const-string v4, "iterator()Ljava/util/Iterator;"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lccsankotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lccsankotlin/sequences/Sequence;

    invoke-virtual {p0, p1}, Lccsankotlin/sequences/SequencesKt___SequencesKt$flatMapIndexed$2;->invoke(Lccsankotlin/sequences/Sequence;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lccsankotlin/sequences/Sequence;)Ljava/util/Iterator;
    .locals 1
    .param p1, "p1"    # Lccsankotlin/sequences/Sequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsankotlin/sequences/Sequence<",
            "+TR;>;)",
            "Ljava/util/Iterator<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "p1"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 885
    invoke-interface {p1}, Lccsankotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
