.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSchemeDataSource;
.super Ljava/lang/Object;
.source "DataSchemeDataSource.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;


# static fields
.field public static final SCHEME_DATA:Ljava/lang/String; = "data"


# instance fields
.field private bytesRead:I

.field private data:[B

.field private dataSpec:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSchemeDataSource;->dataSpec:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    .line 86
    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSchemeDataSource;->data:[B

    .line 87
    return-void
.end method

.method public final getUri()Lccsanandroid/net/Uri;
    .locals 1

    .line 80
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSchemeDataSource;->dataSpec:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->uri:Lccsanandroid/net/Uri;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final open(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSchemeDataSource;->dataSpec:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    .line 40
    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->uri:Lccsanandroid/net/Uri;

    .line 41
    invoke-virtual {p1}, Lccsanandroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 42
    const-string v1, "data"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 45
    invoke-virtual {p1}, Lccsanandroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 46
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 49
    const/4 p1, 0x1

    aget-object p1, v0, p1

    .line 50
    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v2, ";base64"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    :try_start_0
    invoke-static {p1, v1}, Lccsanandroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSchemeDataSource;->data:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while parsing Base64 encoded string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 58
    :cond_0
    const-string v0, "US-ASCII"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSchemeDataSource;->data:[B

    .line 60
    :goto_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSchemeDataSource;->data:[B

    array-length p1, p1

    int-to-long v0, p1

    return-wide v0

    .line 47
    :cond_1
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected URI format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_2
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final read([BII)I
    .locals 2

    .line 65
    if-nez p3, :cond_0

    .line 66
    const/4 p1, 0x0

    return p1

    .line 68
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSchemeDataSource;->data:[B

    array-length v0, v0

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSchemeDataSource;->bytesRead:I

    sub-int/2addr v0, v1

    .line 69
    if-nez v0, :cond_1

    .line 70
    const/4 p1, -0x1

    return p1

    .line 72
    :cond_1
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 73
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSchemeDataSource;->data:[B

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSchemeDataSource;->bytesRead:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSchemeDataSource;->bytesRead:I

    add-int/2addr p1, p3

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSchemeDataSource;->bytesRead:I

    .line 75
    return p3
.end method