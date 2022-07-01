.class public interface abstract Lccsancom/google/android/exoplayer2/offline/DownloadManager$Listener;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/offline/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onDownloadChanged(Lccsancom/google/android/exoplayer2/offline/DownloadManager;Lccsancom/google/android/exoplayer2/offline/Download;Ljava/lang/Exception;)V
.end method

.method public abstract onDownloadRemoved(Lccsancom/google/android/exoplayer2/offline/DownloadManager;Lccsancom/google/android/exoplayer2/offline/Download;)V
.end method

.method public abstract onDownloadsPausedChanged(Lccsancom/google/android/exoplayer2/offline/DownloadManager;Z)V
.end method

.method public abstract onIdle(Lccsancom/google/android/exoplayer2/offline/DownloadManager;)V
.end method

.method public abstract onInitialized(Lccsancom/google/android/exoplayer2/offline/DownloadManager;)V
.end method

.method public abstract onRequirementsStateChanged(Lccsancom/google/android/exoplayer2/offline/DownloadManager;Lccsancom/google/android/exoplayer2/scheduler/Requirements;I)V
.end method

.method public abstract onWaitingForRequirementsChanged(Lccsancom/google/android/exoplayer2/offline/DownloadManager;Z)V
.end method
