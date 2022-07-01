.class Lccsancom/google/common/cache/LocalCache$AccessQueue$1;
.super Lccsancom/google/common/cache/LocalCache$AbstractReferenceEntry;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/cache/LocalCache$AccessQueue;
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
.field nextAccess:Lccsancom/google/common/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field previousAccess:Lccsancom/google/common/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lccsancom/google/common/cache/LocalCache$AccessQueue;


# direct methods
.method constructor <init>(Lccsancom/google/common/cache/LocalCache$AccessQueue;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/cache/LocalCache$AccessQueue;

    .line 3657
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$AccessQueue$1;, "Lccsancom/google/common/cache/LocalCache$AccessQueue$1;"
    iput-object p1, p0, Lccsancom/google/common/cache/LocalCache$AccessQueue$1;->this$0:Lccsancom/google/common/cache/LocalCache$AccessQueue;

    invoke-direct {p0}, Lccsancom/google/common/cache/LocalCache$AbstractReferenceEntry;-><init>()V

    .line 3667
    iput-object p0, p0, Lccsancom/google/common/cache/LocalCache$AccessQueue$1;->nextAccess:Lccsancom/google/common/cache/ReferenceEntry;

    .line 3679
    iput-object p0, p0, Lccsancom/google/common/cache/LocalCache$AccessQueue$1;->previousAccess:Lccsancom/google/common/cache/ReferenceEntry;

    return-void
.end method


# virtual methods
.method public getAccessTime()J
    .locals 2

    .line 3661
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$AccessQueue$1;, "Lccsancom/google/common/cache/LocalCache$AccessQueue$1;"
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getNextInAccessQueue()Lccsancom/google/common/cache/ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3671
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$AccessQueue$1;, "Lccsancom/google/common/cache/LocalCache$AccessQueue$1;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$AccessQueue$1;->nextAccess:Lccsancom/google/common/cache/ReferenceEntry;

    return-object v0
.end method

.method public getPreviousInAccessQueue()Lccsancom/google/common/cache/ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3683
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$AccessQueue$1;, "Lccsancom/google/common/cache/LocalCache$AccessQueue$1;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$AccessQueue$1;->previousAccess:Lccsancom/google/common/cache/ReferenceEntry;

    return-object v0
.end method

.method public setAccessTime(J)V
    .locals 0
    .param p1, "time"    # J

    .line 3665
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$AccessQueue$1;, "Lccsancom/google/common/cache/LocalCache$AccessQueue$1;"
    return-void
.end method

.method public setNextInAccessQueue(Lccsancom/google/common/cache/ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 3676
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$AccessQueue$1;, "Lccsancom/google/common/cache/LocalCache$AccessQueue$1;"
    .local p1, "next":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lccsancom/google/common/cache/LocalCache$AccessQueue$1;->nextAccess:Lccsancom/google/common/cache/ReferenceEntry;

    .line 3677
    return-void
.end method

.method public setPreviousInAccessQueue(Lccsancom/google/common/cache/ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 3688
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$AccessQueue$1;, "Lccsancom/google/common/cache/LocalCache$AccessQueue$1;"
    .local p1, "previous":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lccsancom/google/common/cache/LocalCache$AccessQueue$1;->previousAccess:Lccsancom/google/common/cache/ReferenceEntry;

    .line 3689
    return-void
.end method
