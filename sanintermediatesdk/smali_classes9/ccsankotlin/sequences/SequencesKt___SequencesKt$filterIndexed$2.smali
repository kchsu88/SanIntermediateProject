.class final Lccsankotlin/sequences/SequencesKt___SequencesKt$filterIndexed$2;
.super Lccsankotlin/jvm/internal/Lambda;
.source "_Sequences.kt"

# interfaces
.implements Lccsankotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsankotlin/sequences/SequencesKt___SequencesKt;->filterIndexed(Lccsankotlin/sequences/Sequence;Lccsankotlin/jvm/functions/Function2;)Lccsankotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsankotlin/jvm/internal/Lambda;",
        "Lccsankotlin/jvm/functions/Function1<",
        "Lccsankotlin/collections/IndexedValue<",
        "+TT;>;TT;>;"
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "T",
        "it",
        "Lccsankotlin/collections/IndexedValue;",
        "invoke",
        "(Lccsankotlin/collections/IndexedValue;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lccsankotlin/sequences/SequencesKt___SequencesKt$filterIndexed$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lccsankotlin/sequences/SequencesKt___SequencesKt$filterIndexed$2;

    invoke-direct {v0}, Lccsankotlin/sequences/SequencesKt___SequencesKt$filterIndexed$2;-><init>()V

    sput-object v0, Lccsankotlin/sequences/SequencesKt___SequencesKt$filterIndexed$2;->INSTANCE:Lccsankotlin/sequences/SequencesKt___SequencesKt$filterIndexed$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lccsankotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lccsankotlin/collections/IndexedValue;

    invoke-virtual {p0, p1}, Lccsankotlin/sequences/SequencesKt___SequencesKt$filterIndexed$2;->invoke(Lccsankotlin/collections/IndexedValue;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lccsankotlin/collections/IndexedValue;)Ljava/lang/Object;
    .locals 1
    .param p1, "it"    # Lccsankotlin/collections/IndexedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsankotlin/collections/IndexedValue<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    invoke-virtual {p1}, Lccsankotlin/collections/IndexedValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
