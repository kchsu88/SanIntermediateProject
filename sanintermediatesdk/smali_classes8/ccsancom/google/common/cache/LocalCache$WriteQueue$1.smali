.class Lccsancom/google/common/cache/LocalCache$WriteQueue$1;
.super Lccsancom/google/common/cache/LocalCache$AbstractReferenceEntry;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/cache/LocalCache$WriteQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/cache/LocalCache$AbstractReferenceEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field nextWrite:Lccsancom/google/common/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field previousWrite:Lccsancom/google/common/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lccsancom/google/common/cache/LocalCache$WriteQueue;


# direct methods
.method constructor <init>(Lccsancom/google/common/cache/LocalCache$WriteQueue;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/cache/LocalCache$WriteQueue;

    .line 3518
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WriteQueue$1;, "Lccsancom/google/common/cache/LocalCache$WriteQueue$1;"
    iput-object p1, p0, Lccsancom/google/common/cache/LocalCache$WriteQueue$1;->this$0:Lccsancom/google/common/cache/LocalCache$WriteQueue;

    invoke-direct {p0}, Lccsancom/google/common/cache/LocalCache$AbstractReferenceEntry;-><init>()V

    .line 3528
    iput-object p0, p0, Lccsancom/google/common/cache/LocalCache$WriteQueue$1;->nextWrite:Lccsancom/google/common/cache/ReferenceEntry;

    .line 3540
    iput-object p0, p0, Lccsancom/google/common/cache/LocalCache$WriteQueue$1;->previousWrite:Lccsancom/google/common/cache/ReferenceEntry;

    return-void
.end method


# virtual methods
.method public getNextInWriteQueue()Lccsancom/google/common/cache/ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3532
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WriteQueue$1;, "Lccsancom/google/common/cache/LocalCache$WriteQueue$1;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$WriteQueue$1;->nextWrite:Lccsancom/google/common/cache/ReferenceEntry;

    return-object v0
.end method

.method public getPreviousInWriteQueue()Lccsancom/google/common/cache/ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3544
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WriteQueue$1;, "Lccsancom/google/common/cache/LocalCache$WriteQueue$1;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$WriteQueue$1;->previousWrite:Lccsancom/google/common/cache/ReferenceEntry;

    return-object v0
.end method

.method public getWriteTime()J
    .locals 2

    .line 3522
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WriteQueue$1;, "Lccsancom/google/common/cache/LocalCache$WriteQueue$1;"
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public setNextInWriteQueue(Lccsancom/google/common/cache/ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 3537
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WriteQueue$1;, "Lccsancom/google/common/cache/LocalCache$WriteQueue$1;"
    .local p1, "next":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lccsancom/google/common/cache/LocalCache$WriteQueue$1;->nextWrite:Lccsancom/google/common/cache/ReferenceEntry;

    .line 3538
    return-void
.end method

.method public setPreviousInWriteQueue(Lccsancom/google/common/cache/ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 3549
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WriteQueue$1;, "Lccsancom/google/common/cache/LocalCache$WriteQueue$1;"
    .local p1, "previous":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lccsancom/google/common/cache/LocalCache$WriteQueue$1;->previousWrite:Lccsancom/google/common/cache/ReferenceEntry;

    .line 3550
    return-void
.end method

.method public setWriteTime(J)V
    .locals 0
    .param p1, "time"    # J

    .line 3526
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WriteQueue$1;, "Lccsancom/google/common/cache/LocalCache$WriteQueue$1;"
    return-void
.end method
