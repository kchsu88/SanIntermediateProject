.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;
.super Ljava/lang/Object;
.source "DefaultDataSource.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;


# static fields
.field private static final SCHEME_ASSET:Ljava/lang/String; = "asset"

.field private static final SCHEME_CONTENT:Ljava/lang/String; = "content"

.field private static final SCHEME_RAW:Ljava/lang/String; = "rawresource"

.field private static final SCHEME_RTMP:Ljava/lang/String; = "rtmp"

.field private static final TAG:Ljava/lang/String; = "DefaultDataSource"


# instance fields
.field private assetDataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

.field private final baseDataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

.field private contentDataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

.field private final context:Lccsanandroid/content/Context;

.field private dataSchemeDataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

.field private dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

.field private fileDataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

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

.field private rawResourceDataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

.field private rtmpDataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener<",
            "-",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;",
            ">;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;",
            ")V"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->context:Lccsanandroid/content/Context;

    .line 118
    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;

    .line 119
    invoke-static {p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->baseDataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    .line 120
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;Ljava/lang/String;IIZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener<",
            "-",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;",
            ">;",
            "Ljava/lang/String;",
            "IIZ)V"
        }
    .end annotation

    .line 101
    new-instance v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p3

    move-object v3, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Predicate;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;IIZLccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$RequestProperties;)V

    invoke-direct {p0, p1, p2, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;-><init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;Ljava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener<",
            "-",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 81
    const/16 v4, 0x1f40

    const/16 v5, 0x1f40

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;-><init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;Ljava/lang/String;IIZ)V

    .line 83
    return-void
.end method

.method private getAssetDataSource()Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;
    .locals 3

    .line 179
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->assetDataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->context:Lccsanandroid/content/Context;

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;

    invoke-direct {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/AssetDataSource;-><init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->assetDataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    .line 182
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->assetDataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    return-object v0
.end method

.method private getContentDataSource()Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;
    .locals 3

    .line 186
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->contentDataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/ContentDataSource;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->context:Lccsanandroid/content/Context;

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;

    invoke-direct {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/ContentDataSource;-><init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->contentDataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    .line 189
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->contentDataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    return-object v0
.end method

.method private getDataSchemeDataSource()Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;
    .locals 1

    .line 214
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->dataSchemeDataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSchemeDataSource;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSchemeDataSource;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->dataSchemeDataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    .line 217
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->dataSchemeDataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    return-object v0
.end method

.method private getFileDataSource()Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;
    .locals 2

    .line 172
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->fileDataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSource;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSource;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->fileDataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    .line 175
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->fileDataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    return-object v0
.end method

.method private getRawResourceDataSource()Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;
    .locals 3

    .line 221
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->rawResourceDataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/RawResourceDataSource;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->context:Lccsanandroid/content/Context;

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;

    invoke-direct {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/RawResourceDataSource;-><init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/TransferListener;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->rawResourceDataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    .line 224
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->rawResourceDataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    return-object v0
.end method

.method private getRtmpDataSource()Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;
    .locals 3

    .line 193
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->rtmpDataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_0

    .line 196
    :try_start_0
    const-string v0, "com.mbridge.msdk.playercommon.exoplayer2.ext.rtmp.RtmpDataSource"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 197
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->rtmpDataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 204
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating RTMP extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 199
    :catch_1
    move-exception v0

    .line 201
    const-string v0, "DefaultDataSource"

    const-string v1, "Attempting to play RTMP stream without depending on the RTMP extension"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :goto_0
    nop

    .line 206
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->rtmpDataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->baseDataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->rtmpDataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    .line 210
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->rtmpDataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    if-eqz v0, :cond_0

    .line 164
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    .line 167
    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    .line 167
    throw v0

    .line 169
    :cond_0
    :goto_0
    return-void
.end method

.method public final getUri()Lccsanandroid/net/Uri;
    .locals 1

    .line 157
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;->getUri()Lccsanandroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final open(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 126
    iget-object v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->uri:Lccsanandroid/net/Uri;

    invoke-virtual {v0}, Lccsanandroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 127
    iget-object v1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->uri:Lccsanandroid/net/Uri;

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->isLocalFileUri(Lccsanandroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 128
    iget-object v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->uri:Lccsanandroid/net/Uri;

    invoke-virtual {v0}, Lccsanandroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->getAssetDataSource()Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    goto :goto_1

    .line 131
    :cond_1
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->getFileDataSource()Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    goto :goto_1

    .line 133
    :cond_2
    const-string v1, "asset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 134
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->getAssetDataSource()Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    goto :goto_1

    .line 135
    :cond_3
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 136
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->getContentDataSource()Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    goto :goto_1

    .line 137
    :cond_4
    const-string v1, "rtmp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 138
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->getRtmpDataSource()Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    goto :goto_1

    .line 139
    :cond_5
    const-string v1, "data"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 140
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->getDataSchemeDataSource()Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    goto :goto_1

    .line 141
    :cond_6
    const-string v1, "rawresource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 142
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->getRawResourceDataSource()Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    goto :goto_1

    .line 144
    :cond_7
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->baseDataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    .line 147
    :goto_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;->open(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSource;->dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    invoke-interface {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;->read([BII)I

    move-result p1

    return p1
.end method
