.class public interface abstract Lccsancom/vungle/warren/downloader/Downloader;
.super Ljava/lang/Object;
.source "Downloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/downloader/Downloader$RequestException;,
        Lccsancom/vungle/warren/downloader/Downloader$NetworkType;
    }
.end annotation


# virtual methods
.method public abstract cancel(Lccsancom/vungle/warren/downloader/DownloadRequest;)V
.end method

.method public abstract cancelAll()V
.end method

.method public abstract cancelAndAwait(Lccsancom/vungle/warren/downloader/DownloadRequest;J)Z
.end method

.method public abstract clearCache()V
.end method

.method public abstract download(Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;)V
.end method

.method public abstract dropCache(Ljava/lang/String;)Z
.end method

.method public abstract getAllRequests()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/vungle/warren/downloader/DownloadRequest;",
            ">;"
        }
    .end annotation
.end method

.method public abstract init()V
.end method

.method public abstract isCacheEnabled()Z
.end method

.method public abstract setCacheEnabled(Z)V
.end method

.method public abstract setProgressStep(I)V
.end method

.method public abstract updatePriority(Lccsancom/vungle/warren/downloader/DownloadRequest;)V
.end method
