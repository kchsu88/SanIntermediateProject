.class final Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/thrid/okhttp/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# static fields
.field private static final RECEIVED_MILLIS:Ljava/lang/String;

.field private static final SENT_MILLIS:Ljava/lang/String;


# instance fields
.field private final code:I

.field private final handshake:Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final message:Ljava/lang/String;

.field private final protocol:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

.field private final receivedResponseMillis:J

.field private final requestMethod:Ljava/lang/String;

.field private final responseHeaders:Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

.field private final sentRequestMillis:J

.field private final url:Ljava/lang/String;

.field private final varyHeaders:Lccsancom/mbridge/msdk/thrid/okhttp/Headers;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;->get()Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-Sent-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;->get()Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-Received-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lccsancom/mbridge/msdk/thrid/okhttp/Response;)V
    .locals 2
    .param p1, "response"    # Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 599
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->request()Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->url:Ljava/lang/String;

    .line 600
    invoke-static {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpHeaders;->varyHeaders(Lccsancom/mbridge/msdk/thrid/okhttp/Response;)Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->varyHeaders:Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    .line 601
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->request()Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 602
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->protocol()Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->protocol:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

    .line 603
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->code()I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->code:I

    .line 604
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->message()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->message:Ljava/lang/String;

    .line 605
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->headers()Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->responseHeaders:Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    .line 606
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->handshake()Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->handshake:Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;

    .line 607
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->sentRequestAtMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->sentRequestMillis:J

    .line 608
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->receivedResponseAtMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->receivedResponseMillis:J

    .line 609
    return-void
.end method

.method constructor <init>(Lccsancom/mbridge/msdk/thrid/okio/Source;)V
    .locals 16
    .param p1, "in"    # Lccsancom/mbridge/msdk/thrid/okio/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 544
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 546
    :try_start_0
    invoke-static/range {p1 .. p1}, Lccsancom/mbridge/msdk/thrid/okio/Okio;->buffer(Lccsancom/mbridge/msdk/thrid/okio/Source;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    move-result-object v0

    .line 547
    .local v0, "source":Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;
    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->url:Ljava/lang/String;

    .line 548
    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 549
    new-instance v2, Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;

    invoke-direct {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;-><init>()V

    .line 550
    .local v2, "varyHeadersBuilder":Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;
    invoke-static {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Cache;->readInt(Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;)I

    move-result v3

    .line 551
    .local v3, "varyRequestHeaderLineCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 552
    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;->addLenient(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;

    .line 551
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 554
    .end local v4    # "i":I
    :cond_0
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;->build()Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    move-result-object v4

    iput-object v4, v1, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->varyHeaders:Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    .line 556
    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/StatusLine;->parse(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/StatusLine;

    move-result-object v4

    .line 557
    .local v4, "statusLine":Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/StatusLine;
    iget-object v5, v4, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/StatusLine;->protocol:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

    iput-object v5, v1, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->protocol:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

    .line 558
    iget v5, v4, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/StatusLine;->code:I

    iput v5, v1, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->code:I

    .line 559
    iget-object v5, v4, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    iput-object v5, v1, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->message:Ljava/lang/String;

    .line 560
    new-instance v5, Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;

    invoke-direct {v5}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;-><init>()V

    .line 561
    .local v5, "responseHeadersBuilder":Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;
    invoke-static {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Cache;->readInt(Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;)I

    move-result v6

    .line 562
    .local v6, "responseHeaderLineCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v6, :cond_1

    .line 563
    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;->addLenient(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;

    .line 562
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 565
    .end local v7    # "i":I
    :cond_1
    sget-object v7, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 566
    .local v8, "sendRequestMillisString":Ljava/lang/String;
    sget-object v9, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-virtual {v5, v9}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 567
    .local v10, "receivedResponseMillisString":Ljava/lang/String;
    invoke-virtual {v5, v7}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;->removeAll(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;

    .line 568
    invoke-virtual {v5, v9}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;->removeAll(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;

    .line 569
    const-wide/16 v11, 0x0

    if-eqz v8, :cond_2

    .line 570
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    goto :goto_2

    :cond_2
    move-wide v13, v11

    :goto_2
    iput-wide v13, v1, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->sentRequestMillis:J

    .line 572
    if-eqz v10, :cond_3

    .line 573
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    goto :goto_3

    :cond_3
    nop

    :goto_3
    iput-wide v11, v1, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->receivedResponseMillis:J

    .line 575
    invoke-virtual {v5}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;->build()Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    move-result-object v7

    iput-object v7, v1, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->responseHeaders:Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    .line 577
    invoke-direct/range {p0 .. p0}, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->isHttps()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 578
    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v7

    .line 579
    .local v7, "blank":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_5

    .line 582
    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v9

    .line 583
    .local v9, "cipherSuiteString":Ljava/lang/String;
    invoke-static {v9}, Lccsancom/mbridge/msdk/thrid/okhttp/CipherSuite;->forJavaName(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/CipherSuite;

    move-result-object v11

    .line 584
    .local v11, "cipherSuite":Lccsancom/mbridge/msdk/thrid/okhttp/CipherSuite;
    invoke-direct {v1, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->readCertificateList(Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;)Ljava/util/List;

    move-result-object v12

    .line 585
    .local v12, "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-direct {v1, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->readCertificateList(Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;)Ljava/util/List;

    move-result-object v13

    .line 586
    .local v13, "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->exhausted()Z

    move-result v14

    if-nez v14, :cond_4

    .line 587
    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lccsancom/mbridge/msdk/thrid/okhttp/TlsVersion;->forJavaName(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/TlsVersion;

    move-result-object v14

    goto :goto_4

    :cond_4
    sget-object v14, Lccsancom/mbridge/msdk/thrid/okhttp/TlsVersion;->SSL_3_0:Lccsancom/mbridge/msdk/thrid/okhttp/TlsVersion;

    .line 589
    .local v14, "tlsVersion":Lccsancom/mbridge/msdk/thrid/okhttp/TlsVersion;
    :goto_4
    invoke-static {v14, v11, v12, v13}, Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;->get(Lccsancom/mbridge/msdk/thrid/okhttp/TlsVersion;Lccsancom/mbridge/msdk/thrid/okhttp/CipherSuite;Ljava/util/List;Ljava/util/List;)Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;

    move-result-object v15

    iput-object v15, v1, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->handshake:Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;

    .line 590
    .end local v7    # "blank":Ljava/lang/String;
    .end local v9    # "cipherSuiteString":Ljava/lang/String;
    .end local v11    # "cipherSuite":Lccsancom/mbridge/msdk/thrid/okhttp/CipherSuite;
    .end local v12    # "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .end local v13    # "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .end local v14    # "tlsVersion":Lccsancom/mbridge/msdk/thrid/okhttp/TlsVersion;
    goto :goto_5

    .line 580
    .restart local v7    # "blank":Ljava/lang/String;
    :cond_5
    new-instance v9, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "expected \"\" but was \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "in":Lccsancom/mbridge/msdk/thrid/okio/Source;
    throw v9

    .line 591
    .end local v7    # "blank":Ljava/lang/String;
    .restart local p1    # "in":Lccsancom/mbridge/msdk/thrid/okio/Source;
    :cond_6
    const/4 v7, 0x0

    iput-object v7, v1, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->handshake:Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 594
    .end local v0    # "source":Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;
    .end local v2    # "varyHeadersBuilder":Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;
    .end local v3    # "varyRequestHeaderLineCount":I
    .end local v4    # "statusLine":Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/StatusLine;
    .end local v5    # "responseHeadersBuilder":Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;
    .end local v6    # "responseHeaderLineCount":I
    .end local v8    # "sendRequestMillisString":Ljava/lang/String;
    .end local v10    # "receivedResponseMillisString":Ljava/lang/String;
    :goto_5
    invoke-interface/range {p1 .. p1}, Lccsancom/mbridge/msdk/thrid/okio/Source;->close()V

    .line 595
    nop

    .line 596
    return-void

    .line 594
    :catchall_0
    move-exception v0

    invoke-interface/range {p1 .. p1}, Lccsancom/mbridge/msdk/thrid/okio/Source;->close()V

    .line 595
    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method private isHttps()Z
    .locals 2

    .line 658
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->url:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private readCertificateList(Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;)Ljava/util/List;
    .locals 7
    .param p1, "source"    # Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 662
    invoke-static {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Cache;->readInt(Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;)I

    move-result v0

    .line 663
    .local v0, "length":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 666
    :cond_0
    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 667
    .local v1, "certificateFactory":Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 668
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 669
    invoke-interface {p1}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    .line 670
    .local v4, "line":Ljava/lang/String;
    new-instance v5, Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    invoke-direct {v5}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;-><init>()V

    .line 671
    .local v5, "bytes":Lccsancom/mbridge/msdk/thrid/okio/Buffer;
    invoke-static {v4}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->decodeBase64(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v6

    invoke-virtual {v5, v6}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->write(Lccsancom/mbridge/msdk/thrid/okio/ByteString;)Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    .line 672
    invoke-virtual {v5}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->inputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    nop

    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "bytes":Lccsancom/mbridge/msdk/thrid/okio/Buffer;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 674
    .end local v3    # "i":I
    :cond_1
    return-object v2

    .line 675
    .end local v1    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :catch_0
    move-exception v1

    .line 676
    .local v1, "e":Ljava/security/cert/CertificateException;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method

.method private writeCertList(Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;Ljava/util/List;)V
    .locals 6
    .param p1, "sink"    # Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 683
    .local p2, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeDecimalLong(J)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v0

    .line 684
    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeByte(I)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 685
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 686
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    .line 687
    .local v3, "bytes":[B
    invoke-static {v3}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->of([B)Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->base64()Ljava/lang/String;

    move-result-object v4

    .line 688
    .local v4, "line":Ljava/lang/String;
    invoke-interface {p1, v4}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v5

    .line 689
    invoke-interface {v5, v1}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeByte(I)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    nop

    .end local v3    # "bytes":[B
    .end local v4    # "line":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 693
    .end local v0    # "i":I
    .end local v2    # "size":I
    :cond_0
    nop

    .line 694
    return-void

    .line 691
    :catch_0
    move-exception v0

    .line 692
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public matches(Lccsancom/mbridge/msdk/thrid/okhttp/Request;Lccsancom/mbridge/msdk/thrid/okhttp/Response;)Z
    .locals 2
    .param p1, "request"    # Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    .param p2, "response"    # Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    .line 697
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->url:Ljava/lang/String;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 698
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->varyHeaders:Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    .line 699
    invoke-static {p2, v0, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpHeaders;->varyMatches(Lccsancom/mbridge/msdk/thrid/okhttp/Response;Lccsancom/mbridge/msdk/thrid/okhttp/Headers;Lccsancom/mbridge/msdk/thrid/okhttp/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 697
    :goto_0
    return v0
.end method

.method public response(Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;)Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    .locals 6
    .param p1, "snapshot"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;

    .line 703
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->responseHeaders:Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, "contentType":Ljava/lang/String;
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->responseHeaders:Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    const-string v2, "Content-Length"

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 705
    .local v1, "contentLength":Ljava/lang/String;
    new-instance v2, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    invoke-direct {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;-><init>()V

    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->url:Ljava/lang/String;

    .line 706
    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->url(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 707
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->method(Ljava/lang/String;Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->varyHeaders:Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    .line 708
    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->headers(Lccsancom/mbridge/msdk/thrid/okhttp/Headers;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    move-result-object v2

    .line 709
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->build()Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    move-result-object v2

    .line 710
    .local v2, "cacheRequest":Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    new-instance v3, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    invoke-direct {v3}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;-><init>()V

    .line 711
    invoke-virtual {v3, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->request(Lccsancom/mbridge/msdk/thrid/okhttp/Request;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v3

    iget-object v4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->protocol:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

    .line 712
    invoke-virtual {v3, v4}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->protocol(Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v3

    iget v4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->code:I

    .line 713
    invoke-virtual {v3, v4}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->code(I)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v3

    iget-object v4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->message:Ljava/lang/String;

    .line 714
    invoke-virtual {v3, v4}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->message(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v3

    iget-object v4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->responseHeaders:Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    .line 715
    invoke-virtual {v3, v4}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->headers(Lccsancom/mbridge/msdk/thrid/okhttp/Headers;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v3

    new-instance v4, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$CacheResponseBody;

    invoke-direct {v4, p1, v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$CacheResponseBody;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    invoke-virtual {v3, v4}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->body(Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v3

    iget-object v4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->handshake:Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;

    .line 717
    invoke-virtual {v3, v4}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->handshake(Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v3

    iget-wide v4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->sentRequestMillis:J

    .line 718
    invoke-virtual {v3, v4, v5}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->sentRequestAtMillis(J)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v3

    iget-wide v4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->receivedResponseMillis:J

    .line 719
    invoke-virtual {v3, v4, v5}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->receivedResponseAtMillis(J)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v3

    .line 720
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->build()Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    move-result-object v3

    .line 710
    return-object v3
.end method

.method public writeTo(Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;)V
    .locals 7
    .param p1, "editor"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 612
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;->newSink(I)Lccsancom/mbridge/msdk/thrid/okio/Sink;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/thrid/okio/Okio;->buffer(Lccsancom/mbridge/msdk/thrid/okio/Sink;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v0

    .line 614
    .local v0, "sink":Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->url:Ljava/lang/String;

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v1

    .line 615
    const/16 v2, 0xa

    invoke-interface {v1, v2}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeByte(I)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 616
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->requestMethod:Ljava/lang/String;

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v1

    .line 617
    invoke-interface {v1, v2}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeByte(I)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 618
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->varyHeaders:Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers;->size()I

    move-result v1

    int-to-long v3, v1

    invoke-interface {v0, v3, v4}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeDecimalLong(J)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v1

    .line 619
    invoke-interface {v1, v2}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeByte(I)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 620
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->varyHeaders:Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    const-string v4, ": "

    if-ge v1, v3, :cond_0

    .line 621
    iget-object v5, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->varyHeaders:Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    invoke-virtual {v5, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v5

    .line 622
    invoke-interface {v5, v4}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v4

    iget-object v5, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->varyHeaders:Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    .line 623
    invoke-virtual {v5, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v4

    .line 624
    invoke-interface {v4, v2}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeByte(I)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 620
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 627
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_0
    new-instance v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/StatusLine;

    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->protocol:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

    iget v5, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->code:I

    iget-object v6, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->message:Ljava/lang/String;

    invoke-direct {v1, v3, v5, v6}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/StatusLine;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;ILjava/lang/String;)V

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/StatusLine;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v1

    .line 628
    invoke-interface {v1, v2}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeByte(I)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 629
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->responseHeaders:Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    int-to-long v5, v1

    invoke-interface {v0, v5, v6}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeDecimalLong(J)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v1

    .line 630
    invoke-interface {v1, v2}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeByte(I)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 631
    const/4 v1, 0x0

    .restart local v1    # "i":I
    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->responseHeaders:Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers;->size()I

    move-result v3

    .restart local v3    # "size":I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 632
    iget-object v5, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->responseHeaders:Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    invoke-virtual {v5, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v5

    .line 633
    invoke-interface {v5, v4}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v5

    iget-object v6, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->responseHeaders:Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    .line 634
    invoke-virtual {v6, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v5

    .line 635
    invoke-interface {v5, v2}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeByte(I)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 631
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 637
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_1
    sget-object v1, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v1

    .line 638
    invoke-interface {v1, v4}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v1

    iget-wide v5, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->sentRequestMillis:J

    .line 639
    invoke-interface {v1, v5, v6}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeDecimalLong(J)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v1

    .line 640
    invoke-interface {v1, v2}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeByte(I)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 641
    sget-object v1, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v1

    .line 642
    invoke-interface {v1, v4}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v1

    iget-wide v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->receivedResponseMillis:J

    .line 643
    invoke-interface {v1, v3, v4}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeDecimalLong(J)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v1

    .line 644
    invoke-interface {v1, v2}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeByte(I)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 646
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->isHttps()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 647
    invoke-interface {v0, v2}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeByte(I)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 648
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->handshake:Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;->cipherSuite()Lccsancom/mbridge/msdk/thrid/okhttp/CipherSuite;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/CipherSuite;->javaName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v1

    .line 649
    invoke-interface {v1, v2}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeByte(I)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 650
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->handshake:Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->writeCertList(Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;Ljava/util/List;)V

    .line 651
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->handshake:Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;->localCertificates()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->writeCertList(Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;Ljava/util/List;)V

    .line 652
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->handshake:Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;->tlsVersion()Lccsancom/mbridge/msdk/thrid/okhttp/TlsVersion;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/TlsVersion;->javaName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, v2}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeByte(I)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 654
    :cond_2
    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->close()V

    .line 655
    return-void
.end method
