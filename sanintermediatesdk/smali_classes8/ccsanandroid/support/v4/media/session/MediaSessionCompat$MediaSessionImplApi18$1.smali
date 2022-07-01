.class Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi18$1;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"

# interfaces
.implements Lccsanandroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi18;->setCallback(Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback;Lccsanandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi18;


# direct methods
.method constructor <init>(Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi18;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi18;

    .line 3226
    iput-object p1, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi18$1;->this$0:Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaybackPositionUpdate(J)V
    .locals 6
    .param p1, "newPositionMs"    # J

    .line 3229
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi18$1;->this$0:Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi18;

    .line 3230
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 3229
    const/16 v1, 0x12

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi18;->postToHandler(IIILjava/lang/Object;Lccsanandroid/os/Bundle;)V

    .line 3231
    return-void
.end method
