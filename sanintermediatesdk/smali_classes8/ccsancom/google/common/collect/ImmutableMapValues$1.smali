.class Lccsancom/google/common/collect/ImmutableMapValues$1;
.super Lccsancom/google/common/collect/UnmodifiableIterator;
.source "ImmutableMapValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/ImmutableMapValues;->iterator()Lccsancom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/UnmodifiableIterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final entryItr:Lccsancom/google/common/collect/UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/UnmodifiableIterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lccsancom/google/common/collect/ImmutableMapValues;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/ImmutableMapValues;)V
    .locals 1
    .param p1, "this$0"    # Lccsancom/google/common/collect/ImmutableMapValues;

    .line 46
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMapValues$1;, "Lccsancom/google/common/collect/ImmutableMapValues$1;"
    iput-object p1, p0, Lccsancom/google/common/collect/ImmutableMapValues$1;->this$0:Lccsancom/google/common/collect/ImmutableMapValues;

    invoke-direct {p0}, Lccsancom/google/common/collect/UnmodifiableIterator;-><init>()V

    .line 47
    invoke-static {p1}, Lccsancom/google/common/collect/ImmutableMapValues;->access$000(Lccsancom/google/common/collect/ImmutableMapValues;)Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMap;->entrySet()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableSet;->iterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/collect/ImmutableMapValues$1;->entryItr:Lccsancom/google/common/collect/UnmodifiableIterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 51
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMapValues$1;, "Lccsancom/google/common/collect/ImmutableMapValues$1;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMapValues$1;->entryItr:Lccsancom/google/common/collect/UnmodifiableIterator;

    invoke-virtual {v0}, Lccsancom/google/common/collect/UnmodifiableIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 56
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMapValues$1;, "Lccsancom/google/common/collect/ImmutableMapValues$1;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMapValues$1;->entryItr:Lccsancom/google/common/collect/UnmodifiableIterator;

    invoke-virtual {v0}, Lccsancom/google/common/collect/UnmodifiableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
