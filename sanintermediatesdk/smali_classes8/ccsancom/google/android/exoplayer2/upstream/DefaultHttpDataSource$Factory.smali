.class public final Lccsancom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;
.super Ljava/lang/Object;
.source "DefaultHttpDataSource.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/upstream/HttpDataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/upstream/DefaultHttpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private allowCrossProtocolRedirects:Z

.field private connectTimeoutMs:I

.field private contentTypePredicate:Lccsancom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/base/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultRequestProperties:Lccsancom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

.field private keepPostFor302Redirects:Z

.field private readTimeoutMs:I

.field private transferListener:Lccsancom/google/android/exoplayer2/upstream/TransferListener;

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lccsancom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->defaultRequestProperties:Lccsancom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    .line 77
    const/16 v0, 0x1f40

    iput v0, p0, Lccsancom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->connectTimeoutMs:I

    .line 78
    iput v0, p0, Lccsancom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->readTimeoutMs:I

    .line 79
    return-void
.end method


# virtual methods
.method public bridge synthetic createDataSource()Lccsancom/google/android/exoplayer2/upstream/DataSource;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->createDataSource()Lccsancom/google/android/exoplayer2/upstream/DefaultHttpDataSource;

    move-result-object v0

    return-object v0
.end method

.method public createDataSource()Lccsancom/google/android/exoplayer2/upstream/DefaultHttpDataSource;
    .locals 10

    .line 183
    new-instance v9, Lccsancom/google/android/exoplayer2/upstream/DefaultHttpDataSource;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->userAgent:Ljava/lang/String;

    iget v2, p0, Lccsancom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->connectTimeoutMs:I

    iget v3, p0, Lccsancom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->readTimeoutMs:I

    iget-boolean v4, p0, Lccsancom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->allowCrossProtocolRedirects:Z

    iget-object v5, p0, Lccsancom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->defaultRequestProperties:Lccsancom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    iget-object v6, p0, Lccsancom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->contentTypePredicate:Lccsancom/google/common/base/Predicate;

    iget-boolean v7, p0, Lccsancom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->keepPostFor302Redirects:Z

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lccsancom/google/android/exoplayer2/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;IIZLccsancom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;Lccsancom/google/common/base/Predicate;ZLccsancom/google/android/exoplayer2/upstream/DefaultHttpDataSource$1;)V

    .line 192
    .local v0, "dataSource":Lccsancom/google/android/exoplayer2/upstream/DefaultHttpDataSource;
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->transferListener:Lccsancom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {v0, v1}, Lccsancom/google/android/exoplayer2/upstream/DefaultHttpDataSource;->addTransferListener(Lccsancom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 195
    :cond_0
    return-object v0
.end method

.method public bridge synthetic createDataSource()Lccsancom/google/android/exoplayer2/upstream/HttpDataSource;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->createDataSource()Lccsancom/google/android/exoplayer2/upstream/DefaultHttpDataSource;

    move-result-object v0

    return-object v0
.end method

.method public setAllowCrossProtocolRedirects(Z)Lccsancom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;
    .locals 0
    .param p1, "allowCrossProtocolRedirects"    # Z

    .line 137
    iput-boolean p1, p0, Lccsancom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->allowCrossProtocolRedirects:Z

    .line 138
    return-object p0
.end method

.method public setConnectTimeoutMs(I)Lccsancom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;
    .locals 0
    .param p1, "connectTimeoutMs"    # I

    .line 111
    iput p1, p0, Lccsancom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->connectTimeoutMs:I

    .line 112
    return-object p0
.end method

.method public setContentTypePredicate(Lccsancom/google/common/base/Predicate;)Lccsancom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/base/Predicate<",
            "Ljava/lang/String;",
            ">;)",
            "Lccsancom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;"
        }
    .end annotation

    .line 153
    .local p1, "contentTypePredicate":Lccsancom/google/common/base/Predicate;, "Lccsancom/google/common/base/Predicate<Ljava/lang/String;>;"
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->contentTypePredicate:Lccsancom/google/common/base/Predicate;

    .line 154
    return-object p0
.end method

.method public final setDefaultRequestProperties(Ljava/util/Map;)Lccsancom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lccsancom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;"
        }
    .end annotation

    .line 83
    .local p1, "defaultRequestProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->defaultRequestProperties:Lccsancom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->clearAndSet(Ljava/util/Map;)V

    .line 84
    return-object p0
.end method

.method public bridge synthetic setDefaultRequestProperties(Ljava/util/Map;)Lccsancom/google/android/exoplayer2/upstream/HttpDataSource$Factory;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lccsancom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setDefaultRequestProperties(Ljava/util/Map;)Lccsancom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public setKeepPostFor302Redirects(Z)Lccsancom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;
    .locals 0
    .param p1, "keepPostFor302Redirects"    # Z

    .line 177
    iput-boolean p1, p0, Lccsancom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->keepPostFor302Redirects:Z

    .line 178
    return-object p0
.end method

.method public setReadTimeoutMs(I)Lccsancom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;
    .locals 0
    .param p1, "readTimeoutMs"    # I

    .line 124
    iput p1, p0, Lccsancom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->readTimeoutMs:I

    .line 125
    return-object p0
.end method

.method public setTransferListener(Lccsancom/google/android/exoplayer2/upstream/TransferListener;)Lccsancom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;
    .locals 0
    .param p1, "transferListener"    # Lccsancom/google/android/exoplayer2/upstream/TransferListener;

    .line 168
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->transferListener:Lccsancom/google/android/exoplayer2/upstream/TransferListener;

    .line 169
    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)Lccsancom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;
    .locals 0
    .param p1, "userAgent"    # Ljava/lang/String;

    .line 98
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->userAgent:Ljava/lang/String;

    .line 99
    return-object p0
.end method
