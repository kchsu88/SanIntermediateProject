.class final Lccsancom/google/common/cache/LocalCache$WriteThroughEntry;
.super Ljava/lang/Object;
.source "LocalCache.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WriteThroughEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lccsancom/google/common/cache/LocalCache;

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsancom/google/common/cache/LocalCache;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/cache/LocalCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 4314
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WriteThroughEntry;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>.WriteThroughEntry;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lccsancom/google/common/cache/LocalCache$WriteThroughEntry;->this$0:Lccsancom/google/common/cache/LocalCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4315
    iput-object p2, p0, Lccsancom/google/common/cache/LocalCache$WriteThroughEntry;->key:Ljava/lang/Object;

    .line 4316
    iput-object p3, p0, Lccsancom/google/common/cache/LocalCache$WriteThroughEntry;->value:Ljava/lang/Object;

    .line 4317
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 4332
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WriteThroughEntry;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>.WriteThroughEntry;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4333
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 4334
    .local v0, "that":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Lccsancom/google/common/cache/LocalCache$WriteThroughEntry;->key:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lccsancom/google/common/cache/LocalCache$WriteThroughEntry;->value:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 4336
    .end local v0    # "that":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_1
    return v1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 4321
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WriteThroughEntry;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>.WriteThroughEntry;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$WriteThroughEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 4326
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WriteThroughEntry;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>.WriteThroughEntry;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$WriteThroughEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 4342
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WriteThroughEntry;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>.WriteThroughEntry;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$WriteThroughEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lccsancom/google/common/cache/LocalCache$WriteThroughEntry;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 4347
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WriteThroughEntry;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>.WriteThroughEntry;"
    .local p1, "newValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$WriteThroughEntry;->this$0:Lccsancom/google/common/cache/LocalCache;

    iget-object v1, p0, Lccsancom/google/common/cache/LocalCache$WriteThroughEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lccsancom/google/common/cache/LocalCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4348
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lccsancom/google/common/cache/LocalCache$WriteThroughEntry;->value:Ljava/lang/Object;

    .line 4349
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 4354
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WriteThroughEntry;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>.WriteThroughEntry;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lccsancom/google/common/cache/LocalCache$WriteThroughEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/google/common/cache/LocalCache$WriteThroughEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
