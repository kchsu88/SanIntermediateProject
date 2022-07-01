.class public Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/thrid/okhttp/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field body:Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field cacheResponse:Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field code:I

.field handshake:Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field headers:Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;

.field message:Ljava/lang/String;

.field networkResponse:Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field priorResponse:Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protocol:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field receivedResponseAtMillis:J

.field request:Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field sentRequestAtMillis:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->code:I

    .line 318
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->headers:Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;

    .line 319
    return-void
.end method

.method constructor <init>(Lccsancom/mbridge/msdk/thrid/okhttp/Response;)V
    .locals 2
    .param p1, "response"    # Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->code:I

    .line 322
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->request:Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->request:Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    .line 323
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->protocol:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->protocol:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

    .line 324
    iget v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->code:I

    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->code:I

    .line 325
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->message:Ljava/lang/String;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->message:Ljava/lang/String;

    .line 326
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->handshake:Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->handshake:Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;

    .line 327
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->headers:Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers;->newBuilder()Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->headers:Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;

    .line 328
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->body:Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->body:Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    .line 329
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->networkResponse:Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->networkResponse:Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    .line 330
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->cacheResponse:Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->cacheResponse:Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    .line 331
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->priorResponse:Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->priorResponse:Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    .line 332
    iget-wide v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->sentRequestAtMillis:J

    iput-wide v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->sentRequestAtMillis:J

    .line 333
    iget-wide v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->receivedResponseAtMillis:J

    iput-wide v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->receivedResponseAtMillis:J

    .line 334
    return-void
.end method

.method private checkPriorResponse(Lccsancom/mbridge/msdk/thrid/okhttp/Response;)V
    .locals 2
    .param p1, "response"    # Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    .line 426
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->body:Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    if-nez v0, :cond_0

    .line 429
    return-void

    .line 427
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "priorResponse.body != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkSupportResponse(Ljava/lang/String;Lccsancom/mbridge/msdk/thrid/okhttp/Response;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "response"    # Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    .line 408
    iget-object v0, p2, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->body:Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    if-nez v0, :cond_3

    .line 410
    iget-object v0, p2, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->networkResponse:Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    if-nez v0, :cond_2

    .line 412
    iget-object v0, p2, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->cacheResponse:Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    if-nez v0, :cond_1

    .line 414
    iget-object v0, p2, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->priorResponse:Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    if-nez v0, :cond_0

    .line 417
    return-void

    .line 415
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

    .line 413
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

    .line 411
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

    .line 409
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
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 375
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->headers:Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;

    .line 376
    return-object p0
.end method

.method public body(Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;
    .locals 0
    .param p1, "body"    # Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 391
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->body:Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    .line 392
    return-object p0
.end method

.method public build()Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    .locals 3

    .line 442
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->request:Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    if-eqz v0, :cond_3

    .line 443
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->protocol:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

    if-eqz v0, :cond_2

    .line 444
    iget v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->code:I

    if-ltz v0, :cond_1

    .line 445
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->message:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 446
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;)V

    return-object v0

    .line 445
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cacheResponse(Lccsancom/mbridge/msdk/thrid/okhttp/Response;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;
    .locals 1
    .param p1, "cacheResponse"    # Lccsancom/mbridge/msdk/thrid/okhttp/Response;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 402
    if-eqz p1, :cond_0

    const-string v0, "cacheResponse"

    invoke-direct {p0, v0, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lccsancom/mbridge/msdk/thrid/okhttp/Response;)V

    .line 403
    :cond_0
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->cacheResponse:Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    .line 404
    return-object p0
.end method

.method public code(I)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;
    .locals 0
    .param p1, "code"    # I

    .line 347
    iput p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->code:I

    .line 348
    return-object p0
.end method

.method public handshake(Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;
    .locals 0
    .param p1, "handshake"    # Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 357
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->handshake:Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;

    .line 358
    return-object p0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 366
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->headers:Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;

    .line 367
    return-object p0
.end method

.method public headers(Lccsancom/mbridge/msdk/thrid/okhttp/Headers;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;
    .locals 1
    .param p1, "headers"    # Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    .line 386
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers;->newBuilder()Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->headers:Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;

    .line 387
    return-object p0
.end method

.method public message(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 352
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->message:Ljava/lang/String;

    .line 353
    return-object p0
.end method

.method public networkResponse(Lccsancom/mbridge/msdk/thrid/okhttp/Response;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;
    .locals 1
    .param p1, "networkResponse"    # Lccsancom/mbridge/msdk/thrid/okhttp/Response;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 396
    if-eqz p1, :cond_0

    const-string v0, "networkResponse"

    invoke-direct {p0, v0, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lccsancom/mbridge/msdk/thrid/okhttp/Response;)V

    .line 397
    :cond_0
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->networkResponse:Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    .line 398
    return-object p0
.end method

.method public priorResponse(Lccsancom/mbridge/msdk/thrid/okhttp/Response;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;
    .locals 0
    .param p1, "priorResponse"    # Lccsancom/mbridge/msdk/thrid/okhttp/Response;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 420
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->checkPriorResponse(Lccsancom/mbridge/msdk/thrid/okhttp/Response;)V

    .line 421
    :cond_0
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->priorResponse:Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    .line 422
    return-object p0
.end method

.method public protocol(Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;
    .locals 0
    .param p1, "protocol"    # Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

    .line 342
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->protocol:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

    .line 343
    return-object p0
.end method

.method public receivedResponseAtMillis(J)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;
    .locals 0
    .param p1, "receivedResponseAtMillis"    # J

    .line 437
    iput-wide p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->receivedResponseAtMillis:J

    .line 438
    return-object p0
.end method

.method public removeHeader(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 380
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->headers:Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;->removeAll(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;

    .line 381
    return-object p0
.end method

.method public request(Lccsancom/mbridge/msdk/thrid/okhttp/Request;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;
    .locals 0
    .param p1, "request"    # Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    .line 337
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->request:Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    .line 338
    return-object p0
.end method

.method public sentRequestAtMillis(J)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;
    .locals 0
    .param p1, "sentRequestAtMillis"    # J

    .line 432
    iput-wide p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->sentRequestAtMillis:J

    .line 433
    return-object p0
.end method
