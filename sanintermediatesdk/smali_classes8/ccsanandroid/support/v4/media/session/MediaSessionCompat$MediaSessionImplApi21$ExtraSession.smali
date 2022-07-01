.class Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;
.super Lccsanandroid/support/v4/media/session/IMediaSession$Stub;
.source "MediaSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExtraSession"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;


# direct methods
.method constructor <init>(Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;

    .line 3603
    iput-object p1, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;->this$0:Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;

    invoke-direct {p0}, Lccsanandroid/support/v4/media/session/IMediaSession$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addQueueItem(Lccsanandroid/support/v4/media/MediaDescriptionCompat;)V
    .locals 1
    .param p1, "descriptionCompat"    # Lccsanandroid/support/v4/media/MediaDescriptionCompat;

    .line 3834
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public addQueueItemAt(Lccsanandroid/support/v4/media/MediaDescriptionCompat;I)V
    .locals 1
    .param p1, "descriptionCompat"    # Lccsanandroid/support/v4/media/MediaDescriptionCompat;
    .param p2, "index"    # I

    .line 3840
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public adjustVolume(IILjava/lang/String;)V
    .locals 1
    .param p1, "direction"    # I
    .param p2, "flags"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 3668
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public fastForward()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 3758
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getExtras()Lccsanandroid/os/Bundle;
    .locals 1

    .line 3864
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getFlags()J
    .locals 1

    .line 3656
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getLaunchPendingIntent()Lccsanandroid/app/PendingIntent;
    .locals 1

    .line 3649
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getMetadata()Lccsanandroid/support/v4/media/MediaMetadataCompat;
    .locals 1

    .line 3817
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 3637
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getPlaybackState()Lccsanandroid/support/v4/media/session/PlaybackStateCompat;
    .locals 2

    .line 3822
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;->this$0:Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;

    iget-object v0, v0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mPlaybackState:Lccsanandroid/support/v4/media/session/PlaybackStateCompat;

    iget-object v1, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;->this$0:Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;

    iget-object v1, v1, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mMetadata:Lccsanandroid/support/v4/media/MediaMetadataCompat;

    invoke-static {v0, v1}, Lccsanandroid/support/v4/media/session/MediaSessionCompat;->getStateWithUpdatedPosition(Lccsanandroid/support/v4/media/session/PlaybackStateCompat;Lccsanandroid/support/v4/media/MediaMetadataCompat;)Lccsanandroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    return-object v0
.end method

.method public getQueue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsanandroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation

    .line 3828
    const/4 v0, 0x0

    return-object v0
.end method

.method public getQueueTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 3858
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getRatingType()I
    .locals 1

    .line 3870
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;->this$0:Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;

    iget v0, v0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mRatingType:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 3881
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;->this$0:Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;

    iget v0, v0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mRepeatMode:I

    return v0
.end method

.method public getShuffleMode()I
    .locals 1

    .line 3892
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;->this$0:Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;

    iget v0, v0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mShuffleMode:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 3643
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getVolumeAttributes()Lccsanandroid/support/v4/media/session/ParcelableVolumeInfo;
    .locals 1

    .line 3662
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public isCaptioningEnabled()Z
    .locals 1

    .line 3875
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;->this$0:Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;

    iget-boolean v0, v0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mCaptioningEnabled:Z

    return v0
.end method

.method public isShuffleModeEnabledRemoved()Z
    .locals 1

    .line 3886
    const/4 v0, 0x0

    return v0
.end method

.method public isTransportControlEnabled()Z
    .locals 1

    .line 3898
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public next()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 3746
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 3734
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public play()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 3704
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public playFromMediaId(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 3710
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public playFromSearch(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 3716
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public playFromUri(Lccsanandroid/net/Uri;Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "uri"    # Lccsanandroid/net/Uri;
    .param p2, "extras"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 3722
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public prepare()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 3680
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public prepareFromMediaId(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 3686
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public prepareFromSearch(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 3692
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public prepareFromUri(Lccsanandroid/net/Uri;Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "uri"    # Lccsanandroid/net/Uri;
    .param p2, "extras"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 3698
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public previous()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 3752
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public rate(Lccsanandroid/support/v4/media/RatingCompat;)V
    .locals 1
    .param p1, "rating"    # Lccsanandroid/support/v4/media/RatingCompat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 3776
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public rateWithExtras(Lccsanandroid/support/v4/media/RatingCompat;Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "rating"    # Lccsanandroid/support/v4/media/RatingCompat;
    .param p2, "extras"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 3782
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public registerCallbackListener(Lccsanandroid/support/v4/media/session/IMediaControllerCallback;)V
    .locals 4
    .param p1, "cb"    # Lccsanandroid/support/v4/media/session/IMediaControllerCallback;

    .line 3618
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;->this$0:Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;

    iget-boolean v0, v0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mDestroyed:Z

    if-nez v0, :cond_1

    .line 3619
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;->this$0:Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;

    invoke-virtual {v0}, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 3620
    .local v0, "packageName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 3621
    const-string v0, "android.media.session.MediaController"

    .line 3623
    :cond_0
    new-instance v1, Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;

    .line 3624
    invoke-static {}, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;->getCallingPid()I

    move-result v2

    invoke-static {}, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;->getCallingUid()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;II)V

    .line 3625
    .local v1, "info":Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;
    iget-object v2, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;->this$0:Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;

    iget-object v2, v2, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Lccsanandroid/os/RemoteCallbackList;

    invoke-virtual {v2, p1, v1}, Lccsanandroid/os/RemoteCallbackList;->register(Lccsanandroid/os/IInterface;Ljava/lang/Object;)Z

    .line 3627
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "info":Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;
    :cond_1
    return-void
.end method

.method public removeQueueItem(Lccsanandroid/support/v4/media/MediaDescriptionCompat;)V
    .locals 1
    .param p1, "description"    # Lccsanandroid/support/v4/media/MediaDescriptionCompat;

    .line 3846
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public removeQueueItemAt(I)V
    .locals 1
    .param p1, "index"    # I

    .line 3852
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public rewind()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 3764
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public seekTo(J)V
    .locals 1
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 3770
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public sendCommand(Ljava/lang/String;Lccsanandroid/os/Bundle;Lccsanandroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Lccsanandroid/os/Bundle;
    .param p3, "cb"    # Lccsanandroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;

    .line 3607
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public sendCustomAction(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 3811
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public sendMediaButton(Lccsanandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "mediaButton"    # Lccsanandroid/view/KeyEvent;

    .line 3613
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public setCaptioningEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 3788
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public setRepeatMode(I)V
    .locals 1
    .param p1, "repeatMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 3794
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public setShuffleMode(I)V
    .locals 1
    .param p1, "shuffleMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 3805
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public setShuffleModeEnabledRemoved(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 3800
    return-void
.end method

.method public setVolumeTo(IILjava/lang/String;)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "flags"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 3674
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public skipToQueueItem(J)V
    .locals 1
    .param p1, "id"    # J

    .line 3728
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 3740
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public unregisterCallbackListener(Lccsanandroid/support/v4/media/session/IMediaControllerCallback;)V
    .locals 1
    .param p1, "cb"    # Lccsanandroid/support/v4/media/session/IMediaControllerCallback;

    .line 3631
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;->this$0:Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;

    iget-object v0, v0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Lccsanandroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Lccsanandroid/os/RemoteCallbackList;->unregister(Lccsanandroid/os/IInterface;)Z

    .line 3632
    return-void
.end method
