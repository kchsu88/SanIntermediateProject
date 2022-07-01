.class interface abstract Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "MediaSessionImpl"
.end annotation


# virtual methods
.method public abstract getCallingPackage()Ljava/lang/String;
.end method

.method public abstract getCurrentControllerInfo()Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;
.end method

.method public abstract getMediaSession()Ljava/lang/Object;
.end method

.method public abstract getPlaybackState()Lccsanandroid/support/v4/media/session/PlaybackStateCompat;
.end method

.method public abstract getRemoteControlClient()Ljava/lang/Object;
.end method

.method public abstract getSessionToken()Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;
.end method

.method public abstract isActive()Z
.end method

.method public abstract release()V
.end method

.method public abstract sendSessionEvent(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
.end method

.method public abstract setActive(Z)V
.end method

.method public abstract setCallback(Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback;Lccsanandroid/os/Handler;)V
.end method

.method public abstract setCaptioningEnabled(Z)V
.end method

.method public abstract setCurrentControllerInfo(Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;)V
.end method

.method public abstract setExtras(Lccsanandroid/os/Bundle;)V
.end method

.method public abstract setFlags(I)V
.end method

.method public abstract setMediaButtonReceiver(Lccsanandroid/app/PendingIntent;)V
.end method

.method public abstract setMetadata(Lccsanandroid/support/v4/media/MediaMetadataCompat;)V
.end method

.method public abstract setPlaybackState(Lccsanandroid/support/v4/media/session/PlaybackStateCompat;)V
.end method

.method public abstract setPlaybackToLocal(I)V
.end method

.method public abstract setPlaybackToRemote(Lccsanandroidx/media/VolumeProviderCompat;)V
.end method

.method public abstract setQueue(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setQueueTitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract setRatingType(I)V
.end method

.method public abstract setRepeatMode(I)V
.end method

.method public abstract setSessionActivity(Lccsanandroid/app/PendingIntent;)V
.end method

.method public abstract setShuffleMode(I)V
.end method
