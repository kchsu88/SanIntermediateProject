.class public abstract Lccsanandroid/support/v4/media/session/MediaControllerCompat$Callback;
.super Ljava/lang/Object;
.source "MediaControllerCompat.java"

# interfaces
.implements Lccsanandroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;,
        Lccsanandroid/support/v4/media/session/MediaControllerCompat$Callback$StubCompat;,
        Lccsanandroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;
    }
.end annotation


# instance fields
.field final mCallbackObj:Ljava/lang/Object;

.field mHandler:Lccsanandroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;

.field mIControllerCallback:Lccsanandroid/support/v4/media/session/IMediaControllerCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 694
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 695
    new-instance v0, Lccsanandroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;

    invoke-direct {v0, p0}, Lccsanandroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;-><init>(Lccsanandroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    invoke-static {v0}, Lccsanandroid/support/v4/media/session/MediaControllerCompatApi21;->createCallback(Lccsanandroid/support/v4/media/session/MediaControllerCompatApi21$Callback;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lccsanandroid/support/v4/media/session/MediaControllerCompat$Callback;->mCallbackObj:Ljava/lang/Object;

    goto :goto_0

    .line 697
    :cond_0
    new-instance v0, Lccsanandroid/support/v4/media/session/MediaControllerCompat$Callback$StubCompat;

    invoke-direct {v0, p0}, Lccsanandroid/support/v4/media/session/MediaControllerCompat$Callback$StubCompat;-><init>(Lccsanandroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    iput-object v0, p0, Lccsanandroid/support/v4/media/session/MediaControllerCompat$Callback;->mIControllerCallback:Lccsanandroid/support/v4/media/session/IMediaControllerCallback;

    iput-object v0, p0, Lccsanandroid/support/v4/media/session/MediaControllerCompat$Callback;->mCallbackObj:Ljava/lang/Object;

    .line 699
    :goto_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 823
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lccsanandroid/support/v4/media/session/MediaControllerCompat$Callback;->postToHandler(ILjava/lang/Object;Lccsanandroid/os/Bundle;)V

    .line 824
    return-void
.end method

.method public getIControllerCallback()Lccsanandroid/support/v4/media/session/IMediaControllerCallback;
    .locals 1

    .line 818
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaControllerCompat$Callback;->mIControllerCallback:Lccsanandroid/support/v4/media/session/IMediaControllerCallback;

    return-object v0
.end method

.method public onAudioInfoChanged(Lccsanandroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;)V
    .locals 0
    .param p1, "info"    # Lccsanandroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    .line 780
    return-void
.end method

.method public onCaptioningEnabledChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 788
    return-void
.end method

.method public onExtrasChanged(Lccsanandroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Lccsanandroid/os/Bundle;

    .line 772
    return-void
.end method

.method public onMetadataChanged(Lccsanandroid/support/v4/media/MediaMetadataCompat;)V
    .locals 0
    .param p1, "metadata"    # Lccsanandroid/support/v4/media/MediaMetadataCompat;

    .line 742
    return-void
.end method

.method public onPlaybackStateChanged(Lccsanandroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 0
    .param p1, "state"    # Lccsanandroid/support/v4/media/session/PlaybackStateCompat;

    .line 733
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation

    .line 753
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/support/v4/media/session/MediaSessionCompat$QueueItem;>;"
    return-void
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 763
    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0
    .param p1, "repeatMode"    # I

    .line 800
    return-void
.end method

.method public onSessionDestroyed()V
    .locals 0

    .line 714
    return-void
.end method

.method public onSessionEvent(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Lccsanandroid/os/Bundle;

    .line 725
    return-void
.end method

.method public onSessionReady()V
    .locals 0

    .line 707
    return-void
.end method

.method public onShuffleModeChanged(I)V
    .locals 0
    .param p1, "shuffleMode"    # I

    .line 811
    return-void
.end method

.method postToHandler(ILjava/lang/Object;Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "data"    # Lccsanandroid/os/Bundle;

    .line 843
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaControllerCompat$Callback;->mHandler:Lccsanandroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;

    if-eqz v0, :cond_0

    .line 844
    invoke-virtual {v0, p1, p2}, Lccsanandroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->obtainMessage(ILjava/lang/Object;)Lccsanandroid/os/Message;

    move-result-object v0

    .line 845
    .local v0, "msg":Lccsanandroid/os/Message;
    invoke-virtual {v0, p3}, Lccsanandroid/os/Message;->setData(Lccsanandroid/os/Bundle;)V

    .line 846
    invoke-virtual {v0}, Lccsanandroid/os/Message;->sendToTarget()V

    .line 848
    .end local v0    # "msg":Lccsanandroid/os/Message;
    :cond_0
    return-void
.end method

.method setHandler(Lccsanandroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Lccsanandroid/os/Handler;

    .line 830
    if-nez p1, :cond_0

    .line 831
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaControllerCompat$Callback;->mHandler:Lccsanandroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;

    if-eqz v0, :cond_1

    .line 832
    const/4 v1, 0x0

    iput-boolean v1, v0, Lccsanandroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->mRegistered:Z

    .line 833
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaControllerCompat$Callback;->mHandler:Lccsanandroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 834
    iput-object v1, p0, Lccsanandroid/support/v4/media/session/MediaControllerCompat$Callback;->mHandler:Lccsanandroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;

    goto :goto_0

    .line 837
    :cond_0
    new-instance v0, Lccsanandroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;

    invoke-virtual {p1}, Lccsanandroid/os/Handler;->getLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lccsanandroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;-><init>(Lccsanandroid/support/v4/media/session/MediaControllerCompat$Callback;Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsanandroid/support/v4/media/session/MediaControllerCompat$Callback;->mHandler:Lccsanandroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;

    .line 838
    const/4 v1, 0x1

    iput-boolean v1, v0, Lccsanandroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->mRegistered:Z

    .line 840
    :cond_1
    :goto_0
    return-void
.end method
