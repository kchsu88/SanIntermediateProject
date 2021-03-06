.class public final Lccsancom/google/gson/JsonArray;
.super Lccsancom/google/gson/JsonElement;
.source "JsonArray.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/gson/JsonElement;",
        "Ljava/lang/Iterable<",
        "Lccsancom/google/gson/JsonElement;",
        ">;"
    }
.end annotation


# instance fields
.field private final elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/google/gson/JsonElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lccsancom/google/gson/JsonElement;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/google/gson/JsonArray;->elements:Ljava/util/List;

    .line 41
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .line 43
    invoke-direct {p0}, Lccsancom/google/gson/JsonElement;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lccsancom/google/gson/JsonArray;->elements:Ljava/util/List;

    .line 45
    return-void
.end method


# virtual methods
.method public add(Lccsancom/google/gson/JsonElement;)V
    .locals 1
    .param p1, "element"    # Lccsancom/google/gson/JsonElement;

    .line 105
    if-nez p1, :cond_0

    .line 106
    sget-object p1, Lccsancom/google/gson/JsonNull;->INSTANCE:Lccsancom/google/gson/JsonNull;

    .line 108
    :cond_0
    iget-object v0, p0, Lccsancom/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public add(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "bool"    # Ljava/lang/Boolean;

    .line 69
    iget-object v0, p0, Lccsancom/google/gson/JsonArray;->elements:Ljava/util/List;

    if-nez p1, :cond_0

    sget-object v1, Lccsancom/google/gson/JsonNull;->INSTANCE:Lccsancom/google/gson/JsonNull;

    goto :goto_0

    :cond_0
    new-instance v1, Lccsancom/google/gson/JsonPrimitive;

    invoke-direct {v1, p1}, Lccsancom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method public add(Ljava/lang/Character;)V
    .locals 2
    .param p1, "character"    # Ljava/lang/Character;

    .line 78
    iget-object v0, p0, Lccsancom/google/gson/JsonArray;->elements:Ljava/util/List;

    if-nez p1, :cond_0

    sget-object v1, Lccsancom/google/gson/JsonNull;->INSTANCE:Lccsancom/google/gson/JsonNull;

    goto :goto_0

    :cond_0
    new-instance v1, Lccsancom/google/gson/JsonPrimitive;

    invoke-direct {v1, p1}, Lccsancom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Character;)V

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method public add(Ljava/lang/Number;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/Number;

    .line 87
    iget-object v0, p0, Lccsancom/google/gson/JsonArray;->elements:Ljava/util/List;

    if-nez p1, :cond_0

    sget-object v1, Lccsancom/google/gson/JsonNull;->INSTANCE:Lccsancom/google/gson/JsonNull;

    goto :goto_0

    :cond_0
    new-instance v1, Lccsancom/google/gson/JsonPrimitive;

    invoke-direct {v1, p1}, Lccsancom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method

.method public add(Ljava/lang/String;)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lccsancom/google/gson/JsonArray;->elements:Ljava/util/List;

    if-nez p1, :cond_0

    sget-object v1, Lccsancom/google/gson/JsonNull;->INSTANCE:Lccsancom/google/gson/JsonNull;

    goto :goto_0

    :cond_0
    new-instance v1, Lccsancom/google/gson/JsonPrimitive;

    invoke-direct {v1, p1}, Lccsancom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method public addAll(Lccsancom/google/gson/JsonArray;)V
    .locals 2
    .param p1, "array"    # Lccsancom/google/gson/JsonArray;

    .line 117
    iget-object v0, p0, Lccsancom/google/gson/JsonArray;->elements:Ljava/util/List;

    iget-object v1, p1, Lccsancom/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 118
    return-void
.end method

.method public contains(Lccsancom/google/gson/JsonElement;)Z
    .locals 1
    .param p1, "element"    # Lccsancom/google/gson/JsonElement;

    .line 163
    iget-object v0, p0, Lccsancom/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public deepCopy()Lccsancom/google/gson/JsonArray;
    .locals 4

    .line 53
    iget-object v0, p0, Lccsancom/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    new-instance v0, Lccsancom/google/gson/JsonArray;

    iget-object v1, p0, Lccsancom/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lccsancom/google/gson/JsonArray;-><init>(I)V

    .line 55
    .local v0, "result":Lccsancom/google/gson/JsonArray;
    iget-object v1, p0, Lccsancom/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/gson/JsonElement;

    .line 56
    .local v2, "element":Lccsancom/google/gson/JsonElement;
    invoke-virtual {v2}, Lccsancom/google/gson/JsonElement;->deepCopy()Lccsancom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v0, v3}, Lccsancom/google/gson/JsonArray;->add(Lccsancom/google/gson/JsonElement;)V

    .line 57
    .end local v2    # "element":Lccsancom/google/gson/JsonElement;
    goto :goto_0

    .line 58
    :cond_0
    return-object v0

    .line 60
    .end local v0    # "result":Lccsancom/google/gson/JsonArray;
    :cond_1
    new-instance v0, Lccsancom/google/gson/JsonArray;

    invoke-direct {v0}, Lccsancom/google/gson/JsonArray;-><init>()V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lccsancom/google/gson/JsonElement;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lccsancom/google/gson/JsonArray;->deepCopy()Lccsancom/google/gson/JsonArray;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 377
    if-eq p1, p0, :cond_1

    instance-of v0, p1, Lccsancom/google/gson/JsonArray;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lccsancom/google/gson/JsonArray;

    iget-object v0, v0, Lccsancom/google/gson/JsonArray;->elements:Ljava/util/List;

    iget-object v1, p0, Lccsancom/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public get(I)Lccsancom/google/gson/JsonElement;
    .locals 1
    .param p1, "i"    # I

    .line 194
    iget-object v0, p0, Lccsancom/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/gson/JsonElement;

    return-object v0
.end method

.method public getAsBigDecimal()Ljava/math/BigDecimal;
    .locals 2

    .line 256
    iget-object v0, p0, Lccsancom/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 257
    iget-object v0, p0, Lccsancom/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/gson/JsonElement;

    invoke-virtual {v0}, Lccsancom/google/gson/JsonElement;->getAsBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 259
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsBigInteger()Ljava/math/BigInteger;
    .locals 2

    .line 273
    iget-object v0, p0, Lccsancom/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 274
    iget-object v0, p0, Lccsancom/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/gson/JsonElement;

    invoke-virtual {v0}, Lccsancom/google/gson/JsonElement;->getAsBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 276
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsBoolean()Z
    .locals 2

    .line 369
    iget-object v0, p0, Lccsancom/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 370
    iget-object v0, p0, Lccsancom/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/gson/JsonElement;

    invoke-virtual {v0}, Lccsancom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    return v0

    .line 372
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsByte()B
    .locals 2

    .line 329
    iget-object v0, p0, Lccsancom/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 330
    iget-object v0, p0, Lccsancom/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/gson/JsonElement;

    invoke-virtual {v0}, Lccsancom/google/gson/JsonElement;->getAsByte()B

    move-result v0

    return v0

    .line 332
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsCharacter()C
    .locals 2

    .line 337
    iget-object v0, p0, Lccsancom/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 338
    iget-object v0, p0, Lccsancom/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/gson/JsonElement;

    invoke-virtual {v0}, Lccsancom/google/gson/JsonElement;->getAsCharacter()C

    move-result v0

    return v0

    .line 340
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsDouble()D
    .locals 2

    .line 239
    iget-object v0, p0, Lccsancom/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 240
    iget-object v0, p0, Lccsancom/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/gson/JsonElement;

    invoke-virtual {v0}, Lccsancom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v0

    return-wide v0

    .line 242
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsFloat()F
    .locals 2

    .line 289
    iget-object v0, p0, Lccsancom/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 290
    iget-object v0, p0, Lccsancom/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/gson/JsonElement;

    invoke-virtual {v0}, Lccsancom/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    return v0

    .line 292
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsInt()I
    .locals 2

    .line 321
    iget-object v0, p0, Lccsancom/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 322
    iget-object v0, p0, Lccsancom/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/gson/JsonElement;

    invoke-virtual {v0}, Lccsancom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    return v0

    .line 324
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsLong()J
    .locals 2

    .line 305
    iget-object v0, p0, Lccsancom/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 306
    iget-object v0, p0, Lccsancom/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/gson/JsonElement;

    invoke-virtual {v0}, Lccsancom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v0

    return-wide v0

    .line 308
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsNumber()Ljava/lang/Number;
    .locals 2

    .line 207
    iget-object v0, p0, Lccsancom/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 208
    iget-object v0, p0, Lccsancom/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/gson/JsonElement;

    invoke-virtual {v0}, Lccsancom/google/gson/JsonElement;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    return-object v0

    .line 210
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsShort()S
    .locals 2

    .line 353
    iget-object v0, p0, Lccsancom/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 354
    iget-object v0, p0, Lccsancom/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/gson/JsonElement;

    invoke-virtual {v0}, Lccsancom/google/gson/JsonElement;->getAsShort()S

    move-result v0

    return v0

    .line 356
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsString()Ljava/lang/String;
    .locals 2

    .line 223
    iget-object v0, p0, Lccsancom/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 224
    iget-object v0, p0, Lccsancom/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/gson/JsonElement;

    invoke-virtual {v0}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 226
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .line 382
    iget-object v0, p0, Lccsancom/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lccsancom/google/gson/JsonElement;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lccsancom/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Lccsancom/google/gson/JsonElement;
    .locals 1
    .param p1, "index"    # I

    .line 153
    iget-object v0, p0, Lccsancom/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/gson/JsonElement;

    return-object v0
.end method

.method public remove(Lccsancom/google/gson/JsonElement;)Z
    .locals 1
    .param p1, "element"    # Lccsancom/google/gson/JsonElement;

    .line 140
    iget-object v0, p0, Lccsancom/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public set(ILccsancom/google/gson/JsonElement;)Lccsancom/google/gson/JsonElement;
    .locals 1
    .param p1, "index"    # I
    .param p2, "element"    # Lccsancom/google/gson/JsonElement;

    .line 129
    iget-object v0, p0, Lccsancom/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/gson/JsonElement;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 172
    iget-object v0, p0, Lccsancom/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
