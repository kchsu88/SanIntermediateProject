.class Lccsancom/google/common/collect/ImmutableList$Itr;
.super Lccsancom/google/common/collect/AbstractIndexedListIterator;
.source "ImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/AbstractIndexedListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final list:Lccsancom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/ImmutableList;I)V
    .locals 1
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/ImmutableList<",
            "TE;>;I)V"
        }
    .end annotation

    .line 379
    .local p0, "this":Lccsancom/google/common/collect/ImmutableList$Itr;, "Lccsancom/google/common/collect/ImmutableList$Itr<TE;>;"
    .local p1, "list":Lccsancom/google/common/collect/ImmutableList;, "Lccsancom/google/common/collect/ImmutableList<TE;>;"
    invoke-virtual {p1}, Lccsancom/google/common/collect/ImmutableList;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lccsancom/google/common/collect/AbstractIndexedListIterator;-><init>(II)V

    .line 380
    iput-object p1, p0, Lccsancom/google/common/collect/ImmutableList$Itr;->list:Lccsancom/google/common/collect/ImmutableList;

    .line 381
    return-void
.end method


# virtual methods
.method protected get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 385
    .local p0, "this":Lccsancom/google/common/collect/ImmutableList$Itr;, "Lccsancom/google/common/collect/ImmutableList$Itr<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableList$Itr;->list:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
