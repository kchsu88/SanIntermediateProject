.class Lccsancom/google/common/base/Splitter$4$1;
.super Lccsancom/google/common/base/Splitter$SplittingIterator;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/base/Splitter$4;->iterator(Lccsancom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lccsancom/google/common/base/Splitter$SplittingIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/base/Splitter$4;


# direct methods
.method constructor <init>(Lccsancom/google/common/base/Splitter$4;Lccsancom/google/common/base/Splitter;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/base/Splitter$4;
    .param p2, "splitter"    # Lccsancom/google/common/base/Splitter;
    .param p3, "toSplit"    # Ljava/lang/CharSequence;

    .line 286
    iput-object p1, p0, Lccsancom/google/common/base/Splitter$4$1;->this$0:Lccsancom/google/common/base/Splitter$4;

    invoke-direct {p0, p2, p3}, Lccsancom/google/common/base/Splitter$SplittingIterator;-><init>(Lccsancom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public separatorEnd(I)I
    .locals 0
    .param p1, "separatorPosition"    # I

    .line 295
    return p1
.end method

.method public separatorStart(I)I
    .locals 2
    .param p1, "start"    # I

    .line 289
    iget-object v0, p0, Lccsancom/google/common/base/Splitter$4$1;->this$0:Lccsancom/google/common/base/Splitter$4;

    iget v0, v0, Lccsancom/google/common/base/Splitter$4;->val$length:I

    add-int/2addr v0, p1

    .line 290
    .local v0, "nextChunkStart":I
    iget-object v1, p0, Lccsancom/google/common/base/Splitter$4$1;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method
