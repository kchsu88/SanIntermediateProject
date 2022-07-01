.class Lccsancom/san/mads/mraid/removeDownloadListener$addDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/cx/unifiedDownload$removeDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mads/mraid/removeDownloadListener;-><init>(Lccsanandroid/content/Context;Lccsancom/san/mads/mraid/getDownloadedCount;Lccsancom/san/mads/mraid/IncentiveDownloadUtils;Lccsancom/san/mads/mraid/IncentiveDownloadUtils;Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic unifiedDownload:Lccsancom/san/mads/mraid/removeDownloadListener;


# direct methods
.method constructor <init>(Lccsancom/san/mads/mraid/removeDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/mraid/removeDownloadListener$addDownloadListener;->unifiedDownload:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public removeDownloadListener()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$addDownloadListener;->unifiedDownload:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-virtual {v0}, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingRecordByUrl()V

    return-void
.end method
