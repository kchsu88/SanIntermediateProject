.class Lccsancom/google/common/collect/AbstractMultiset$EntrySet;
.super Lccsancom/google/common/collect/Multisets$EntrySet;
.source "AbstractMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/AbstractMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/Multisets$EntrySet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/AbstractMultiset;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/AbstractMultiset;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/AbstractMultiset;

    .line 173
    .local p0, "this":Lccsancom/google/common/collect/AbstractMultiset$EntrySet;, "Lccsancom/google/common/collect/AbstractMultiset<TE;>.EntrySet;"
    iput-object p1, p0, Lccsancom/google/common/collect/AbstractMultiset$EntrySet;->this$0:Lccsancom/google/common/collect/AbstractMultiset;

    invoke-direct {p0}, Lccsancom/google/common/collect/Multisets$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lccsancom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 181
    .local p0, "this":Lccsancom/google/common/collect/AbstractMultiset$EntrySet;, "Lccsancom/google/common/collect/AbstractMultiset<TE;>.EntrySet;"
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractMultiset$EntrySet;->this$0:Lccsancom/google/common/collect/AbstractMultiset;

    invoke-virtual {v0}, Lccsancom/google/common/collect/AbstractMultiset;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method multiset()Lccsancom/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/Multiset<",
            "TE;>;"
        }
    .end annotation

    .line 176
    .local p0, "this":Lccsancom/google/common/collect/AbstractMultiset$EntrySet;, "Lccsancom/google/common/collect/AbstractMultiset<TE;>.EntrySet;"
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractMultiset$EntrySet;->this$0:Lccsancom/google/common/collect/AbstractMultiset;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 186
    .local p0, "this":Lccsancom/google/common/collect/AbstractMultiset$EntrySet;, "Lccsancom/google/common/collect/AbstractMultiset<TE;>.EntrySet;"
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractMultiset$EntrySet;->this$0:Lccsancom/google/common/collect/AbstractMultiset;

    invoke-virtual {v0}, Lccsancom/google/common/collect/AbstractMultiset;->distinctElements()I

    move-result v0

    return v0
.end method
