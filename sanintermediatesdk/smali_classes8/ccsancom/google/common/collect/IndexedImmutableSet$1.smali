.class Lccsancom/google/common/collect/IndexedImmutableSet$1;
.super Lccsancom/google/common/collect/ImmutableList;
.source "IndexedImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/IndexedImmutableSet;->createAsList()Lccsancom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/ImmutableList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/IndexedImmutableSet;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/IndexedImmutableSet;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/IndexedImmutableSet;

    .line 39
    .local p0, "this":Lccsancom/google/common/collect/IndexedImmutableSet$1;, "Lccsancom/google/common/collect/IndexedImmutableSet$1;"
    iput-object p1, p0, Lccsancom/google/common/collect/IndexedImmutableSet$1;->this$0:Lccsancom/google/common/collect/IndexedImmutableSet;

    invoke-direct {p0}, Lccsancom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 42
    .local p0, "this":Lccsancom/google/common/collect/IndexedImmutableSet$1;, "Lccsancom/google/common/collect/IndexedImmutableSet$1;"
    iget-object v0, p0, Lccsancom/google/common/collect/IndexedImmutableSet$1;->this$0:Lccsancom/google/common/collect/IndexedImmutableSet;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/IndexedImmutableSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .line 47
    .local p0, "this":Lccsancom/google/common/collect/IndexedImmutableSet$1;, "Lccsancom/google/common/collect/IndexedImmutableSet$1;"
    iget-object v0, p0, Lccsancom/google/common/collect/IndexedImmutableSet$1;->this$0:Lccsancom/google/common/collect/IndexedImmutableSet;

    invoke-virtual {v0}, Lccsancom/google/common/collect/IndexedImmutableSet;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 52
    .local p0, "this":Lccsancom/google/common/collect/IndexedImmutableSet$1;, "Lccsancom/google/common/collect/IndexedImmutableSet$1;"
    iget-object v0, p0, Lccsancom/google/common/collect/IndexedImmutableSet$1;->this$0:Lccsancom/google/common/collect/IndexedImmutableSet;

    invoke-virtual {v0}, Lccsancom/google/common/collect/IndexedImmutableSet;->size()I

    move-result v0

    return v0
.end method
