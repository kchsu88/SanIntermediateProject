.class public Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;
.super Ljava/lang/Object;
.source "AssetDownloadListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/downloader/AssetDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Progress"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress$ProgressStatus;
    }
.end annotation


# instance fields
.field public progressPercent:I

.field public sizeBytes:J

.field public startBytes:J

.field public status:I

.field public timestampDownloadStart:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;)Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;
    .locals 3
    .param p0, "progress"    # Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;

    .line 52
    new-instance v0, Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;

    invoke-direct {v0}, Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;-><init>()V

    .line 53
    .local v0, "copy":Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;
    iget v1, p0, Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;->status:I

    iput v1, v0, Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;->status:I

    .line 54
    iget v1, p0, Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;->progressPercent:I

    iput v1, v0, Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;->progressPercent:I

    .line 55
    iget-wide v1, p0, Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;->timestampDownloadStart:J

    iput-wide v1, v0, Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;->timestampDownloadStart:J

    .line 56
    iget-wide v1, p0, Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;->sizeBytes:J

    iput-wide v1, v0, Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;->sizeBytes:J

    .line 57
    iget-wide v1, p0, Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;->startBytes:J

    iput-wide v1, v0, Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;->startBytes:J

    .line 59
    return-object v0
.end method
