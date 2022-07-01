.class public interface abstract Lccsansan/bm/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/bm/getDownloadingList$removeDownloadListener;
    }
.end annotation


# virtual methods
.method public abstract addDownloadListener(Lccsansan/bm/getDownloadingList$removeDownloadListener;)V
.end method

.method public abstract getDownloadingList(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/WebResourceRequest;)Lccsanandroid/webkit/WebResourceResponse;
.end method

.method public abstract getDownloadingList(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Lccsanandroid/webkit/WebResourceResponse;
.end method

.method public abstract removeDownloadListener(Ljava/lang/String;)Z
.end method

.method public abstract unifiedDownload()V
.end method

.method public abstract unifiedDownload(Ljava/lang/String;)V
.end method
