.class final Lccsancom/google/common/collect/HashBiMap$EntryForValue;
.super Lccsancom/google/common/collect/AbstractMapEntry;
.source "HashBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/HashBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EntryForValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/AbstractMapEntry<",
        "TV;TK;>;"
    }
.end annotation


# instance fields
.field final biMap:Lccsancom/google/common/collect/HashBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/HashBiMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field index:I

.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/HashBiMap;I)V
    .locals 1
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/HashBiMap<",
            "TK;TV;>;I)V"
        }
    .end annotation

    .line 1033
    .local p0, "this":Lccsancom/google/common/collect/HashBiMap$EntryForValue;, "Lccsancom/google/common/collect/HashBiMap$EntryForValue<TK;TV;>;"
    .local p1, "biMap":Lccsancom/google/common/collect/HashBiMap;, "Lccsancom/google/common/collect/HashBiMap<TK;TV;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/AbstractMapEntry;-><init>()V

    .line 1034
    iput-object p1, p0, Lccsancom/google/common/collect/HashBiMap$EntryForValue;->biMap:Lccsancom/google/common/collect/HashBiMap;

    .line 1035
    iget-object v0, p1, Lccsancom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aget-object v0, v0, p2

    iput-object v0, p0, Lccsancom/google/common/collect/HashBiMap$EntryForValue;->value:Ljava/lang/Object;

    .line 1036
    iput p2, p0, Lccsancom/google/common/collect/HashBiMap$EntryForValue;->index:I

    .line 1037
    return-void
.end method

.method private updateIndex()V
    .locals 3

    .line 1040
    .local p0, "this":Lccsancom/google/common/collect/HashBiMap$EntryForValue;, "Lccsancom/google/common/collect/HashBiMap$EntryForValue<TK;TV;>;"
    iget v0, p0, Lccsancom/google/common/collect/HashBiMap$EntryForValue;->index:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lccsancom/google/common/collect/HashBiMap$EntryForValue;->biMap:Lccsancom/google/common/collect/HashBiMap;

    iget v1, v1, Lccsancom/google/common/collect/HashBiMap;->size:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lccsancom/google/common/collect/HashBiMap$EntryForValue;->value:Ljava/lang/Object;

    iget-object v1, p0, Lccsancom/google/common/collect/HashBiMap$EntryForValue;->biMap:Lccsancom/google/common/collect/HashBiMap;

    iget-object v1, v1, Lccsancom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    iget v2, p0, Lccsancom/google/common/collect/HashBiMap$EntryForValue;->index:I

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lccsancom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1041
    :cond_0
    iget-object v0, p0, Lccsancom/google/common/collect/HashBiMap$EntryForValue;->biMap:Lccsancom/google/common/collect/HashBiMap;

    iget-object v1, p0, Lccsancom/google/common/collect/HashBiMap$EntryForValue;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lccsancom/google/common/collect/HashBiMap;->findEntryByValue(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lccsancom/google/common/collect/HashBiMap$EntryForValue;->index:I

    .line 1043
    :cond_1
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1047
    .local p0, "this":Lccsancom/google/common/collect/HashBiMap$EntryForValue;, "Lccsancom/google/common/collect/HashBiMap$EntryForValue<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/HashBiMap$EntryForValue;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1052
    .local p0, "this":Lccsancom/google/common/collect/HashBiMap$EntryForValue;, "Lccsancom/google/common/collect/HashBiMap$EntryForValue<TK;TV;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/HashBiMap$EntryForValue;->updateIndex()V

    .line 1053
    iget v0, p0, Lccsancom/google/common/collect/HashBiMap$EntryForValue;->index:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/google/common/collect/HashBiMap$EntryForValue;->biMap:Lccsancom/google/common/collect/HashBiMap;

    iget-object v0, v0, Lccsancom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    iget v1, p0, Lccsancom/google/common/collect/HashBiMap$EntryForValue;->index:I

    aget-object v0, v0, v1

    :goto_0
    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 1058
    .local p0, "this":Lccsancom/google/common/collect/HashBiMap$EntryForValue;, "Lccsancom/google/common/collect/HashBiMap$EntryForValue<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0}, Lccsancom/google/common/collect/HashBiMap$EntryForValue;->updateIndex()V

    .line 1059
    iget v0, p0, Lccsancom/google/common/collect/HashBiMap$EntryForValue;->index:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1060
    iget-object v0, p0, Lccsancom/google/common/collect/HashBiMap$EntryForValue;->biMap:Lccsancom/google/common/collect/HashBiMap;

    iget-object v2, p0, Lccsancom/google/common/collect/HashBiMap$EntryForValue;->value:Ljava/lang/Object;

    invoke-virtual {v0, v2, p1, v1}, Lccsancom/google/common/collect/HashBiMap;->putInverse(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1062
    :cond_0
    iget-object v0, p0, Lccsancom/google/common/collect/HashBiMap$EntryForValue;->biMap:Lccsancom/google/common/collect/HashBiMap;

    iget-object v0, v0, Lccsancom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    iget v2, p0, Lccsancom/google/common/collect/HashBiMap$EntryForValue;->index:I

    aget-object v0, v0, v2

    .line 1063
    .local v0, "oldKey":Ljava/lang/Object;, "TK;"
    invoke-static {v0, p1}, Lccsancom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1064
    return-object p1

    .line 1066
    :cond_1
    iget-object v2, p0, Lccsancom/google/common/collect/HashBiMap$EntryForValue;->biMap:Lccsancom/google/common/collect/HashBiMap;

    iget v3, p0, Lccsancom/google/common/collect/HashBiMap$EntryForValue;->index:I

    invoke-static {v2, v3, p1, v1}, Lccsancom/google/common/collect/HashBiMap;->access$400(Lccsancom/google/common/collect/HashBiMap;ILjava/lang/Object;Z)V

    .line 1067
    return-object v0
.end method
