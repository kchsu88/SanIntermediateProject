.class public interface abstract Lccsanandroid/support/v4/media/session/IMediaControllerCallback;
.super Ljava/lang/Object;
.source "IMediaControllerCallback.java"

# interfaces
.implements Lccsanandroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroid/support/v4/media/session/IMediaControllerCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCaptioningEnabledChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onEvent(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onExtrasChanged(Lccsanandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onMetadataChanged(Lccsanandroid/support/v4/media/MediaMetadataCompat;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPlaybackStateChanged(Lccsanandroid/support/v4/media/session/PlaybackStateCompat;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onQueueChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onRepeatModeChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSessionDestroyed()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSessionReady()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onShuffleModeChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onShuffleModeChangedRemoved(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onVolumeInfoChanged(Lccsanandroid/support/v4/media/session/ParcelableVolumeInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation
.end method
