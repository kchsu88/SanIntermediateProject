.class Lccsancom/google/common/collect/RegularImmutableMap$EntrySet$1;
.super Lccsancom/google/common/collect/ImmutableList;
.source "RegularImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;->createAsList()Lccsancom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/ImmutableList<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;

    .line 194
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableMap$EntrySet$1;, "Lccsancom/google/common/collect/RegularImmutableMap$EntrySet$1;"
    iput-object p1, p0, Lccsancom/google/common/collect/RegularImmutableMap$EntrySet$1;->this$0:Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;

    invoke-direct {p0}, Lccsancom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 194
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableMap$EntrySet$1;, "Lccsancom/google/common/collect/RegularImmutableMap$EntrySet$1;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/RegularImmutableMap$EntrySet$1;->get(I)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Ljava/util/Map$Entry;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 197
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableMap$EntrySet$1;, "Lccsancom/google/common/collect/RegularImmutableMap$EntrySet$1;"
    iget-object v0, p0, Lccsancom/google/common/collect/RegularImmutableMap$EntrySet$1;->this$0:Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;

    invoke-static {v0}, Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;->access$000(Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;)I

    move-result v0

    invoke-static {p1, v0}, Lccsancom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 199
    iget-object v0, p0, Lccsancom/google/common/collect/RegularImmutableMap$EntrySet$1;->this$0:Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;

    invoke-static {v0}, Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;->access$100(Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;)[Ljava/lang/Object;

    move-result-object v0

    mul-int/lit8 v1, p1, 0x2

    iget-object v2, p0, Lccsancom/google/common/collect/RegularImmutableMap$EntrySet$1;->this$0:Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;

    invoke-static {v2}, Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;->access$200(Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;)I

    move-result v2

    add-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 201
    .local v0, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lccsancom/google/common/collect/RegularImmutableMap$EntrySet$1;->this$0:Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;

    invoke-static {v1}, Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;->access$100(Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;)[Ljava/lang/Object;

    move-result-object v1

    mul-int/lit8 v2, p1, 0x2

    iget-object v3, p0, Lccsancom/google/common/collect/RegularImmutableMap$EntrySet$1;->this$0:Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;

    invoke-static {v3}, Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;->access$200(Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;)I

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    .line 202
    .local v1, "value":Ljava/lang/Object;, "TV;"
    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v2, v0, v1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public isPartialView()Z
    .locals 1

    .line 212
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableMap$EntrySet$1;, "Lccsancom/google/common/collect/RegularImmutableMap$EntrySet$1;"
    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .line 207
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableMap$EntrySet$1;, "Lccsancom/google/common/collect/RegularImmutableMap$EntrySet$1;"
    iget-object v0, p0, Lccsancom/google/common/collect/RegularImmutableMap$EntrySet$1;->this$0:Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;

    invoke-static {v0}, Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;->access$000(Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;)I

    move-result v0

    return v0
.end method
