.class public Lccsanandroid/support/v4/media/session/MediaControllerCompatApi23$TransportControls;
.super Ljava/lang/Object;
.source "MediaControllerCompatApi23.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/session/MediaControllerCompatApi23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransportControls"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static playFromUri(Ljava/lang/Object;Lccsanandroid/net/Uri;Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p0, "controlsObj"    # Ljava/lang/Object;
    .param p1, "uri"    # Lccsanandroid/net/Uri;
    .param p2, "extras"    # Lccsanandroid/os/Bundle;

    .line 30
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/media/session/MediaController$TransportControls;->playFromUri(Lccsanandroid/net/Uri;Lccsanandroid/os/Bundle;)V

    .line 31
    return-void
.end method
