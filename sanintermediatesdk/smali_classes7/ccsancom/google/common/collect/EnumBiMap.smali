.class public final Lccsancom/google/common/collect/EnumBiMap;
.super Lccsancom/google/common/collect/AbstractBiMap;
.source "EnumBiMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Enum<",
        "TK;>;V:",
        "Ljava/lang/Enum<",
        "TV;>;>",
        "Lccsancom/google/common/collect/AbstractBiMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient keyType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TK;>;"
        }
    .end annotation
.end field

.field private transient valueType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Class<",
            "TV;>;)V"
        }
    .end annotation

    .line 72
    .local p0, "this":Lccsancom/google/common/collect/EnumBiMap;, "Lccsancom/google/common/collect/EnumBiMap<TK;TV;>;"
    .local p1, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, p1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    new-instance v1, Ljava/util/EnumMap;

    invoke-direct {v1, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-direct {p0, v0, v1}, Lccsancom/google/common/collect/AbstractBiMap;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 73
    iput-object p1, p0, Lccsancom/google/common/collect/EnumBiMap;->keyType:Ljava/lang/Class;

    .line 74
    iput-object p2, p0, Lccsancom/google/common/collect/EnumBiMap;->valueType:Ljava/lang/Class;

    .line 75
    return-void
.end method

.method public static create(Ljava/lang/Class;Ljava/lang/Class;)Lccsancom/google/common/collect/EnumBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Enum<",
            "TK;>;V:",
            "Ljava/lang/Enum<",
            "TV;>;>(",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Class<",
            "TV;>;)",
            "Lccsancom/google/common/collect/EnumBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 53
    .local p0, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p1, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    new-instance v0, Lccsancom/google/common/collect/EnumBiMap;

    invoke-direct {v0, p0, p1}, Lccsancom/google/common/collect/EnumBiMap;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static create(Ljava/util/Map;)Lccsancom/google/common/collect/EnumBiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Enum<",
            "TK;>;V:",
            "Ljava/lang/Enum<",
            "TV;>;>(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Lccsancom/google/common/collect/EnumBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 66
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {p0}, Lccsancom/google/common/collect/EnumBiMap;->inferKeyType(Ljava/util/Map;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0}, Lccsancom/google/common/collect/EnumBiMap;->inferValueType(Ljava/util/Map;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/google/common/collect/EnumBiMap;->create(Ljava/lang/Class;Ljava/lang/Class;)Lccsancom/google/common/collect/EnumBiMap;

    move-result-object v0

    .line 67
    .local v0, "bimap":Lccsancom/google/common/collect/EnumBiMap;, "Lccsancom/google/common/collect/EnumBiMap<TK;TV;>;"
    invoke-virtual {v0, p0}, Lccsancom/google/common/collect/EnumBiMap;->putAll(Ljava/util/Map;)V

    .line 68
    return-object v0
.end method

.method static inferKeyType(Ljava/util/Map;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Enum<",
            "TK;>;>(",
            "Ljava/util/Map<",
            "TK;*>;)",
            "Ljava/lang/Class<",
            "TK;>;"
        }
    .end annotation

    .line 78
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;*>;"
    instance-of v0, p0, Lccsancom/google/common/collect/EnumBiMap;

    if-eqz v0, :cond_0

    .line 79
    move-object v0, p0

    check-cast v0, Lccsancom/google/common/collect/EnumBiMap;

    invoke-virtual {v0}, Lccsancom/google/common/collect/EnumBiMap;->keyType()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 81
    :cond_0
    instance-of v0, p0, Lccsancom/google/common/collect/EnumHashBiMap;

    if-eqz v0, :cond_1

    .line 82
    move-object v0, p0

    check-cast v0, Lccsancom/google/common/collect/EnumHashBiMap;

    invoke-virtual {v0}, Lccsancom/google/common/collect/EnumHashBiMap;->keyType()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 84
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 85
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static inferValueType(Ljava/util/Map;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Enum<",
            "TV;>;>(",
            "Ljava/util/Map<",
            "*TV;>;)",
            "Ljava/lang/Class<",
            "TV;>;"
        }
    .end annotation

    .line 89
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<*TV;>;"
    instance-of v0, p0, Lccsancom/google/common/collect/EnumBiMap;

    if-eqz v0, :cond_0

    .line 90
    move-object v0, p0

    check-cast v0, Lccsancom/google/common/collect/EnumBiMap;

    iget-object v0, v0, Lccsancom/google/common/collect/EnumBiMap;->valueType:Ljava/lang/Class;

    return-object v0

    .line 92
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lccsancom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 93
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 131
    .local p0, "this":Lccsancom/google/common/collect/EnumBiMap;, "Lccsancom/google/common/collect/EnumBiMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 132
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lccsancom/google/common/collect/EnumBiMap;->keyType:Ljava/lang/Class;

    .line 133
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lccsancom/google/common/collect/EnumBiMap;->valueType:Ljava/lang/Class;

    .line 134
    new-instance v0, Ljava/util/EnumMap;

    iget-object v1, p0, Lccsancom/google/common/collect/EnumBiMap;->keyType:Ljava/lang/Class;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    new-instance v1, Ljava/util/EnumMap;

    iget-object v2, p0, Lccsancom/google/common/collect/EnumBiMap;->valueType:Ljava/lang/Class;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v1}, Lccsancom/google/common/collect/EnumBiMap;->setDelegates(Ljava/util/Map;Ljava/util/Map;)V

    .line 135
    invoke-static {p0, p1}, Lccsancom/google/common/collect/Serialization;->populateMap(Ljava/util/Map;Ljava/io/ObjectInputStream;)V

    .line 136
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    .local p0, "this":Lccsancom/google/common/collect/EnumBiMap;, "Lccsancom/google/common/collect/EnumBiMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 123
    iget-object v0, p0, Lccsancom/google/common/collect/EnumBiMap;->keyType:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lccsancom/google/common/collect/EnumBiMap;->valueType:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 125
    invoke-static {p0, p1}, Lccsancom/google/common/collect/Serialization;->writeMap(Ljava/util/Map;Ljava/io/ObjectOutputStream;)V

    .line 126
    return-void
.end method


# virtual methods
.method checkKey(Ljava/lang/Enum;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 108
    .local p0, "this":Lccsancom/google/common/collect/EnumBiMap;, "Lccsancom/google/common/collect/EnumBiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Enum;, "TK;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    return-object v0
.end method

.method bridge synthetic checkKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    .local p0, "this":Lccsancom/google/common/collect/EnumBiMap;, "Lccsancom/google/common/collect/EnumBiMap<TK;TV;>;"
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/EnumBiMap;->checkKey(Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p1

    return-object p1
.end method

.method checkValue(Ljava/lang/Enum;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 113
    .local p0, "this":Lccsancom/google/common/collect/EnumBiMap;, "Lccsancom/google/common/collect/EnumBiMap<TK;TV;>;"
    .local p1, "value":Ljava/lang/Enum;, "TV;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    return-object v0
.end method

.method bridge synthetic checkValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    .local p0, "this":Lccsancom/google/common/collect/EnumBiMap;, "Lccsancom/google/common/collect/EnumBiMap<TK;TV;>;"
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/EnumBiMap;->checkValue(Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clear()V
    .locals 0

    .line 40
    .local p0, "this":Lccsancom/google/common/collect/EnumBiMap;, "Lccsancom/google/common/collect/EnumBiMap<TK;TV;>;"
    invoke-super {p0}, Lccsancom/google/common/collect/AbstractBiMap;->clear()V

    return-void
.end method

.method public bridge synthetic containsValue(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 40
    .local p0, "this":Lccsancom/google/common/collect/EnumBiMap;, "Lccsancom/google/common/collect/EnumBiMap<TK;TV;>;"
    invoke-super {p0, p1}, Lccsancom/google/common/collect/AbstractBiMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 40
    .local p0, "this":Lccsancom/google/common/collect/EnumBiMap;, "Lccsancom/google/common/collect/EnumBiMap<TK;TV;>;"
    invoke-super {p0}, Lccsancom/google/common/collect/AbstractBiMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic inverse()Lccsancom/google/common/collect/BiMap;
    .locals 1

    .line 40
    .local p0, "this":Lccsancom/google/common/collect/EnumBiMap;, "Lccsancom/google/common/collect/EnumBiMap<TK;TV;>;"
    invoke-super {p0}, Lccsancom/google/common/collect/AbstractBiMap;->inverse()Lccsancom/google/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 40
    .local p0, "this":Lccsancom/google/common/collect/EnumBiMap;, "Lccsancom/google/common/collect/EnumBiMap<TK;TV;>;"
    invoke-super {p0}, Lccsancom/google/common/collect/AbstractBiMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keyType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TK;>;"
        }
    .end annotation

    .line 98
    .local p0, "this":Lccsancom/google/common/collect/EnumBiMap;, "Lccsancom/google/common/collect/EnumBiMap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/EnumBiMap;->keyType:Ljava/lang/Class;

    return-object v0
.end method

.method public bridge synthetic putAll(Ljava/util/Map;)V
    .locals 0

    .line 40
    .local p0, "this":Lccsancom/google/common/collect/EnumBiMap;, "Lccsancom/google/common/collect/EnumBiMap<TK;TV;>;"
    invoke-super {p0, p1}, Lccsancom/google/common/collect/AbstractBiMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public valueType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TV;>;"
        }
    .end annotation

    .line 103
    .local p0, "this":Lccsancom/google/common/collect/EnumBiMap;, "Lccsancom/google/common/collect/EnumBiMap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/EnumBiMap;->valueType:Ljava/lang/Class;

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Set;
    .locals 1

    .line 40
    .local p0, "this":Lccsancom/google/common/collect/EnumBiMap;, "Lccsancom/google/common/collect/EnumBiMap<TK;TV;>;"
    invoke-super {p0}, Lccsancom/google/common/collect/AbstractBiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
