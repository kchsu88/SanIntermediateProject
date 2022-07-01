.class Lccsanandroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi23;
.super Lccsanandroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;
.source "MediaControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransportControlsApi23"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "controlsObj"    # Ljava/lang/Object;

    .line 2464
    invoke-direct {p0, p1}, Lccsanandroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;-><init>(Ljava/lang/Object;)V

    .line 2465
    return-void
.end method


# virtual methods
.method public playFromUri(Lccsanandroid/net/Uri;Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "uri"    # Lccsanandroid/net/Uri;
    .param p2, "extras"    # Lccsanandroid/os/Bundle;

    .line 2469
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi23;->mControlsObj:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lccsanandroid/support/v4/media/session/MediaControllerCompatApi23$TransportControls;->playFromUri(Ljava/lang/Object;Lccsanandroid/net/Uri;Lccsanandroid/os/Bundle;)V

    .line 2471
    return-void
.end method
