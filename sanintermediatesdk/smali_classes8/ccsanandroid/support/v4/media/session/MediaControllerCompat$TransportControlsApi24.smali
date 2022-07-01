.class Lccsanandroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi24;
.super Lccsanandroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi23;
.source "MediaControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransportControlsApi24"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "controlsObj"    # Ljava/lang/Object;

    .line 2493
    invoke-direct {p0, p1}, Lccsanandroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi23;-><init>(Ljava/lang/Object;)V

    .line 2494
    return-void
.end method


# virtual methods
.method public prepare()V
    .locals 1

    .line 2498
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi24;->mControlsObj:Ljava/lang/Object;

    invoke-static {v0}, Lccsanandroid/support/v4/media/session/MediaControllerCompatApi24$TransportControls;->prepare(Ljava/lang/Object;)V

    .line 2499
    return-void
.end method

.method public prepareFromMediaId(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Lccsanandroid/os/Bundle;

    .line 2503
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi24;->mControlsObj:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lccsanandroid/support/v4/media/session/MediaControllerCompatApi24$TransportControls;->prepareFromMediaId(Ljava/lang/Object;Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 2505
    return-void
.end method

.method public prepareFromSearch(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Lccsanandroid/os/Bundle;

    .line 2509
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi24;->mControlsObj:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lccsanandroid/support/v4/media/session/MediaControllerCompatApi24$TransportControls;->prepareFromSearch(Ljava/lang/Object;Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 2511
    return-void
.end method

.method public prepareFromUri(Lccsanandroid/net/Uri;Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "uri"    # Lccsanandroid/net/Uri;
    .param p2, "extras"    # Lccsanandroid/os/Bundle;

    .line 2515
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi24;->mControlsObj:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lccsanandroid/support/v4/media/session/MediaControllerCompatApi24$TransportControls;->prepareFromUri(Ljava/lang/Object;Lccsanandroid/net/Uri;Lccsanandroid/os/Bundle;)V

    .line 2516
    return-void
.end method
