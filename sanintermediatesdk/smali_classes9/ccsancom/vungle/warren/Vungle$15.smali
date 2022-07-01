.class Lccsancom/vungle/warren/Vungle$15;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/Vungle;->getAvailableBidTokensBySize(Lccsanandroid/content/Context;I)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$bidTokenMaxBytesSanitized:I

.field final synthetic val$context:Lccsanandroid/content/Context;


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;I)V
    .locals 0

    .line 1702
    iput-object p1, p0, Lccsancom/vungle/warren/Vungle$15;->val$context:Lccsanandroid/content/Context;

    iput p2, p0, Lccsancom/vungle/warren/Vungle$15;->val$bidTokenMaxBytesSanitized:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1702
    invoke-virtual {p0}, Lccsancom/vungle/warren/Vungle$15;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1705
    sget-object v0, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    invoke-static {v0}, Lccsancom/vungle/warren/Vungle;->access$1600(Lccsancom/vungle/warren/Vungle;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1706
    iget-object v0, p0, Lccsancom/vungle/warren/Vungle$15;->val$context:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsancom/vungle/warren/ServiceLocator;->getInstance(Lccsanandroid/content/Context;)Lccsancom/vungle/warren/ServiceLocator;

    move-result-object v0

    const-class v1, Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/persistence/Repository;

    .line 1708
    .local v0, "repository":Lccsancom/vungle/warren/persistence/Repository;
    const-string v1, "2"

    .line 1710
    .local v1, "encodeVersion":Ljava/lang/String;
    iget v2, p0, Lccsancom/vungle/warren/Vungle$15;->val$bidTokenMaxBytesSanitized:I

    sget-object v3, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    .line 1711
    invoke-static {v3}, Lccsancom/vungle/warren/Vungle;->access$1600(Lccsancom/vungle/warren/Vungle;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lccsancom/vungle/warren/Vungle;->getAvailableSizeForHBT(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1712
    const-string v3, ","

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    .line 1710
    invoke-virtual {v0, v2, v4}, Lccsancom/vungle/warren/persistence/Repository;->getAvailableBidTokens(II)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v2

    .line 1712
    invoke-virtual {v2}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1713
    .local v2, "availableBidTokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, ""

    .line 1714
    .local v4, "bidTokens":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1715
    invoke-static {v3, v2}, Lccsanandroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 1718
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    invoke-static {v6}, Lccsancom/vungle/warren/Vungle;->access$1600(Lccsancom/vungle/warren/Vungle;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1719
    .local v3, "bidTokensWithOrdinalViewCount":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lccsanandroid/util/Base64;->encode([BI)[B

    move-result-object v6

    .line 1720
    .local v6, "tokenBytes":[B
    new-instance v7, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1721
    .local v7, "encodedTokenChain":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1722
    .local v5, "totalBidToken":Ljava/lang/String;
    return-object v5
.end method
