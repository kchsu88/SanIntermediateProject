.class final enum Lccsancom/google/common/collect/SortedLists$KeyAbsentBehavior$2;
.super Lccsancom/google/common/collect/SortedLists$KeyAbsentBehavior;
.source "SortedLists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/SortedLists$KeyAbsentBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsancom/google/common/collect/SortedLists$KeyAbsentBehavior;-><init>(Ljava/lang/String;ILccsancom/google/common/collect/SortedLists$1;)V

    return-void
.end method


# virtual methods
.method public resultIndex(I)I
    .locals 0
    .param p1, "higherIndex"    # I

    .line 149
    return p1
.end method
