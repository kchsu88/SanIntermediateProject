.class Lccsancom/google/common/collect/AbstractMapBasedMultiset$1;
.super Lccsancom/google/common/collect/AbstractMapBasedMultiset$Itr;
.source "AbstractMapBasedMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/AbstractMapBasedMultiset;->elementIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/AbstractMapBasedMultiset<",
        "TE;>.Itr<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/AbstractMapBasedMultiset;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/AbstractMapBasedMultiset;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/AbstractMapBasedMultiset;

    .line 206
    .local p0, "this":Lccsancom/google/common/collect/AbstractMapBasedMultiset$1;, "Lccsancom/google/common/collect/AbstractMapBasedMultiset$1;"
    iput-object p1, p0, Lccsancom/google/common/collect/AbstractMapBasedMultiset$1;->this$0:Lccsancom/google/common/collect/AbstractMapBasedMultiset;

    invoke-direct {p0, p1}, Lccsancom/google/common/collect/AbstractMapBasedMultiset$Itr;-><init>(Lccsancom/google/common/collect/AbstractMapBasedMultiset;)V

    return-void
.end method


# virtual methods
.method result(I)Ljava/lang/Object;
    .locals 1
    .param p1, "entryIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 209
    .local p0, "this":Lccsancom/google/common/collect/AbstractMapBasedMultiset$1;, "Lccsancom/google/common/collect/AbstractMapBasedMultiset$1;"
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultiset$1;->this$0:Lccsancom/google/common/collect/AbstractMapBasedMultiset;

    iget-object v0, v0, Lccsancom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lccsancom/google/common/collect/ObjectCountHashMap;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/ObjectCountHashMap;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
