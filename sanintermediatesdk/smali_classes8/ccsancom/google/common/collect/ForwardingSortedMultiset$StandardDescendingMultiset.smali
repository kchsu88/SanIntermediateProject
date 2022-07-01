.class public abstract Lccsancom/google/common/collect/ForwardingSortedMultiset$StandardDescendingMultiset;
.super Lccsancom/google/common/collect/DescendingMultiset;
.source "ForwardingSortedMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/ForwardingSortedMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "StandardDescendingMultiset"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/DescendingMultiset<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/ForwardingSortedMultiset;


# direct methods
.method public constructor <init>(Lccsancom/google/common/collect/ForwardingSortedMultiset;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/ForwardingSortedMultiset;

    .line 104
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSortedMultiset$StandardDescendingMultiset;, "Lccsancom/google/common/collect/ForwardingSortedMultiset<TE;>.StandardDescendingMultiset;"
    iput-object p1, p0, Lccsancom/google/common/collect/ForwardingSortedMultiset$StandardDescendingMultiset;->this$0:Lccsancom/google/common/collect/ForwardingSortedMultiset;

    invoke-direct {p0}, Lccsancom/google/common/collect/DescendingMultiset;-><init>()V

    return-void
.end method


# virtual methods
.method forwardMultiset()Lccsancom/google/common/collect/SortedMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 108
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSortedMultiset$StandardDescendingMultiset;, "Lccsancom/google/common/collect/ForwardingSortedMultiset<TE;>.StandardDescendingMultiset;"
    iget-object v0, p0, Lccsancom/google/common/collect/ForwardingSortedMultiset$StandardDescendingMultiset;->this$0:Lccsancom/google/common/collect/ForwardingSortedMultiset;

    return-object v0
.end method
