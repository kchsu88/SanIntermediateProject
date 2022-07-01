.class Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "unifiedDownload"
.end annotation


# instance fields
.field private addDownloadListener:Lccsanandroid/media/MediaScannerConnection;

.field private final getDownloadingList:Ljava/lang/String;

.field private final removeDownloadListener:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$unifiedDownload;->getDownloadingList:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$unifiedDownload;->removeDownloadListener:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$getDownloadingList;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$unifiedDownload;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addDownloadListener(Lccsanandroid/media/MediaScannerConnection;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$unifiedDownload;->addDownloadListener:Lccsanandroid/media/MediaScannerConnection;

    return-void
.end method

.method static synthetic addDownloadListener(Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$unifiedDownload;Lccsanandroid/media/MediaScannerConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$unifiedDownload;->addDownloadListener(Lccsanandroid/media/MediaScannerConnection;)V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$unifiedDownload;->addDownloadListener:Lccsanandroid/media/MediaScannerConnection;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$unifiedDownload;->getDownloadingList:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$unifiedDownload;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanandroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Lccsanandroid/net/Uri;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl$unifiedDownload;->addDownloadListener:Lccsanandroid/media/MediaScannerConnection;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lccsanandroid/media/MediaScannerConnection;->disconnect()V

    :cond_0
    return-void
.end method
