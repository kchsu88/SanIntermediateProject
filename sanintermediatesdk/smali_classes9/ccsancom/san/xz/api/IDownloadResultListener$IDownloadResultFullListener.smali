.class public interface abstract Lccsancom/san/xz/api/IDownloadResultListener$IDownloadResultFullListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/xz/api/IDownloadResultListener$unifiedDownload;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/xz/api/IDownloadResultListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IDownloadResultFullListener"
.end annotation


# virtual methods
.method public abstract onDLServiceConnected(Lccsancom/san/xz/api/IDownloadService;)V
.end method

.method public abstract onDLServiceDisconnected()V
.end method

.method public abstract synthetic onDownloadedItemDelete(Lccsancom/san/xz/base/XzRecord;)V
.end method

.method public abstract onPause(Lccsancom/san/xz/base/XzRecord;)V
.end method

.method public abstract onProgress(Lccsancom/san/xz/base/XzRecord;JJ)V
.end method

.method public abstract onStart(Lccsancom/san/xz/base/XzRecord;)V
.end method

.method public abstract onUpdate(Lccsancom/san/xz/base/XzRecord;)V
.end method
