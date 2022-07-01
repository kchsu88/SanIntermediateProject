.class Lccsanandroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi24;
.super Lccsanandroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi23;
.source "MediaControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaControllerImplApi24"
.end annotation


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "sessionToken"    # Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 2479
    invoke-direct {p0, p1, p2}, Lccsanandroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi23;-><init>(Lccsanandroid/content/Context;Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 2480
    return-void
.end method


# virtual methods
.method public getTransportControls()Lccsanandroid/support/v4/media/session/MediaControllerCompat$TransportControls;
    .locals 2

    .line 2484
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi24;->mControllerObj:Ljava/lang/Object;

    invoke-static {v0}, Lccsanandroid/support/v4/media/session/MediaControllerCompatApi21;->getTransportControls(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2485
    .local v0, "controlsObj":Ljava/lang/Object;
    if-eqz v0, :cond_0

    new-instance v1, Lccsanandroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi24;

    invoke-direct {v1, v0}, Lccsanandroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi24;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method
