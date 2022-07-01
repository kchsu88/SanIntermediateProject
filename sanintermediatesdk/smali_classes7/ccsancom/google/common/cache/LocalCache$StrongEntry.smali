.class Lccsancom/google/common/cache/LocalCache$StrongEntry;
.super Lccsancom/google/common/cache/LocalCache$AbstractReferenceEntry;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StrongEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/cache/LocalCache$AbstractReferenceEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final hash:I

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final next:Lccsancom/google/common/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field volatile valueReference:Lccsancom/google/common/cache/LocalCache$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILccsancom/google/common/cache/ReferenceEntry;)V
    .locals 1
    .param p2, "hash"    # I
    .param p3    # Lccsancom/google/common/cache/ReferenceEntry;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 939
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$StrongEntry;, "Lccsancom/google/common/cache/LocalCache$StrongEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "next":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-direct {p0}, Lccsancom/google/common/cache/LocalCache$AbstractReferenceEntry;-><init>()V

    .line 954
    invoke-static {}, Lccsancom/google/common/cache/LocalCache;->unset()Lccsancom/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/cache/LocalCache$StrongEntry;->valueReference:Lccsancom/google/common/cache/LocalCache$ValueReference;

    .line 940
    iput-object p1, p0, Lccsancom/google/common/cache/LocalCache$StrongEntry;->key:Ljava/lang/Object;

    .line 941
    iput p2, p0, Lccsancom/google/common/cache/LocalCache$StrongEntry;->hash:I

    .line 942
    iput-object p3, p0, Lccsancom/google/common/cache/LocalCache$StrongEntry;->next:Lccsancom/google/common/cache/ReferenceEntry;

    .line 943
    return-void
.end method


# virtual methods
.method public getHash()I
    .locals 1

    .line 968
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$StrongEntry;, "Lccsancom/google/common/cache/LocalCache$StrongEntry<TK;TV;>;"
    iget v0, p0, Lccsancom/google/common/cache/LocalCache$StrongEntry;->hash:I

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 947
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$StrongEntry;, "Lccsancom/google/common/cache/LocalCache$StrongEntry<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$StrongEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getNext()Lccsancom/google/common/cache/ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 973
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$StrongEntry;, "Lccsancom/google/common/cache/LocalCache$StrongEntry<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$StrongEntry;->next:Lccsancom/google/common/cache/ReferenceEntry;

    return-object v0
.end method

.method public getValueReference()Lccsancom/google/common/cache/LocalCache$ValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation

    .line 958
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$StrongEntry;, "Lccsancom/google/common/cache/LocalCache$StrongEntry<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$StrongEntry;->valueReference:Lccsancom/google/common/cache/LocalCache$ValueReference;

    return-object v0
.end method

.method public setValueReference(Lccsancom/google/common/cache/LocalCache$ValueReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 963
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$StrongEntry;, "Lccsancom/google/common/cache/LocalCache$StrongEntry<TK;TV;>;"
    .local p1, "valueReference":Lccsancom/google/common/cache/LocalCache$ValueReference;, "Lccsancom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    iput-object p1, p0, Lccsancom/google/common/cache/LocalCache$StrongEntry;->valueReference:Lccsancom/google/common/cache/LocalCache$ValueReference;

    .line 964
    return-void
.end method
