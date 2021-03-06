.class public final Lccsancom/google/common/collect/MapMaker;
.super Ljava/lang/Object;
.source "MapMaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/collect/MapMaker$Dummy;
    }
.end annotation


# static fields
.field private static final DEFAULT_CONCURRENCY_LEVEL:I = 0x4

.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field static final UNSET_INT:I = -0x1


# instance fields
.field concurrencyLevel:I

.field initialCapacity:I

.field keyEquivalence:Lccsancom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field keyStrength:Lccsancom/google/common/collect/MapMakerInternalMap$Strength;
    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field useCustomMap:Z

.field valueStrength:Lccsancom/google/common/collect/MapMakerInternalMap$Strength;
    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/google/common/collect/MapMaker;->initialCapacity:I

    .line 99
    iput v0, p0, Lccsancom/google/common/collect/MapMaker;->concurrencyLevel:I

    .line 110
    return-void
.end method


# virtual methods
.method public concurrencyLevel(I)Lccsancom/google/common/collect/MapMaker;
    .locals 5
    .param p1, "concurrencyLevel"    # I

    .line 178
    iget v0, p0, Lccsancom/google/common/collect/MapMaker;->concurrencyLevel:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "concurrency level was already set to %s"

    invoke-static {v3, v4, v0}, Lccsancom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;I)V

    .line 182
    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lccsancom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 183
    iput p1, p0, Lccsancom/google/common/collect/MapMaker;->concurrencyLevel:I

    .line 184
    return-object p0
.end method

.method getConcurrencyLevel()I
    .locals 2

    .line 188
    iget v0, p0, Lccsancom/google/common/collect/MapMaker;->concurrencyLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :cond_0
    return v0
.end method

.method getInitialCapacity()I
    .locals 2

    .line 154
    iget v0, p0, Lccsancom/google/common/collect/MapMaker;->initialCapacity:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    :cond_0
    return v0
.end method

.method getKeyEquivalence()Lccsancom/google/common/base/Equivalence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lccsancom/google/common/collect/MapMaker;->keyEquivalence:Lccsancom/google/common/base/Equivalence;

    invoke-virtual {p0}, Lccsancom/google/common/collect/MapMaker;->getKeyStrength()Lccsancom/google/common/collect/MapMakerInternalMap$Strength;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/google/common/collect/MapMakerInternalMap$Strength;->defaultEquivalence()Lccsancom/google/common/base/Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/base/Equivalence;

    return-object v0
.end method

.method getKeyStrength()Lccsancom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 2

    .line 219
    iget-object v0, p0, Lccsancom/google/common/collect/MapMaker;->keyStrength:Lccsancom/google/common/collect/MapMakerInternalMap$Strength;

    sget-object v1, Lccsancom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lccsancom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-static {v0, v1}, Lccsancom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method

.method getValueStrength()Lccsancom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 2

    .line 265
    iget-object v0, p0, Lccsancom/google/common/collect/MapMaker;->valueStrength:Lccsancom/google/common/collect/MapMakerInternalMap$Strength;

    sget-object v1, Lccsancom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lccsancom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-static {v0, v1}, Lccsancom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method

.method public initialCapacity(I)Lccsancom/google/common/collect/MapMaker;
    .locals 5
    .param p1, "initialCapacity"    # I

    .line 144
    iget v0, p0, Lccsancom/google/common/collect/MapMaker;->initialCapacity:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "initial capacity was already set to %s"

    invoke-static {v3, v4, v0}, Lccsancom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;I)V

    .line 148
    if-ltz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lccsancom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 149
    iput p1, p0, Lccsancom/google/common/collect/MapMaker;->initialCapacity:I

    .line 150
    return-object p0
.end method

.method keyEquivalence(Lccsancom/google/common/base/Equivalence;)Lccsancom/google/common/collect/MapMaker;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;)",
            "Lccsancom/google/common/collect/MapMaker;"
        }
    .end annotation

    .line 122
    .local p1, "equivalence":Lccsancom/google/common/base/Equivalence;, "Lccsancom/google/common/base/Equivalence<Ljava/lang/Object;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/MapMaker;->keyEquivalence:Lccsancom/google/common/base/Equivalence;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "key equivalence was already set to %s"

    invoke-static {v2, v3, v0}, Lccsancom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 123
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/base/Equivalence;

    iput-object v0, p0, Lccsancom/google/common/collect/MapMaker;->keyEquivalence:Lccsancom/google/common/base/Equivalence;

    .line 124
    iput-boolean v1, p0, Lccsancom/google/common/collect/MapMaker;->useCustomMap:Z

    .line 125
    return-object p0
.end method

.method public makeMap()Ljava/util/concurrent/ConcurrentMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 280
    iget-boolean v0, p0, Lccsancom/google/common/collect/MapMaker;->useCustomMap:Z

    if-nez v0, :cond_0

    .line 281
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lccsancom/google/common/collect/MapMaker;->getInitialCapacity()I

    move-result v1

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-virtual {p0}, Lccsancom/google/common/collect/MapMaker;->getConcurrencyLevel()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    return-object v0

    .line 283
    :cond_0
    invoke-static {p0}, Lccsancom/google/common/collect/MapMakerInternalMap;->create(Lccsancom/google/common/collect/MapMaker;)Lccsancom/google/common/collect/MapMakerInternalMap;

    move-result-object v0

    return-object v0
.end method

.method setKeyStrength(Lccsancom/google/common/collect/MapMakerInternalMap$Strength;)Lccsancom/google/common/collect/MapMaker;
    .locals 4
    .param p1, "strength"    # Lccsancom/google/common/collect/MapMakerInternalMap$Strength;

    .line 209
    iget-object v0, p0, Lccsancom/google/common/collect/MapMaker;->keyStrength:Lccsancom/google/common/collect/MapMakerInternalMap$Strength;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Key strength was already set to %s"

    invoke-static {v2, v3, v0}, Lccsancom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 210
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/MapMakerInternalMap$Strength;

    iput-object v0, p0, Lccsancom/google/common/collect/MapMaker;->keyStrength:Lccsancom/google/common/collect/MapMakerInternalMap$Strength;

    .line 211
    sget-object v0, Lccsancom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lccsancom/google/common/collect/MapMakerInternalMap$Strength;

    if-eq p1, v0, :cond_1

    .line 213
    iput-boolean v1, p0, Lccsancom/google/common/collect/MapMaker;->useCustomMap:Z

    .line 215
    :cond_1
    return-object p0
.end method

.method setValueStrength(Lccsancom/google/common/collect/MapMakerInternalMap$Strength;)Lccsancom/google/common/collect/MapMaker;
    .locals 4
    .param p1, "strength"    # Lccsancom/google/common/collect/MapMakerInternalMap$Strength;

    .line 255
    iget-object v0, p0, Lccsancom/google/common/collect/MapMaker;->valueStrength:Lccsancom/google/common/collect/MapMakerInternalMap$Strength;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Value strength was already set to %s"

    invoke-static {v2, v3, v0}, Lccsancom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 256
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/MapMakerInternalMap$Strength;

    iput-object v0, p0, Lccsancom/google/common/collect/MapMaker;->valueStrength:Lccsancom/google/common/collect/MapMakerInternalMap$Strength;

    .line 257
    sget-object v0, Lccsancom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lccsancom/google/common/collect/MapMakerInternalMap$Strength;

    if-eq p1, v0, :cond_1

    .line 259
    iput-boolean v1, p0, Lccsancom/google/common/collect/MapMaker;->useCustomMap:Z

    .line 261
    :cond_1
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 292
    invoke-static {p0}, Lccsancom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lccsancom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 293
    .local v0, "s":Lccsancom/google/common/base/MoreObjects$ToStringHelper;
    iget v1, p0, Lccsancom/google/common/collect/MapMaker;->initialCapacity:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 294
    const-string v3, "initialCapacity"

    invoke-virtual {v0, v3, v1}, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lccsancom/google/common/base/MoreObjects$ToStringHelper;

    .line 296
    :cond_0
    iget v1, p0, Lccsancom/google/common/collect/MapMaker;->concurrencyLevel:I

    if-eq v1, v2, :cond_1

    .line 297
    const-string v2, "concurrencyLevel"

    invoke-virtual {v0, v2, v1}, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lccsancom/google/common/base/MoreObjects$ToStringHelper;

    .line 299
    :cond_1
    iget-object v1, p0, Lccsancom/google/common/collect/MapMaker;->keyStrength:Lccsancom/google/common/collect/MapMakerInternalMap$Strength;

    if-eqz v1, :cond_2

    .line 300
    invoke-virtual {v1}, Lccsancom/google/common/collect/MapMakerInternalMap$Strength;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "keyStrength"

    invoke-virtual {v0, v2, v1}, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/google/common/base/MoreObjects$ToStringHelper;

    .line 302
    :cond_2
    iget-object v1, p0, Lccsancom/google/common/collect/MapMaker;->valueStrength:Lccsancom/google/common/collect/MapMakerInternalMap$Strength;

    if-eqz v1, :cond_3

    .line 303
    invoke-virtual {v1}, Lccsancom/google/common/collect/MapMakerInternalMap$Strength;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "valueStrength"

    invoke-virtual {v0, v2, v1}, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/google/common/base/MoreObjects$ToStringHelper;

    .line 305
    :cond_3
    iget-object v1, p0, Lccsancom/google/common/collect/MapMaker;->keyEquivalence:Lccsancom/google/common/base/Equivalence;

    if-eqz v1, :cond_4

    .line 306
    const-string v1, "keyEquivalence"

    invoke-virtual {v0, v1}, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->addValue(Ljava/lang/Object;)Lccsancom/google/common/base/MoreObjects$ToStringHelper;

    .line 308
    :cond_4
    invoke-virtual {v0}, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public weakKeys()Lccsancom/google/common/collect/MapMaker;
    .locals 1

    .line 205
    sget-object v0, Lccsancom/google/common/collect/MapMakerInternalMap$Strength;->WEAK:Lccsancom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {p0, v0}, Lccsancom/google/common/collect/MapMaker;->setKeyStrength(Lccsancom/google/common/collect/MapMakerInternalMap$Strength;)Lccsancom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public weakValues()Lccsancom/google/common/collect/MapMaker;
    .locals 1

    .line 241
    sget-object v0, Lccsancom/google/common/collect/MapMakerInternalMap$Strength;->WEAK:Lccsancom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {p0, v0}, Lccsancom/google/common/collect/MapMaker;->setValueStrength(Lccsancom/google/common/collect/MapMakerInternalMap$Strength;)Lccsancom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method
