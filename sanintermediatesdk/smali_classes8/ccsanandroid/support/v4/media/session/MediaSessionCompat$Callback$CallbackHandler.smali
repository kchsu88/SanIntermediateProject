.class Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback$CallbackHandler;
.super Lccsanandroid/os/Handler;
.source "MediaSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackHandler"
.end annotation


# static fields
.field private static final MSG_MEDIA_PLAY_PAUSE_KEY_DOUBLE_TAP_TIMEOUT:I = 0x1


# instance fields
.field final synthetic this$0:Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback;


# direct methods
.method constructor <init>(Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback;Lccsanandroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Lccsanandroid/os/Looper;

    .line 1330
    iput-object p1, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback$CallbackHandler;->this$0:Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback;

    .line 1331
    invoke-direct {p0, p2}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    .line 1332
    return-void
.end method


# virtual methods
.method public handleMessage(Lccsanandroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Lccsanandroid/os/Message;

    .line 1336
    iget v0, p1, Lccsanandroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1337
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback$CallbackHandler;->this$0:Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback;

    iget-object v1, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;

    invoke-virtual {v0, v1}, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback;->handleMediaPlayPauseKeySingleTapIfPending(Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;)V

    .line 1339
    :cond_0
    return-void
.end method
