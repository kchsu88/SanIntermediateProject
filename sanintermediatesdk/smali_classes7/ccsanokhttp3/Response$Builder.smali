.class public Lccsanokhttp3/Response$Builder;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanokhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field body:Lccsanokhttp3/ResponseBody;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field cacheResponse:Lccsanokhttp3/Response;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field code:I

.field exchange:Lccsanokhttp3/internal/connection/Exchange;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field handshake:Lccsanokhttp3/Handshake;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field headers:Lccsanokhttp3/Headers$Builder;

.field message:Ljava/lang/String;

.field networkResponse:Lccsanokhttp3/Response;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field priorResponse:Lccsanokhttp3/Response;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protocol:Lccsanokhttp3/Protocol;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field receivedResponseAtMillis:J

.field request:Lccsanokhttp3/Request;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field sentRequestAtMillis:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    const/4 v0, -0x1

    iput v0, p0, Lccsanokhttp3/Response$Builder;->code:I

    .line 321
    new-instance v0, Lccsanokhttp3/Headers$Builder;

    invoke-direct {v0}, Lccsanokhttp3/Headers$Builder;-><init>()V

    iput-object v0, p0, Lccsanokhttp3/Response$Builder;->headers:Lccsanokhttp3/Headers$Builder;

    .line 322
    return-void
.end method

.method constructor <init>(Lccsanokhttp3/Response;)V
    .locals 2
    .param p1, "response"    # Lccsanokhttp3/Response;

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    const/4 v0, -0x1

    iput v0, p0, Lccsanokhttp3/Response$Builder;->code:I

    .line 325
    iget-object v0, p1, Lccsanokhttp3/Response;->request:Lccsanokhttp3/Request;

    iput-object v0, p0, Lccsanokhttp3/Response$Builder;->request:Lccsanokhttp3/Request;

    .line 326
    iget-object v0, p1, Lccsanokhttp3/Response;->protocol:Lccsanokhttp3/Protocol;

    iput-object v0, p0, Lccsanokhttp3/Response$Builder;->protocol:Lccsanokhttp3/Protocol;

    .line 327
    iget v0, p1, Lccsanokhttp3/Response;->code:I

    iput v0, p0, Lccsanokhttp3/Response$Builder;->code:I

    .line 328
    iget-object v0, p1, Lccsanokhttp3/Response;->message:Ljava/lang/String;

    iput-object v0, p0, Lccsanokhttp3/Response$Builder;->message:Ljava/lang/String;

    .line 329
    iget-object v0, p1, Lccsanokhttp3/Response;->handshake:Lccsanokhttp3/Handshake;

    iput-object v0, p0, Lccsanokhttp3/Response$Builder;->handshake:Lccsanokhttp3/Handshake;

    .line 330
    iget-object v0, p1, Lccsanokhttp3/Response;->headers:Lccsanokhttp3/Headers;

    invoke-virtual {v0}, Lccsanokhttp3/Headers;->newBuilder()Lccsanokhttp3/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lccsanokhttp3/Response$Builder;->headers:Lccsanokhttp3/Headers$Builder;

    .line 331
    iget-object v0, p1, Lccsanokhttp3/Response;->body:Lccsanokhttp3/ResponseBody;

    iput-object v0, p0, Lccsanokhttp3/Response$Builder;->body:Lccsanokhttp3/ResponseBody;

    .line 332
    iget-object v0, p1, Lccsanokhttp3/Response;->networkResponse:Lccsanokhttp3/Response;

    iput-object v0, p0, Lccsanokhttp3/Response$Builder;->networkResponse:Lccsanokhttp3/Response;

    .line 333
    iget-object v0, p1, Lccsanokhttp3/Response;->cacheResponse:Lccsanokhttp3/Response;

    iput-object v0, p0, Lccsanokhttp3/Response$Builder;->cacheResponse:Lccsanokhttp3/Response;

    .line 334
    iget-object v0, p1, Lccsanokhttp3/Response;->priorResponse:Lccsanokhttp3/Response;

    iput-object v0, p0, Lccsanokhttp3/Response$Builder;->priorResponse:Lccsanokhttp3/Response;

    .line 335
    iget-wide v0, p1, Lccsanokhttp3/Response;->sentRequestAtMillis:J

    iput-wide v0, p0, Lccsanokhttp3/Response$Builder;->sentRequestAtMillis:J

    .line 336
    iget-wide v0, p1, Lccsanokhttp3/Response;->receivedResponseAtMillis:J

    iput-wide v0, p0, Lccsanokhttp3/Response$Builder;->receivedResponseAtMillis:J

    .line 337
    iget-object v0, p1, Lccsanokhttp3/Response;->exchange:Lccsanokhttp3/internal/connection/Exchange;

    iput-object v0, p0, Lccsanokhttp3/Response$Builder;->exchange:Lccsanokhttp3/internal/connection/Exchange;

    .line 338
    return-void
.end method

.method private checkPriorResponse(Lccsanokhttp3/Response;)V
    .locals 2
    .param p1, "response"    # Lccsanokhttp3/Response;

    .line 431
    iget-object v0, p1, Lccsanokhttp3/Response;->body:Lccsanokhttp3/ResponseBody;

    if-nez v0, :cond_0

    .line 434
    return-void

    .line 432
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "priorResponse.body != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkSupportResponse(Ljava/lang/String;Lccsanokhttp3/Response;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "response"    # Lccsanokhttp3/Response;

    .line 413
    iget-object v0, p2, Lccsanokhttp3/Response;->body:Lccsanokhttp3/ResponseBody;

    if-nez v0, :cond_3

    .line 415
    iget-object v0, p2, Lccsanokhttp3/Response;->networkResponse:Lccsanokhttp3/Response;

    if-nez v0, :cond_2

    .line 417
    iget-object v0, p2, Lccsanokhttp3/Response;->cacheResponse:Lccsanokhttp3/Response;

    if-nez v0, :cond_1

    .line 419
    iget-object v0, p2, Lccsanokhttp3/Response;->priorResponse:Lccsanokhttp3/Response;

    if-nez v0, :cond_0

    .line 422
    return-void

    .line 420
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".priorResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".cacheResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".networkResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".body != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lccsanokhttp3/Response$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 379
    iget-object v0, p0, Lccsanokhttp3/Response$Builder;->headers:Lccsanokhttp3/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lccsanokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lccsanokhttp3/Headers$Builder;

    .line 380
    return-object p0
.end method

.method public body(Lccsanokhttp3/ResponseBody;)Lccsanokhttp3/Response$Builder;
    .locals 0
    .param p1, "body"    # Lccsanokhttp3/ResponseBody;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 396
    iput-object p1, p0, Lccsanokhttp3/Response$Builder;->body:Lccsanokhttp3/ResponseBody;

    .line 397
    return-object p0
.end method

.method public build()Lccsanokhttp3/Response;
    .locals 3

    .line 451
    iget-object v0, p0, Lccsanokhttp3/Response$Builder;->request:Lccsanokhttp3/Request;

    if-eqz v0, :cond_3

    .line 452
    iget-object v0, p0, Lccsanokhttp3/Response$Builder;->protocol:Lccsanokhttp3/Protocol;

    if-eqz v0, :cond_2

    .line 453
    iget v0, p0, Lccsanokhttp3/Response$Builder;->code:I

    if-ltz v0, :cond_1

    .line 454
    iget-object v0, p0, Lccsanokhttp3/Response$Builder;->message:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 455
    new-instance v0, Lccsanokhttp3/Response;

    invoke-direct {v0, p0}, Lccsanokhttp3/Response;-><init>(Lccsanokhttp3/Response$Builder;)V

    return-object v0

    .line 454
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsanokhttp3/Response$Builder;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cacheResponse(Lccsanokhttp3/Response;)Lccsanokhttp3/Response$Builder;
    .locals 1
    .param p1, "cacheResponse"    # Lccsanokhttp3/Response;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 407
    if-eqz p1, :cond_0

    const-string v0, "cacheResponse"

    invoke-direct {p0, v0, p1}, Lccsanokhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lccsanokhttp3/Response;)V

    .line 408
    :cond_0
    iput-object p1, p0, Lccsanokhttp3/Response$Builder;->cacheResponse:Lccsanokhttp3/Response;

    .line 409
    return-object p0
.end method

.method public code(I)Lccsanokhttp3/Response$Builder;
    .locals 0
    .param p1, "code"    # I

    .line 351
    iput p1, p0, Lccsanokhttp3/Response$Builder;->code:I

    .line 352
    return-object p0
.end method

.method public handshake(Lccsanokhttp3/Handshake;)Lccsanokhttp3/Response$Builder;
    .locals 0
    .param p1, "handshake"    # Lccsanokhttp3/Handshake;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 361
    iput-object p1, p0, Lccsanokhttp3/Response$Builder;->handshake:Lccsanokhttp3/Handshake;

    .line 362
    return-object p0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lccsanokhttp3/Response$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 370
    iget-object v0, p0, Lccsanokhttp3/Response$Builder;->headers:Lccsanokhttp3/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lccsanokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lccsanokhttp3/Headers$Builder;

    .line 371
    return-object p0
.end method

.method public headers(Lccsanokhttp3/Headers;)Lccsanokhttp3/Response$Builder;
    .locals 1
    .param p1, "headers"    # Lccsanokhttp3/Headers;

    .line 391
    invoke-virtual {p1}, Lccsanokhttp3/Headers;->newBuilder()Lccsanokhttp3/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lccsanokhttp3/Response$Builder;->headers:Lccsanokhttp3/Headers$Builder;

    .line 392
    return-object p0
.end method

.method initExchange(Lccsanokhttp3/internal/connection/Exchange;)V
    .locals 0
    .param p1, "deferredTrailers"    # Lccsanokhttp3/internal/connection/Exchange;

    .line 447
    iput-object p1, p0, Lccsanokhttp3/Response$Builder;->exchange:Lccsanokhttp3/internal/connection/Exchange;

    .line 448
    return-void
.end method

.method public message(Ljava/lang/String;)Lccsanokhttp3/Response$Builder;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 356
    iput-object p1, p0, Lccsanokhttp3/Response$Builder;->message:Ljava/lang/String;

    .line 357
    return-object p0
.end method

.method public networkResponse(Lccsanokhttp3/Response;)Lccsanokhttp3/Response$Builder;
    .locals 1
    .param p1, "networkResponse"    # Lccsanokhttp3/Response;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 401
    if-eqz p1, :cond_0

    const-string v0, "networkResponse"

    invoke-direct {p0, v0, p1}, Lccsanokhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lccsanokhttp3/Response;)V

    .line 402
    :cond_0
    iput-object p1, p0, Lccsanokhttp3/Response$Builder;->networkResponse:Lccsanokhttp3/Response;

    .line 403
    return-object p0
.end method

.method public priorResponse(Lccsanokhttp3/Response;)Lccsanokhttp3/Response$Builder;
    .locals 0
    .param p1, "priorResponse"    # Lccsanokhttp3/Response;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 425
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lccsanokhttp3/Response$Builder;->checkPriorResponse(Lccsanokhttp3/Response;)V

    .line 426
    :cond_0
    iput-object p1, p0, Lccsanokhttp3/Response$Builder;->priorResponse:Lccsanokhttp3/Response;

    .line 427
    return-object p0
.end method

.method public protocol(Lccsanokhttp3/Protocol;)Lccsanokhttp3/Response$Builder;
    .locals 0
    .param p1, "protocol"    # Lccsanokhttp3/Protocol;

    .line 346
    iput-object p1, p0, Lccsanokhttp3/Response$Builder;->protocol:Lccsanokhttp3/Protocol;

    .line 347
    return-object p0
.end method

.method public receivedResponseAtMillis(J)Lccsanokhttp3/Response$Builder;
    .locals 0
    .param p1, "receivedResponseAtMillis"    # J

    .line 442
    iput-wide p1, p0, Lccsanokhttp3/Response$Builder;->receivedResponseAtMillis:J

    .line 443
    return-object p0
.end method

.method public removeHeader(Ljava/lang/String;)Lccsanokhttp3/Response$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 385
    iget-object v0, p0, Lccsanokhttp3/Response$Builder;->headers:Lccsanokhttp3/Headers$Builder;

    invoke-virtual {v0, p1}, Lccsanokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lccsanokhttp3/Headers$Builder;

    .line 386
    return-object p0
.end method

.method public request(Lccsanokhttp3/Request;)Lccsanokhttp3/Response$Builder;
    .locals 0
    .param p1, "request"    # Lccsanokhttp3/Request;

    .line 341
    iput-object p1, p0, Lccsanokhttp3/Response$Builder;->request:Lccsanokhttp3/Request;

    .line 342
    return-object p0
.end method

.method public sentRequestAtMillis(J)Lccsanokhttp3/Response$Builder;
    .locals 0
    .param p1, "sentRequestAtMillis"    # J

    .line 437
    iput-wide p1, p0, Lccsanokhttp3/Response$Builder;->sentRequestAtMillis:J

    .line 438
    return-object p0
.end method
