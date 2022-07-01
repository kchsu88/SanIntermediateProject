.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloadHelper;
.super Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadHelper;
.source "ProgressiveDownloadHelper.java"


# instance fields
.field private final customCacheKey:Ljava/lang/String;

.field private final uri:Lccsanandroid/net/Uri;


# direct methods
.method public constructor <init>(Lccsanandroid/net/Uri;)V
    .locals 1

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloadHelper;-><init>(Lccsanandroid/net/Uri;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lccsanandroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadHelper;-><init>()V

    .line 34
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloadHelper;->uri:Lccsanandroid/net/Uri;

    .line 35
    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloadHelper;->customCacheKey:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public final getDownloadAction([BLjava/util/List;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/TrackKey;",
            ">;)",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;"
        }
    .end annotation

    .line 55
    new-instance p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloadAction;

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloadHelper;->uri:Lccsanandroid/net/Uri;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloadHelper;->customCacheKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p2, v0, v2, p1, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloadAction;-><init>(Lccsanandroid/net/Uri;Z[BLjava/lang/String;)V

    return-object p2
.end method

.method public final getPeriodCount()I
    .locals 1

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public final getRemoveAction([B)Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloadAction;
    .locals 4

    .line 60
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloadAction;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloadHelper;->uri:Lccsanandroid/net/Uri;

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloadHelper;->customCacheKey:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, p1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloadAction;-><init>(Lccsanandroid/net/Uri;Z[BLjava/lang/String;)V

    return-object v0
.end method

.method public final getTrackGroups(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;
    .locals 0

    .line 50
    sget-object p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;->EMPTY:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;

    return-object p1
.end method

.method protected final prepareInternal()V
    .locals 0

    .line 41
    return-void
.end method
