.class Lccsancom/google/common/collect/EnumMultiset$2;
.super Lccsancom/google/common/collect/EnumMultiset$Itr;
.source "EnumMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/EnumMultiset;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/EnumMultiset<",
        "TE;>.Itr<",
        "Lccsancom/google/common/collect/Multiset$Entry<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/EnumMultiset;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/EnumMultiset;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/EnumMultiset;

    .line 259
    .local p0, "this":Lccsancom/google/common/collect/EnumMultiset$2;, "Lccsancom/google/common/collect/EnumMultiset$2;"
    iput-object p1, p0, Lccsancom/google/common/collect/EnumMultiset$2;->this$0:Lccsancom/google/common/collect/EnumMultiset;

    invoke-direct {p0, p1}, Lccsancom/google/common/collect/EnumMultiset$Itr;-><init>(Lccsancom/google/common/collect/EnumMultiset;)V

    return-void
.end method


# virtual methods
.method output(I)Lccsancom/google/common/collect/Multiset$Entry;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsancom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 262
    .local p0, "this":Lccsancom/google/common/collect/EnumMultiset$2;, "Lccsancom/google/common/collect/EnumMultiset$2;"
    new-instance v0, Lccsancom/google/common/collect/EnumMultiset$2$1;

    invoke-direct {v0, p0, p1}, Lccsancom/google/common/collect/EnumMultiset$2$1;-><init>(Lccsancom/google/common/collect/EnumMultiset$2;I)V

    return-object v0
.end method

.method bridge synthetic output(I)Ljava/lang/Object;
    .locals 0

    .line 259
    .local p0, "this":Lccsancom/google/common/collect/EnumMultiset$2;, "Lccsancom/google/common/collect/EnumMultiset$2;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/EnumMultiset$2;->output(I)Lccsancom/google/common/collect/Multiset$Entry;

    move-result-object p1

    return-object p1
.end method
