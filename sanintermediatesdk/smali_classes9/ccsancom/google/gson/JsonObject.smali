.class public final Lccsancom/google/gson/JsonObject;
.super Lccsancom/google/gson/JsonElement;
.source "JsonObject.java"


# instance fields
.field private final members:Lccsancom/google/gson/internal/LinkedTreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/gson/internal/LinkedTreeMap<",
            "Ljava/lang/String;",
            "Lccsancom/google/gson/JsonElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lccsancom/google/gson/JsonElement;-><init>()V

    .line 33
    new-instance v0, Lccsancom/google/gson/internal/LinkedTreeMap;

    invoke-direct {v0}, Lccsancom/google/gson/internal/LinkedTreeMap;-><init>()V

    iput-object v0, p0, Lccsancom/google/gson/JsonObject;->members:Lccsancom/google/gson/internal/LinkedTreeMap;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Lccsancom/google/gson/JsonElement;

    .line 58
    iget-object v0, p0, Lccsancom/google/gson/JsonObject;->members:Lccsancom/google/gson/internal/LinkedTreeMap;

    if-nez p2, :cond_0

    sget-object v1, Lccsancom/google/gson/JsonNull;->INSTANCE:Lccsancom/google/gson/JsonNull;

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    invoke-virtual {v0, p1, v1}, Lccsancom/google/gson/internal/LinkedTreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    .line 102
    if-nez p2, :cond_0

    sget-object v0, Lccsancom/google/gson/JsonNull;->INSTANCE:Lccsancom/google/gson/JsonNull;

    goto :goto_0

    :cond_0
    new-instance v0, Lccsancom/google/gson/JsonPrimitive;

    invoke-direct {v0, p2}, Lccsancom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    :goto_0
    invoke-virtual {p0, p1, v0}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 103
    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Character;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Character;

    .line 113
    if-nez p2, :cond_0

    sget-object v0, Lccsancom/google/gson/JsonNull;->INSTANCE:Lccsancom/google/gson/JsonNull;

    goto :goto_0

    :cond_0
    new-instance v0, Lccsancom/google/gson/JsonPrimitive;

    invoke-direct {v0, p2}, Lccsancom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Character;)V

    :goto_0
    invoke-virtual {p0, p1, v0}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 114
    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Number;

    .line 91
    if-nez p2, :cond_0

    sget-object v0, Lccsancom/google/gson/JsonNull;->INSTANCE:Lccsancom/google/gson/JsonNull;

    goto :goto_0

    :cond_0
    new-instance v0, Lccsancom/google/gson/JsonPrimitive;

    invoke-direct {v0, p2}, Lccsancom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    :goto_0
    invoke-virtual {p0, p1, v0}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 92
    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 80
    if-nez p2, :cond_0

    sget-object v0, Lccsancom/google/gson/JsonNull;->INSTANCE:Lccsancom/google/gson/JsonNull;

    goto :goto_0

    :cond_0
    new-instance v0, Lccsancom/google/gson/JsonPrimitive;

    invoke-direct {v0, p2}, Lccsancom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1, v0}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 81
    return-void
.end method

.method public bridge synthetic deepCopy()Lccsancom/google/gson/JsonElement;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lccsancom/google/gson/JsonObject;->deepCopy()Lccsancom/google/gson/JsonObject;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lccsancom/google/gson/JsonObject;
    .locals 5

    .line 42
    new-instance v0, Lccsancom/google/gson/JsonObject;

    invoke-direct {v0}, Lccsancom/google/gson/JsonObject;-><init>()V

    .line 43
    .local v0, "result":Lccsancom/google/gson/JsonObject;
    iget-object v1, p0, Lccsancom/google/gson/JsonObject;->members:Lccsancom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v1}, Lccsancom/google/gson/internal/LinkedTreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 44
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lccsancom/google/gson/JsonElement;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/google/gson/JsonElement;

    invoke-virtual {v4}, Lccsancom/google/gson/JsonElement;->deepCopy()Lccsancom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lccsancom/google/gson/JsonObject;->add(Ljava/lang/String;Lccsancom/google/gson/JsonElement;)V

    .line 45
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lccsancom/google/gson/JsonElement;>;"
    goto :goto_0

    .line 46
    :cond_0
    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lccsancom/google/gson/JsonElement;",
            ">;>;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lccsancom/google/gson/JsonObject;->members:Lccsancom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lccsancom/google/gson/internal/LinkedTreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 197
    if-eq p1, p0, :cond_1

    instance-of v0, p1, Lccsancom/google/gson/JsonObject;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lccsancom/google/gson/JsonObject;

    iget-object v0, v0, Lccsancom/google/gson/JsonObject;->members:Lccsancom/google/gson/internal/LinkedTreeMap;

    iget-object v1, p0, Lccsancom/google/gson/JsonObject;->members:Lccsancom/google/gson/internal/LinkedTreeMap;

    .line 198
    invoke-virtual {v0, v1}, Lccsancom/google/gson/internal/LinkedTreeMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 197
    :goto_1
    return v0
.end method

.method public get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;
    .locals 1
    .param p1, "memberName"    # Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lccsancom/google/gson/JsonObject;->members:Lccsancom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lccsancom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/gson/JsonElement;

    return-object v0
.end method

.method public getAsJsonArray(Ljava/lang/String;)Lccsancom/google/gson/JsonArray;
    .locals 1
    .param p1, "memberName"    # Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lccsancom/google/gson/JsonObject;->members:Lccsancom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lccsancom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/gson/JsonArray;

    return-object v0
.end method

.method public getAsJsonObject(Ljava/lang/String;)Lccsancom/google/gson/JsonObject;
    .locals 1
    .param p1, "memberName"    # Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lccsancom/google/gson/JsonObject;->members:Lccsancom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lccsancom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/gson/JsonObject;

    return-object v0
.end method

.method public getAsJsonPrimitive(Ljava/lang/String;)Lccsancom/google/gson/JsonPrimitive;
    .locals 1
    .param p1, "memberName"    # Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lccsancom/google/gson/JsonObject;->members:Lccsancom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lccsancom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/gson/JsonPrimitive;

    return-object v0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1
    .param p1, "memberName"    # Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lccsancom/google/gson/JsonObject;->members:Lccsancom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lccsancom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 203
    iget-object v0, p0, Lccsancom/google/gson/JsonObject;->members:Lccsancom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lccsancom/google/gson/internal/LinkedTreeMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lccsancom/google/gson/JsonObject;->members:Lccsancom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lccsancom/google/gson/internal/LinkedTreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lccsancom/google/gson/JsonObject;->members:Lccsancom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lccsancom/google/gson/internal/LinkedTreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/gson/JsonElement;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 142
    iget-object v0, p0, Lccsancom/google/gson/JsonObject;->members:Lccsancom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lccsancom/google/gson/internal/LinkedTreeMap;->size()I

    move-result v0

    return v0
.end method
