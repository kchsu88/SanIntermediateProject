.class public interface abstract Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/mads/mraid/IncentiveDownloadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "getDownloadedRecordByUrl"
.end annotation


# virtual methods
.method public abstract IncentiveDownloadUtils()V
.end method

.method public abstract IncentiveDownloadUtils(Ljava/net/URI;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/san/mads/mraid/addDownloadListener;
        }
    .end annotation
.end method

.method public abstract IncentiveDownloadUtils(ZLccsancom/san/mads/mraid/getDownloadingRecordByUrl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/san/mads/mraid/addDownloadListener;
        }
    .end annotation
.end method

.method public abstract addDownloadListener(IIIILccsansan/cx/unifiedDownload$unifiedDownload;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/san/mads/mraid/addDownloadListener;
        }
    .end annotation
.end method

.method public abstract addDownloadListener(Lccsancom/san/mads/mraid/getDownloadingList;)V
.end method

.method public abstract addDownloadListener(Z)V
.end method

.method public abstract addDownloadListener(Lccsanandroid/webkit/ConsoleMessage;)Z
.end method

.method public abstract getDownloadingList(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract removeDownloadListener(Ljava/net/URI;)V
.end method

.method public abstract removeDownloadListener(Ljava/lang/String;)Z
.end method

.method public abstract removeDownloadListener(Ljava/lang/String;Lccsanandroid/webkit/JsResult;)Z
.end method

.method public abstract unifiedDownload()V
.end method

.method public abstract unifiedDownload(Ljava/lang/String;)V
.end method

.method public abstract unifiedDownload(Ljava/net/URI;)V
.end method

.method public abstract unifiedDownload(Z)V
.end method
