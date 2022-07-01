.class Lccsanandroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;
.super Lccsanandroid/support/v4/media/session/MediaControllerCompat$Callback$StubCompat;
.source "MediaControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtraCallback"
.end annotation


# direct methods
.method constructor <init>(Lccsanandroid/support/v4/media/session/MediaControllerCompat$Callback;)V
    .locals 0
    .param p1, "callback"    # Lccsanandroid/support/v4/media/session/MediaControllerCompat$Callback;

    .line 2249
    invoke-direct {p0, p1}, Lccsanandroid/support/v4/media/session/MediaControllerCompat$Callback$StubCompat;-><init>(Lccsanandroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 2250
    return-void
.end method


# virtual methods
.method public onExtrasChanged(Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 2279
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public onMetadataChanged(Lccsanandroid/support/v4/media/MediaMetadataCompat;)V
    .locals 1
    .param p1, "metadata"    # Lccsanandroid/support/v4/media/MediaMetadataCompat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 2261
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .locals 1
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

    .line 2267
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/support/v4/media/session/MediaSessionCompat$QueueItem;>;"
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 2273
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public onSessionDestroyed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 2255
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public onVolumeInfoChanged(Lccsanandroid/support/v4/media/session/ParcelableVolumeInfo;)V
    .locals 1
    .param p1, "info"    # Lccsanandroid/support/v4/media/session/ParcelableVolumeInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 2285
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
