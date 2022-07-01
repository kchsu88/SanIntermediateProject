.class public interface abstract Lccsancom/vungle/warren/downloader/AssetDownloadListener;
.super Ljava/lang/Object;
.source "AssetDownloadListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;,
        Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    }
.end annotation


# virtual methods
.method public abstract onError(Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lccsancom/vungle/warren/downloader/DownloadRequest;)V
.end method

.method public abstract onProgress(Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;Lccsancom/vungle/warren/downloader/DownloadRequest;)V
.end method

.method public abstract onSuccess(Ljava/io/File;Lccsancom/vungle/warren/downloader/DownloadRequest;)V
.end method
