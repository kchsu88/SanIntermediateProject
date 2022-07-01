.class Lccsanandroidx/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;
.super Lccsanandroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;
.source "MediaButtonReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/media/session/MediaButtonReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaButtonConnectionCallback"
.end annotation


# instance fields
.field private final mContext:Lccsanandroid/content/Context;

.field private final mIntent:Lccsanandroid/content/Intent;

.field private mMediaBrowser:Lccsanandroid/support/v4/media/MediaBrowserCompat;

.field private final mPendingResult:Lccsanandroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;Lccsanandroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "intent"    # Lccsanandroid/content/Intent;
    .param p3, "pendingResult"    # Lccsanandroid/content/BroadcastReceiver$PendingResult;

    .line 143
    invoke-direct {p0}, Lccsanandroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;-><init>()V

    .line 144
    iput-object p1, p0, Lccsanandroidx/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->mContext:Lccsanandroid/content/Context;

    .line 145
    iput-object p2, p0, Lccsanandroidx/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->mIntent:Lccsanandroid/content/Intent;

    .line 146
    iput-object p3, p0, Lccsanandroidx/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->mPendingResult:Lccsanandroid/content/BroadcastReceiver$PendingResult;

    .line 147
    return-void
.end method

.method private finish()V
    .locals 1

    .line 177
    iget-object v0, p0, Lccsanandroidx/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->mMediaBrowser:Lccsanandroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v0}, Lccsanandroid/support/v4/media/MediaBrowserCompat;->disconnect()V

    .line 178
    iget-object v0, p0, Lccsanandroidx/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->mPendingResult:Lccsanandroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Lccsanandroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 179
    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 3

    .line 156
    :try_start_0
    new-instance v0, Lccsanandroid/support/v4/media/session/MediaControllerCompat;

    iget-object v1, p0, Lccsanandroidx/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->mContext:Lccsanandroid/content/Context;

    iget-object v2, p0, Lccsanandroidx/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->mMediaBrowser:Lccsanandroid/support/v4/media/MediaBrowserCompat;

    .line 157
    invoke-virtual {v2}, Lccsanandroid/support/v4/media/MediaBrowserCompat;->getSessionToken()Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lccsanandroid/support/v4/media/session/MediaControllerCompat;-><init>(Lccsanandroid/content/Context;Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 158
    .local v0, "mediaController":Lccsanandroid/support/v4/media/session/MediaControllerCompat;
    iget-object v1, p0, Lccsanandroidx/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->mIntent:Lccsanandroid/content/Intent;

    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v2}, Lccsanandroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Lccsanandroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/KeyEvent;

    .line 159
    .local v1, "ke":Lccsanandroid/view/KeyEvent;
    invoke-virtual {v0, v1}, Lccsanandroid/support/v4/media/session/MediaControllerCompat;->dispatchMediaButtonEvent(Lccsanandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Lccsanandroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    nop

    .end local v0    # "mediaController":Lccsanandroid/support/v4/media/session/MediaControllerCompat;
    .end local v1    # "ke":Lccsanandroid/view/KeyEvent;
    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Lccsanandroid/os/RemoteException;
    const-string v1, "MediaButtonReceiver"

    const-string v2, "Failed to create a media controller"

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    .end local v0    # "e":Lccsanandroid/os/RemoteException;
    :goto_0
    invoke-direct {p0}, Lccsanandroidx/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->finish()V

    .line 164
    return-void
.end method

.method public onConnectionFailed()V
    .locals 0

    .line 173
    invoke-direct {p0}, Lccsanandroidx/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->finish()V

    .line 174
    return-void
.end method

.method public onConnectionSuspended()V
    .locals 0

    .line 168
    invoke-direct {p0}, Lccsanandroidx/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->finish()V

    .line 169
    return-void
.end method

.method setMediaBrowser(Lccsanandroid/support/v4/media/MediaBrowserCompat;)V
    .locals 0
    .param p1, "mediaBrowser"    # Lccsanandroid/support/v4/media/MediaBrowserCompat;

    .line 150
    iput-object p1, p0, Lccsanandroidx/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->mMediaBrowser:Lccsanandroid/support/v4/media/MediaBrowserCompat;

    .line 151
    return-void
.end method
