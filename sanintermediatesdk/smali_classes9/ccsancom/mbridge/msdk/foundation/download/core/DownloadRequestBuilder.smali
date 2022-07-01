.class public Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;
.super Ljava/lang/Object;
.source "DownloadRequestBuilder.java"

# interfaces
.implements Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field connectTimeout:J

.field directoryPathExternal:Ljava/lang/String;

.field directoryPathInternal:Ljava/lang/String;

.field downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/mbridge/msdk/foundation/download/DownloadMessage<",
            "TT;>;"
        }
    .end annotation
.end field

.field downloadPriority:Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;

.field downloadStateListener:Lccsancom/mbridge/msdk/foundation/download/OnDownloadStateListener;

.field headerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field progressStateListener:Lccsancom/mbridge/msdk/foundation/download/OnProgressStateListener;

.field readTimeout:J

.field retry:I

.field timeout:J

.field userAgent:Ljava/lang/String;

.field writeTimeout:J


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/foundation/download/DownloadMessage<",
            "TT;>;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;->MEDIUM:Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->downloadPriority:Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;

    .line 31
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    .line 32
    return-void
.end method


# virtual methods
.method public build()Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest<",
            "TT;>;"
        }
    .end annotation

    .line 119
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->create(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;)Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method public withConnectTimeout(J)Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 65
    iput-wide p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->connectTimeout:J

    .line 66
    return-object p0
.end method

.method public bridge synthetic withConnectTimeout(J)Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;
    .locals 0

    .line 12
    invoke-virtual {p0, p1, p2}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->withConnectTimeout(J)Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withDirectoryPathExternal(Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->directoryPathExternal:Ljava/lang/String;

    .line 102
    return-object p0
.end method

.method public withDirectoryPathInternal(Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->directoryPathInternal:Ljava/lang/String;

    .line 108
    return-object p0
.end method

.method public withDownloadPriority(Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;)Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;",
            ")",
            "Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->downloadPriority:Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;

    .line 96
    return-object p0
.end method

.method public withDownloadStateListener(Lccsancom/mbridge/msdk/foundation/download/OnDownloadStateListener;)Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/foundation/download/OnDownloadStateListener;",
            ")",
            "Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->downloadStateListener:Lccsancom/mbridge/msdk/foundation/download/OnDownloadStateListener;

    .line 84
    return-object p0
.end method

.method public withHeader(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->headerMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->headerMap:Ljava/util/HashMap;

    .line 39
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->headerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 40
    if-nez v0, :cond_1

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->headerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 45
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_2
    return-object p0
.end method

.method public bridge synthetic withHeader(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;
    .locals 0

    .line 12
    invoke-virtual {p0, p1, p2}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->withHeader(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withHttpRetryCounter(I)Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 71
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->retry:I

    .line 72
    return-object p0
.end method

.method public bridge synthetic withHttpRetryCounter(I)Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->withHttpRetryCounter(I)Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withProgressStateListener(Lccsancom/mbridge/msdk/foundation/download/OnProgressStateListener;)Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/foundation/download/OnProgressStateListener;",
            ")",
            "Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->progressStateListener:Lccsancom/mbridge/msdk/foundation/download/OnProgressStateListener;

    .line 90
    return-object p0
.end method

.method public withReadTimeout(J)Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 53
    iput-wide p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->readTimeout:J

    .line 54
    return-object p0
.end method

.method public bridge synthetic withReadTimeout(J)Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;
    .locals 0

    .line 12
    invoke-virtual {p0, p1, p2}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->withReadTimeout(J)Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withTimeout(J)Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 113
    iput-wide p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->timeout:J

    .line 114
    return-object p0
.end method

.method public withUserAgent(Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->userAgent:Ljava/lang/String;

    .line 78
    return-object p0
.end method

.method public bridge synthetic withUserAgent(Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->withUserAgent(Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withWriteTimeout(J)Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 59
    iput-wide p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->writeTimeout:J

    .line 60
    return-object p0
.end method
