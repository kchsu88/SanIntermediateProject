.class public final Lccsankotlin/collections/RingBuffer$iterator$1;
.super Lccsankotlin/collections/AbstractIterator;
.source "SlidingWindow.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsankotlin/collections/RingBuffer;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsankotlin/collections/AbstractIterator<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlidingWindow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlidingWindow.kt\nkotlin/collections/RingBuffer$iterator$1\n+ 2 SlidingWindow.kt\nkotlin/collections/RingBuffer\n*L\n1#1,207:1\n205#2:208\n*S KotlinDebug\n*F\n+ 1 SlidingWindow.kt\nkotlin/collections/RingBuffer$iterator$1\n*L\n121#1:208\n*E\n"
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u0008\u0010\u0005\u001a\u00020\u0006H\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "kotlin/collections/RingBuffer$iterator$1",
        "Lccsankotlin/collections/AbstractIterator;",
        "count",
        "",
        "index",
        "computeNext",
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
.field private count:I

.field private index:I

.field final synthetic this$0:Lccsankotlin/collections/RingBuffer;


# direct methods
.method constructor <init>(Lccsankotlin/collections/RingBuffer;)V
    .locals 1
    .param p1, "this$0"    # Lccsankotlin/collections/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lccsankotlin/collections/RingBuffer$iterator$1;->this$0:Lccsankotlin/collections/RingBuffer;

    invoke-direct {p0}, Lccsankotlin/collections/AbstractIterator;-><init>()V

    .line 112
    invoke-virtual {p1}, Lccsankotlin/collections/RingBuffer;->size()I

    move-result v0

    iput v0, p0, Lccsankotlin/collections/RingBuffer$iterator$1;->count:I

    .line 113
    invoke-static {p1}, Lccsankotlin/collections/RingBuffer;->access$getStartIndex$p(Lccsankotlin/collections/RingBuffer;)I

    move-result v0

    iput v0, p0, Lccsankotlin/collections/RingBuffer$iterator$1;->index:I

    return-void
.end method


# virtual methods
.method protected computeNext()V
    .locals 6

    .line 116
    iget v0, p0, Lccsankotlin/collections/RingBuffer$iterator$1;->count:I

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lccsankotlin/collections/RingBuffer$iterator$1;->done()V

    goto :goto_0

    .line 119
    :cond_0
    nop

    .line 120
    iget-object v0, p0, Lccsankotlin/collections/RingBuffer$iterator$1;->this$0:Lccsankotlin/collections/RingBuffer;

    invoke-static {v0}, Lccsankotlin/collections/RingBuffer;->access$getBuffer$p(Lccsankotlin/collections/RingBuffer;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lccsankotlin/collections/RingBuffer$iterator$1;->index:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lccsankotlin/collections/RingBuffer$iterator$1;->setNext(Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lccsankotlin/collections/RingBuffer$iterator$1;->this$0:Lccsankotlin/collections/RingBuffer;

    .local v0, "this_$iv":Lccsankotlin/collections/RingBuffer;
    iget v1, p0, Lccsankotlin/collections/RingBuffer$iterator$1;->index:I

    .local v1, "$this$forward$iv":I
    const/4 v2, 0x1

    .local v2, "n$iv":I
    const/4 v3, 0x0

    .line 208
    .local v3, "$i$f$forward":I
    add-int v4, v1, v2

    invoke-static {v0}, Lccsankotlin/collections/RingBuffer;->access$getCapacity$p(Lccsankotlin/collections/RingBuffer;)I

    move-result v5

    rem-int/2addr v4, v5

    .end local v0    # "this_$iv":Lccsankotlin/collections/RingBuffer;
    .end local v1    # "$this$forward$iv":I
    .end local v2    # "n$iv":I
    .end local v3    # "$i$f$forward":I
    iput v4, p0, Lccsankotlin/collections/RingBuffer$iterator$1;->index:I

    .line 122
    iget v0, p0, Lccsankotlin/collections/RingBuffer$iterator$1;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lccsankotlin/collections/RingBuffer$iterator$1;->count:I

    .line 123
    :goto_0
    nop

    .line 124
    return-void
.end method
