.class final Lccsankotlin/sequences/SequencesKt___SequencesKt$distinct$1;
.super Lccsankotlin/jvm/internal/Lambda;
.source "_Sequences.kt"

# interfaces
.implements Lccsankotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsankotlin/sequences/SequencesKt___SequencesKt;->distinct(Lccsankotlin/sequences/Sequence;)Lccsankotlin/sequences/Sequence;
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
        "\u0000\u0004\n\u0002\u0008\u0005\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u00012\u0006\u0010\u0002\u001a\u0002H\u0001H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "T",
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


# static fields
.field public static final INSTANCE:Lccsankotlin/sequences/SequencesKt___SequencesKt$distinct$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lccsankotlin/sequences/SequencesKt___SequencesKt$distinct$1;

    invoke-direct {v0}, Lccsankotlin/sequences/SequencesKt___SequencesKt$distinct$1;-><init>()V

    sput-object v0, Lccsankotlin/sequences/SequencesKt___SequencesKt$distinct$1;->INSTANCE:Lccsankotlin/sequences/SequencesKt___SequencesKt$distinct$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lccsankotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "it"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 1162
    return-object p1
.end method
