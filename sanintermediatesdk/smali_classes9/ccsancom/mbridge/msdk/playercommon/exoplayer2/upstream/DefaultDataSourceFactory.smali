.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSourceFactory;
.super Ljava/lang/Object;
.source "DefaultDataSourceFactory.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;


# instance fields
.field private final baseDataSourceFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;

.field private final context:Lccsanandroid/content/Context;

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


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener<",
            "-",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;",
            ">;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;",
            ")V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSourceFactory;->context:Lccsanandroid/content/Context;

    .line 59
    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSourceFactory;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;

    .line 60
    iput-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSourceFactory;->baseDataSourceFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;

    .line 61
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener<",
            "-",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;",
            ">;)V"
        }
    .end annotation

    .line 46
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSourceFactory;

    invoke-direct {v0, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;)V

    invoke-direct {p0, p1, p3, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;)V

    .line 47
    return-void
.end method


# virtual methods
.method public final bridge synthetic createDataSource()Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSourceFactory;->createDataSource()Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;

    move-result-object v0

    return-object v0
.end method

.method public final createDataSource()Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;
    .locals 4

    .line 65
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSourceFactory;->context:Lccsanandroid/content/Context;

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSourceFactory;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSourceFactory;->baseDataSourceFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;-><init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;)V

    return-object v0
.end method
