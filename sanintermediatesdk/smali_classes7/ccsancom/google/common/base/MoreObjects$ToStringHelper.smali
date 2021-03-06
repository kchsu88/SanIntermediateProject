.class public final Lccsancom/google/common/base/MoreObjects$ToStringHelper;
.super Ljava/lang/Object;
.source "MoreObjects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/base/MoreObjects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ToStringHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;
    }
.end annotation


# instance fields
.field private final className:Ljava/lang/String;

.field private final holderHead:Lccsancom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

.field private holderTail:Lccsancom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

.field private omitNullValues:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Lccsancom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsancom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;-><init>(Lccsancom/google/common/base/MoreObjects$1;)V

    iput-object v0, p0, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->holderHead:Lccsancom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    .line 143
    iput-object v0, p0, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->holderTail:Lccsancom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->omitNullValues:Z

    .line 148
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->className:Ljava/lang/String;

    .line 149
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lccsancom/google/common/base/MoreObjects$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lccsancom/google/common/base/MoreObjects$1;

    .line 140
    invoke-direct {p0, p1}, Lccsancom/google/common/base/MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private addHolder()Lccsancom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;
    .locals 2

    .line 361
    new-instance v0, Lccsancom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsancom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;-><init>(Lccsancom/google/common/base/MoreObjects$1;)V

    .line 362
    .local v0, "valueHolder":Lccsancom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;
    iget-object v1, p0, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->holderTail:Lccsancom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    iput-object v0, v1, Lccsancom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;->next:Lccsancom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    iput-object v0, p0, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->holderTail:Lccsancom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    .line 363
    return-object v0
.end method

.method private addHolder(Ljava/lang/Object;)Lccsancom/google/common/base/MoreObjects$ToStringHelper;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 367
    invoke-direct {p0}, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->addHolder()Lccsancom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    move-result-object v0

    .line 368
    .local v0, "valueHolder":Lccsancom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;
    iput-object p1, v0, Lccsancom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    .line 369
    return-object p0
.end method

.method private addHolder(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/google/common/base/MoreObjects$ToStringHelper;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 373
    invoke-direct {p0}, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->addHolder()Lccsancom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    move-result-object v0

    .line 374
    .local v0, "valueHolder":Lccsancom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;
    iput-object p2, v0, Lccsancom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    .line 375
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lccsancom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    .line 376
    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/String;C)Lccsancom/google/common/base/MoreObjects$ToStringHelper;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # C

    .line 191
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/String;D)Lccsancom/google/common/base/MoreObjects$ToStringHelper;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D

    .line 201
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/String;F)Lccsancom/google/common/base/MoreObjects$ToStringHelper;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 211
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/String;I)Lccsancom/google/common/base/MoreObjects$ToStringHelper;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 221
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/String;J)Lccsancom/google/common/base/MoreObjects$ToStringHelper;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 231
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/google/common/base/MoreObjects$ToStringHelper;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 171
    invoke-direct {p0, p1, p2}, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/String;Z)Lccsancom/google/common/base/MoreObjects$ToStringHelper;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 181
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public addValue(C)Lccsancom/google/common/base/MoreObjects$ToStringHelper;
    .locals 1
    .param p1, "value"    # C

    .line 268
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lccsancom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public addValue(D)Lccsancom/google/common/base/MoreObjects$ToStringHelper;
    .locals 1
    .param p1, "value"    # D

    .line 281
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lccsancom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public addValue(F)Lccsancom/google/common/base/MoreObjects$ToStringHelper;
    .locals 1
    .param p1, "value"    # F

    .line 294
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lccsancom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public addValue(I)Lccsancom/google/common/base/MoreObjects$ToStringHelper;
    .locals 1
    .param p1, "value"    # I

    .line 307
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lccsancom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public addValue(J)Lccsancom/google/common/base/MoreObjects$ToStringHelper;
    .locals 1
    .param p1, "value"    # J

    .line 320
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lccsancom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public addValue(Ljava/lang/Object;)Lccsancom/google/common/base/MoreObjects$ToStringHelper;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 242
    invoke-direct {p0, p1}, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lccsancom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public addValue(Z)Lccsancom/google/common/base/MoreObjects$ToStringHelper;
    .locals 1
    .param p1, "value"    # Z

    .line 255
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lccsancom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public omitNullValues()Lccsancom/google/common/base/MoreObjects$ToStringHelper;
    .locals 1

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->omitNullValues:Z

    .line 161
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 334
    iget-boolean v0, p0, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->omitNullValues:Z

    .line 335
    .local v0, "omitNullValuesSnapshot":Z
    const-string v1, ""

    .line 336
    .local v1, "nextSeparator":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v3, p0, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 337
    .local v2, "builder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->holderHead:Lccsancom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    iget-object v3, v3, Lccsancom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;->next:Lccsancom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    .line 338
    .local v3, "valueHolder":Lccsancom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;
    :goto_0
    if-eqz v3, :cond_4

    .line 340
    iget-object v4, v3, Lccsancom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    .line 341
    .local v4, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    if-eqz v4, :cond_3

    .line 342
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    const-string v1, ", "

    .line 345
    iget-object v5, v3, Lccsancom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 346
    iget-object v5, v3, Lccsancom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x3d

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 348
    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 349
    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    .line 350
    .local v6, "objectArray":[Ljava/lang/Object;
    invoke-static {v6}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 351
    .local v7, "arrayString":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-virtual {v2, v7, v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 352
    .end local v6    # "objectArray":[Ljava/lang/Object;
    .end local v7    # "arrayString":Ljava/lang/String;
    goto :goto_1

    .line 353
    :cond_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 339
    .end local v4    # "value":Ljava/lang/Object;
    :cond_3
    :goto_1
    iget-object v3, v3, Lccsancom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;->next:Lccsancom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;

    goto :goto_0

    .line 357
    .end local v3    # "valueHolder":Lccsancom/google/common/base/MoreObjects$ToStringHelper$ValueHolder;
    :cond_4
    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
