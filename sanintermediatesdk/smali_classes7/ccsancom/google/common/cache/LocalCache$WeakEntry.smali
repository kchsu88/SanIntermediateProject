.class Lccsancom/google/common/cache/LocalCache$WeakEntry;
.super Ljava/lang/ref/WeakReference;
.source "LocalCache.java"

# interfaces
.implements Lccsancom/google/common/cache/ReferenceEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WeakEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference<",
        "TK;>;",
        "Lccsancom/google/common/cache/ReferenceEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final hash:I

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
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILccsancom/google/common/cache/ReferenceEntry;)V
    .locals 1
    .param p3, "hash"    # I
    .param p4    # Lccsancom/google/common/cache/ReferenceEntry;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;TK;I",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1158
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WeakEntry;, "Lccsancom/google/common/cache/LocalCache$WeakEntry<TK;TV;>;"
    .local p1, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TK;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "next":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1241
    invoke-static {}, Lccsancom/google/common/cache/LocalCache;->unset()Lccsancom/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/cache/LocalCache$WeakEntry;->valueReference:Lccsancom/google/common/cache/LocalCache$ValueReference;

    .line 1159
    iput p3, p0, Lccsancom/google/common/cache/LocalCache$WeakEntry;->hash:I

    .line 1160
    iput-object p4, p0, Lccsancom/google/common/cache/LocalCache$WeakEntry;->next:Lccsancom/google/common/cache/ReferenceEntry;

    .line 1161
    return-void
.end method


# virtual methods
.method public getAccessTime()J
    .locals 1

    .line 1177
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WeakEntry;, "Lccsancom/google/common/cache/LocalCache$WeakEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getHash()I
    .locals 1

    .line 1255
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WeakEntry;, "Lccsancom/google/common/cache/LocalCache$WeakEntry<TK;TV;>;"
    iget v0, p0, Lccsancom/google/common/cache/LocalCache$WeakEntry;->hash:I

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1165
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WeakEntry;, "Lccsancom/google/common/cache/LocalCache$WeakEntry<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/cache/LocalCache$WeakEntry;->get()Ljava/lang/Object;

    move-result-object v0

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

    .line 1260
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WeakEntry;, "Lccsancom/google/common/cache/LocalCache$WeakEntry<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$WeakEntry;->next:Lccsancom/google/common/cache/ReferenceEntry;

    return-object v0
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

    .line 1187
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WeakEntry;, "Lccsancom/google/common/cache/LocalCache$WeakEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNextInWriteQueue()Lccsancom/google/common/cache/ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1219
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WeakEntry;, "Lccsancom/google/common/cache/LocalCache$WeakEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .line 1197
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WeakEntry;, "Lccsancom/google/common/cache/LocalCache$WeakEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .line 1229
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WeakEntry;, "Lccsancom/google/common/cache/LocalCache$WeakEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .line 1245
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WeakEntry;, "Lccsancom/google/common/cache/LocalCache$WeakEntry<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$WeakEntry;->valueReference:Lccsancom/google/common/cache/LocalCache$ValueReference;

    return-object v0
.end method

.method public getWriteTime()J
    .locals 1

    .line 1209
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WeakEntry;, "Lccsancom/google/common/cache/LocalCache$WeakEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setAccessTime(J)V
    .locals 1
    .param p1, "time"    # J

    .line 1182
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WeakEntry;, "Lccsancom/google/common/cache/LocalCache$WeakEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setNextInAccessQueue(Lccsancom/google/common/cache/ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1192
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WeakEntry;, "Lccsancom/google/common/cache/LocalCache$WeakEntry<TK;TV;>;"
    .local p1, "next":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setNextInWriteQueue(Lccsancom/google/common/cache/ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1224
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WeakEntry;, "Lccsancom/google/common/cache/LocalCache$WeakEntry<TK;TV;>;"
    .local p1, "next":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPreviousInAccessQueue(Lccsancom/google/common/cache/ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1202
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WeakEntry;, "Lccsancom/google/common/cache/LocalCache$WeakEntry<TK;TV;>;"
    .local p1, "previous":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPreviousInWriteQueue(Lccsancom/google/common/cache/ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1234
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WeakEntry;, "Lccsancom/google/common/cache/LocalCache$WeakEntry<TK;TV;>;"
    .local p1, "previous":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .line 1250
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WeakEntry;, "Lccsancom/google/common/cache/LocalCache$WeakEntry<TK;TV;>;"
    .local p1, "valueReference":Lccsancom/google/common/cache/LocalCache$ValueReference;, "Lccsancom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    iput-object p1, p0, Lccsancom/google/common/cache/LocalCache$WeakEntry;->valueReference:Lccsancom/google/common/cache/LocalCache$ValueReference;

    .line 1251
    return-void
.end method

.method public setWriteTime(J)V
    .locals 1
    .param p1, "time"    # J

    .line 1214
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WeakEntry;, "Lccsancom/google/common/cache/LocalCache$WeakEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
