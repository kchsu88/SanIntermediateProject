.class Lccsancom/google/common/collect/Maps$IteratorBasedAbstractMap$1;
.super Lccsancom/google/common/collect/Maps$EntrySet;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/Maps$IteratorBasedAbstractMap;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/Maps$EntrySet<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/Maps$IteratorBasedAbstractMap;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/Maps$IteratorBasedAbstractMap;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/Maps$IteratorBasedAbstractMap;

    .line 3376
    .local p0, "this":Lccsancom/google/common/collect/Maps$IteratorBasedAbstractMap$1;, "Lccsancom/google/common/collect/Maps$IteratorBasedAbstractMap$1;"
    iput-object p1, p0, Lccsancom/google/common/collect/Maps$IteratorBasedAbstractMap$1;->this$0:Lccsancom/google/common/collect/Maps$IteratorBasedAbstractMap;

    invoke-direct {p0}, Lccsancom/google/common/collect/Maps$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 3384
    .local p0, "this":Lccsancom/google/common/collect/Maps$IteratorBasedAbstractMap$1;, "Lccsancom/google/common/collect/Maps$IteratorBasedAbstractMap$1;"
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$IteratorBasedAbstractMap$1;->this$0:Lccsancom/google/common/collect/Maps$IteratorBasedAbstractMap;

    invoke-virtual {v0}, Lccsancom/google/common/collect/Maps$IteratorBasedAbstractMap;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method map()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3379
    .local p0, "this":Lccsancom/google/common/collect/Maps$IteratorBasedAbstractMap$1;, "Lccsancom/google/common/collect/Maps$IteratorBasedAbstractMap$1;"
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$IteratorBasedAbstractMap$1;->this$0:Lccsancom/google/common/collect/Maps$IteratorBasedAbstractMap;

    return-object v0
.end method
