.class final Lccsancom/google/common/collect/Interners$InternerImpl;
.super Ljava/lang/Object;
.source "Interners.java"

# interfaces
.implements Lccsancom/google/common/collect/Interner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/Interners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InternerImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsancom/google/common/collect/Interner<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final map:Lccsancom/google/common/collect/MapMakerInternalMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/MapMakerInternalMap<",
            "TE;",
            "Lccsancom/google/common/collect/MapMaker$Dummy;",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lccsancom/google/common/collect/MapMaker;)V
    .locals 1
    .param p1, "mapMaker"    # Lccsancom/google/common/collect/MapMaker;

    .line 118
    .local p0, "this":Lccsancom/google/common/collect/Interners$InternerImpl;, "Lccsancom/google/common/collect/Interners$InternerImpl<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    nop

    .line 120
    invoke-static {}, Lccsancom/google/common/base/Equivalence;->equals()Lccsancom/google/common/base/Equivalence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsancom/google/common/collect/MapMaker;->keyEquivalence(Lccsancom/google/common/base/Equivalence;)Lccsancom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/MapMakerInternalMap;->createWithDummyValues(Lccsancom/google/common/collect/MapMaker;)Lccsancom/google/common/collect/MapMakerInternalMap;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/collect/Interners$InternerImpl;->map:Lccsancom/google/common/collect/MapMakerInternalMap;

    .line 121
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/common/collect/MapMaker;Lccsancom/google/common/collect/Interners$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/common/collect/MapMaker;
    .param p2, "x1"    # Lccsancom/google/common/collect/Interners$1;

    .line 114
    .local p0, "this":Lccsancom/google/common/collect/Interners$InternerImpl;, "Lccsancom/google/common/collect/Interners$InternerImpl<TE;>;"
    invoke-direct {p0, p1}, Lccsancom/google/common/collect/Interners$InternerImpl;-><init>(Lccsancom/google/common/collect/MapMaker;)V

    return-void
.end method


# virtual methods
.method public intern(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 127
    .local p0, "this":Lccsancom/google/common/collect/Interners$InternerImpl;, "Lccsancom/google/common/collect/Interners$InternerImpl<TE;>;"
    .local p1, "sample":Ljava/lang/Object;, "TE;"
    :goto_0
    iget-object v0, p0, Lccsancom/google/common/collect/Interners$InternerImpl;->map:Lccsancom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/MapMakerInternalMap;->getEntry(Ljava/lang/Object;)Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    .line 128
    .local v0, "entry":Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry<TE;Lccsancom/google/common/collect/MapMaker$Dummy;*>;"
    if-eqz v0, :cond_0

    .line 129
    invoke-interface {v0}, Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 130
    .local v1, "canonical":Ljava/lang/Object;, "TE;"
    if-eqz v1, :cond_0

    .line 131
    return-object v1

    .line 136
    .end local v1    # "canonical":Ljava/lang/Object;, "TE;"
    :cond_0
    iget-object v1, p0, Lccsancom/google/common/collect/Interners$InternerImpl;->map:Lccsancom/google/common/collect/MapMakerInternalMap;

    sget-object v2, Lccsancom/google/common/collect/MapMaker$Dummy;->VALUE:Lccsancom/google/common/collect/MapMaker$Dummy;

    invoke-virtual {v1, p1, v2}, Lccsancom/google/common/collect/MapMakerInternalMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/common/collect/MapMaker$Dummy;

    .line 137
    .local v1, "sneaky":Lccsancom/google/common/collect/MapMaker$Dummy;
    if-nez v1, :cond_1

    .line 138
    return-object p1

    .line 147
    .end local v0    # "entry":Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry<TE;Lccsancom/google/common/collect/MapMaker$Dummy;*>;"
    .end local v1    # "sneaky":Lccsancom/google/common/collect/MapMaker$Dummy;
    :cond_1
    goto :goto_0
.end method
