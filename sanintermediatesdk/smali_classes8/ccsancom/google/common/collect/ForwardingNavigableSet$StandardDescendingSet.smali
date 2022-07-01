.class public Lccsancom/google/common/collect/ForwardingNavigableSet$StandardDescendingSet;
.super Lccsancom/google/common/collect/Sets$DescendingSet;
.source "ForwardingNavigableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/ForwardingNavigableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StandardDescendingSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/Sets$DescendingSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/ForwardingNavigableSet;


# direct methods
.method public constructor <init>(Lccsancom/google/common/collect/ForwardingNavigableSet;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/ForwardingNavigableSet;

    .line 170
    .local p0, "this":Lccsancom/google/common/collect/ForwardingNavigableSet$StandardDescendingSet;, "Lccsancom/google/common/collect/ForwardingNavigableSet<TE;>.StandardDescendingSet;"
    iput-object p1, p0, Lccsancom/google/common/collect/ForwardingNavigableSet$StandardDescendingSet;->this$0:Lccsancom/google/common/collect/ForwardingNavigableSet;

    .line 171
    invoke-direct {p0, p1}, Lccsancom/google/common/collect/Sets$DescendingSet;-><init>(Ljava/util/NavigableSet;)V

    .line 172
    return-void
.end method
