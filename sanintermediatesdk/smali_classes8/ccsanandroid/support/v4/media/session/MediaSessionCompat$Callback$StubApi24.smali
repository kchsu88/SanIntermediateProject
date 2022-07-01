.class Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi24;
.super Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi23;
.source "MediaSessionCompat.java"

# interfaces
.implements Lccsanandroid/support/v4/media/session/MediaSessionCompatApi24$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StubApi24"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback;


# direct methods
.method constructor <init>(Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback;)V
    .locals 0

    .line 1520
    iput-object p1, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi24;->this$0:Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-direct {p0, p1}, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi23;-><init>(Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    .line 1521
    return-void
.end method


# virtual methods
.method public onPrepare()V
    .locals 1

    .line 1525
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi24;->this$0:Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0}, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback;->onPrepare()V

    .line 1526
    return-void
.end method

.method public onPrepareFromMediaId(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Lccsanandroid/os/Bundle;

    .line 1530
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi24;->this$0:Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback;->onPrepareFromMediaId(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 1531
    return-void
.end method

.method public onPrepareFromSearch(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Lccsanandroid/os/Bundle;

    .line 1535
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi24;->this$0:Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback;->onPrepareFromSearch(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 1536
    return-void
.end method

.method public onPrepareFromUri(Lccsanandroid/net/Uri;Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "uri"    # Lccsanandroid/net/Uri;
    .param p2, "extras"    # Lccsanandroid/os/Bundle;

    .line 1540
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi24;->this$0:Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback;->onPrepareFromUri(Lccsanandroid/net/Uri;Lccsanandroid/os/Bundle;)V

    .line 1541
    return-void
.end method
