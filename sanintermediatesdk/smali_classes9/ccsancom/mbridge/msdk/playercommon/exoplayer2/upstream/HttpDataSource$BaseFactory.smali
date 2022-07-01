.class public abstract Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$BaseFactory;
.super Ljava/lang/Object;
.source "HttpDataSource.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseFactory"
.end annotation


# instance fields
.field private final defaultRequestProperties:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$RequestProperties;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$RequestProperties;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$BaseFactory;->defaultRequestProperties:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$RequestProperties;

    .line 172
    return-void
.end method


# virtual methods
.method public final clearAllDefaultRequestProperties()V
    .locals 1

    .line 199
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$BaseFactory;->defaultRequestProperties:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$RequestProperties;->clear()V

    .line 200
    return-void
.end method

.method public final clearDefaultRequestProperty(Ljava/lang/String;)V
    .locals 1

    .line 193
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$BaseFactory;->defaultRequestProperties:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$RequestProperties;->remove(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public bridge synthetic createDataSource()Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;
    .locals 1

    .line 166
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$BaseFactory;->createDataSource()Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource;

    move-result-object v0

    return-object v0
.end method

.method public final createDataSource()Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource;
    .locals 1

    .line 176
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$BaseFactory;->defaultRequestProperties:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$BaseFactory;->createDataSourceInternal(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$RequestProperties;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource;

    move-result-object v0

    return-object v0
.end method

.method protected abstract createDataSourceInternal(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$RequestProperties;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource;
.end method

.method public final getDefaultRequestProperties()Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$RequestProperties;
    .locals 1

    .line 181
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$BaseFactory;->defaultRequestProperties:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$RequestProperties;

    return-object v0
.end method

.method public final setDefaultRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 187
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$BaseFactory;->defaultRequestProperties:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$RequestProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method
