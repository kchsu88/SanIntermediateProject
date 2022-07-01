.class Lccsancom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap$1EntrySetImpl;
.super Lccsancom/google/common/collect/ImmutableMapEntrySet;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap;->createEntrySet()Lccsancom/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySetImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/ImmutableMapEntrySet<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap;

    .line 419
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap$1EntrySetImpl;, "Lccsancom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap$1EntrySetImpl;"
    iput-object p1, p0, Lccsancom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap$1EntrySetImpl;->this$0:Lccsancom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap;

    invoke-direct {p0}, Lccsancom/google/common/collect/ImmutableMapEntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Lccsancom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/UnmodifiableIterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 427
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap$1EntrySetImpl;, "Lccsancom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap$1EntrySetImpl;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap$1EntrySetImpl;->this$0:Lccsancom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap;->entryIterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 418
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap$1EntrySetImpl;, "Lccsancom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap$1EntrySetImpl;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap$1EntrySetImpl;->iterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method map()Lccsancom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 422
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap$1EntrySetImpl;, "Lccsancom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap$1EntrySetImpl;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap$1EntrySetImpl;->this$0:Lccsancom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap;

    return-object v0
.end method
