.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSourceFactory;
.super Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$BaseFactory;
.source "DefaultHttpDataSourceFactory.java"


# instance fields
.field private final allowCrossProtocolRedirects:Z

.field private final connectTimeoutMillis:I

.field private final listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener<",
            "-",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private final readTimeoutMillis:I

.field private final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener<",
            "-",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;",
            ">;)V"
        }
    .end annotation

    .line 54
    const/16 v3, 0x1f40

    const/16 v4, 0x1f40

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;IIZ)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener<",
            "-",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;",
            ">;IIZ)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$BaseFactory;-><init>()V

    .line 71
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSourceFactory;->userAgent:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSourceFactory;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;

    .line 73
    iput p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSourceFactory;->connectTimeoutMillis:I

    .line 74
    iput p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSourceFactory;->readTimeoutMillis:I

    .line 75
    iput-boolean p5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSourceFactory;->allowCrossProtocolRedirects:Z

    .line 76
    return-void
.end method


# virtual methods
.method protected final createDataSourceInternal(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$RequestProperties;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;
    .locals 9

    .line 81
    new-instance v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSourceFactory;->userAgent:Ljava/lang/String;

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSourceFactory;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;

    iget v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSourceFactory;->connectTimeoutMillis:I

    iget v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSourceFactory;->readTimeoutMillis:I

    iget-boolean v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSourceFactory;->allowCrossProtocolRedirects:Z

    const/4 v2, 0x0

    move-object v0, v8

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Predicate;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;IIZLccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$RequestProperties;)V

    return-object v8
.end method

.method protected final bridge synthetic createDataSourceInternal(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$RequestProperties;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSourceFactory;->createDataSourceInternal(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$RequestProperties;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;

    move-result-object p1

    return-object p1
.end method
