.class public Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
.super Ljava/lang/Object;
.source "AssetDownloadListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/downloader/AssetDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadError"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError$ErrorReason;
    }
.end annotation


# instance fields
.field public final cause:Ljava/lang/Throwable;

.field public final reason:I

.field public final serverCode:I


# direct methods
.method public constructor <init>(ILjava/lang/Throwable;I)V
    .locals 0
    .param p1, "serverCode"    # I
    .param p2, "th"    # Ljava/lang/Throwable;
    .param p3, "reason"    # I

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;->serverCode:I

    .line 26
    iput-object p2, p0, Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;->cause:Ljava/lang/Throwable;

    .line 27
    iput p3, p0, Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;->reason:I

    .line 28
    return-void
.end method
