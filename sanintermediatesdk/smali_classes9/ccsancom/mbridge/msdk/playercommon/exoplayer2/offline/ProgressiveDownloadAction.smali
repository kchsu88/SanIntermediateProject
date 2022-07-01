.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloadAction;
.super Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;
.source "ProgressiveDownloadAction.java"


# static fields
.field public static final DESERIALIZER:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction$Deserializer;

.field private static final TYPE:Ljava/lang/String; = "progressive"

.field private static final VERSION:I


# instance fields
.field public final customCacheKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloadAction$1;

    const-string v1, "progressive"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloadAction$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloadAction;->DESERIALIZER:Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction$Deserializer;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/net/Uri;Z[BLjava/lang/String;)V
    .locals 6

    .line 58
    const-string v1, "progressive"

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;-><init>(Ljava/lang/String;ILccsanandroid/net/Uri;Z[B)V

    .line 59
    iput-object p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloadAction;->customCacheKey:Ljava/lang/String;

    .line 60
    return-void
.end method

.method private getCacheKey()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloadAction;->customCacheKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloadAction;->uri:Lccsanandroid/net/Uri;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil;->generateKey(Lccsanandroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method protected final bridge synthetic createDownloader(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloaderConstructorHelper;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/Downloader;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloadAction;->createDownloader(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloaderConstructorHelper;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloader;

    move-result-object p1

    return-object p1
.end method

.method protected final createDownloader(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloaderConstructorHelper;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloader;
    .locals 3

    .line 64
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloader;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloadAction;->uri:Lccsanandroid/net/Uri;

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloadAction;->customCacheKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloader;-><init>(Lccsanandroid/net/Uri;Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloaderConstructorHelper;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 88
    if-ne p0, p1, :cond_0

    .line 89
    const/4 p1, 0x1

    return p1

    .line 91
    :cond_0
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    const/4 p1, 0x0

    return p1

    .line 94
    :cond_1
    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloadAction;

    .line 95
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloadAction;->customCacheKey:Ljava/lang/String;

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloadAction;->customCacheKey:Ljava/lang/String;

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 2

    .line 100
    invoke-super {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;->hashCode()I

    move-result v0

    .line 101
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloadAction;->customCacheKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 102
    return v0
.end method

.method public final isSameMedia(Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;)Z
    .locals 1

    .line 82
    instance-of v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloadAction;

    if-eqz v0, :cond_0

    .line 83
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloadAction;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloadAction;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloadAction;->getCacheKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 82
    :goto_0
    return p1
.end method

.method protected final writeToStream(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloadAction;->uri:Lccsanandroid/net/Uri;

    invoke-virtual {v0}, Lccsanandroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 70
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloadAction;->isRemoveAction:Z

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 71
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloadAction;->data:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 72
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloadAction;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 73
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloadAction;->customCacheKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 74
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 75
    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloadAction;->customCacheKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 78
    :cond_1
    return-void
.end method
