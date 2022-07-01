.class Lccsancom/google/common/collect/ImmutableRangeMap$1;
.super Lccsancom/google/common/collect/ImmutableList;
.source "ImmutableRangeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/ImmutableRangeMap;->subRangeMap(Lccsancom/google/common/collect/Range;)Lccsancom/google/common/collect/ImmutableRangeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/ImmutableList<",
        "Lccsancom/google/common/collect/Range<",
        "TK;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/ImmutableRangeMap;

.field final synthetic val$len:I

.field final synthetic val$off:I

.field final synthetic val$range:Lccsancom/google/common/collect/Range;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/ImmutableRangeMap;IILccsancom/google/common/collect/Range;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/ImmutableRangeMap;

    .line 302
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeMap$1;, "Lccsancom/google/common/collect/ImmutableRangeMap$1;"
    iput-object p1, p0, Lccsancom/google/common/collect/ImmutableRangeMap$1;->this$0:Lccsancom/google/common/collect/ImmutableRangeMap;

    iput p2, p0, Lccsancom/google/common/collect/ImmutableRangeMap$1;->val$len:I

    iput p3, p0, Lccsancom/google/common/collect/ImmutableRangeMap$1;->val$off:I

    iput-object p4, p0, Lccsancom/google/common/collect/ImmutableRangeMap$1;->val$range:Lccsancom/google/common/collect/Range;

    invoke-direct {p0}, Lccsancom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Lccsancom/google/common/collect/Range;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsancom/google/common/collect/Range<",
            "TK;>;"
        }
    .end annotation

    .line 310
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeMap$1;, "Lccsancom/google/common/collect/ImmutableRangeMap$1;"
    iget v0, p0, Lccsancom/google/common/collect/ImmutableRangeMap$1;->val$len:I

    invoke-static {p1, v0}, Lccsancom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 311
    if-eqz p1, :cond_1

    iget v0, p0, Lccsancom/google/common/collect/ImmutableRangeMap$1;->val$len:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableRangeMap$1;->this$0:Lccsancom/google/common/collect/ImmutableRangeMap;

    invoke-static {v0}, Lccsancom/google/common/collect/ImmutableRangeMap;->access$000(Lccsancom/google/common/collect/ImmutableRangeMap;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    iget v1, p0, Lccsancom/google/common/collect/ImmutableRangeMap$1;->val$off:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lccsancom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/Range;

    return-object v0

    .line 312
    :cond_1
    :goto_0
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableRangeMap$1;->this$0:Lccsancom/google/common/collect/ImmutableRangeMap;

    invoke-static {v0}, Lccsancom/google/common/collect/ImmutableRangeMap;->access$000(Lccsancom/google/common/collect/ImmutableRangeMap;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    iget v1, p0, Lccsancom/google/common/collect/ImmutableRangeMap$1;->val$off:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lccsancom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/Range;

    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableRangeMap$1;->val$range:Lccsancom/google/common/collect/Range;

    invoke-virtual {v0, v1}, Lccsancom/google/common/collect/Range;->intersection(Lccsancom/google/common/collect/Range;)Lccsancom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 302
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeMap$1;, "Lccsancom/google/common/collect/ImmutableRangeMap$1;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/ImmutableRangeMap$1;->get(I)Lccsancom/google/common/collect/Range;

    move-result-object p1

    return-object p1
.end method

.method isPartialView()Z
    .locals 1

    .line 320
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeMap$1;, "Lccsancom/google/common/collect/ImmutableRangeMap$1;"
    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .line 305
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeMap$1;, "Lccsancom/google/common/collect/ImmutableRangeMap$1;"
    iget v0, p0, Lccsancom/google/common/collect/ImmutableRangeMap$1;->val$len:I

    return v0
.end method
