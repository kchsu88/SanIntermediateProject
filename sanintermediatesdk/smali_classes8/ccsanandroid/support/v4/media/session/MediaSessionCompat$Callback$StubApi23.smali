.class Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi23;
.super Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;
.source "MediaSessionCompat.java"

# interfaces
.implements Lccsanandroid/support/v4/media/session/MediaSessionCompatApi23$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StubApi23"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback;


# direct methods
.method constructor <init>(Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback;)V
    .locals 0

    .line 1508
    iput-object p1, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi23;->this$0:Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-direct {p0, p1}, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;-><init>(Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    .line 1509
    return-void
.end method


# virtual methods
.method public onPlayFromUri(Lccsanandroid/net/Uri;Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "uri"    # Lccsanandroid/net/Uri;
    .param p2, "extras"    # Lccsanandroid/os/Bundle;

    .line 1513
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi23;->this$0:Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlayFromUri(Lccsanandroid/net/Uri;Lccsanandroid/os/Bundle;)V

    .line 1514
    return-void
.end method
