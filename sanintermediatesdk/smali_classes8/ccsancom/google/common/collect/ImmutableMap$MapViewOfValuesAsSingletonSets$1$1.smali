.class Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;
.super Lccsancom/google/common/collect/AbstractMapEntry;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;->next()Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/AbstractMapEntry<",
        "TK;",
        "Lccsancom/google/common/collect/ImmutableSet<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;

.field final synthetic val$backingEntry:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;Ljava/util/Map$Entry;)V
    .locals 0
    .param p1, "this$2"    # Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;

    .line 666
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;, "Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;"
    iput-object p1, p0, Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;->this$2:Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;

    iput-object p2, p0, Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;->val$backingEntry:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lccsancom/google/common/collect/AbstractMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 669
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;, "Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;->val$backingEntry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lccsancom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableSet<",
            "TV;>;"
        }
    .end annotation

    .line 674
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;, "Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;->val$backingEntry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 666
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;, "Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;->getValue()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
