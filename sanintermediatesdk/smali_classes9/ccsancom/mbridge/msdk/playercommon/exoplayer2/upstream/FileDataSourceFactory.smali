.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSourceFactory;
.super Ljava/lang/Object;
.source "FileDataSourceFactory.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;


# instance fields
.field private final listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener<",
            "-",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSourceFactory;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener<",
            "-",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSource;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSourceFactory;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;

    .line 31
    return-void
.end method


# virtual methods
.method public final createDataSource()Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;
    .locals 2

    .line 35
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSource;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSourceFactory;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSource;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;)V

    return-object v0
.end method
