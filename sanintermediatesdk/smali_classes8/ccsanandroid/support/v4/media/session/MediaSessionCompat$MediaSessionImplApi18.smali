.class Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi18;
.super Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;
.source "MediaSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaSessionImplApi18"
.end annotation


# static fields
.field private static sIsMbrPendingIntentSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3212
    const/4 v0, 0x1

    sput-boolean v0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi18;->sIsMbrPendingIntentSupported:Z

    return-void
.end method

.method constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/content/ComponentName;Lccsanandroid/app/PendingIntent;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "mbrComponent"    # Lccsanandroid/content/ComponentName;
    .param p4, "mbrIntent"    # Lccsanandroid/app/PendingIntent;

    .line 3216
    invoke-direct {p0, p1, p2, p3, p4}, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/content/ComponentName;Lccsanandroid/app/PendingIntent;)V

    .line 3217
    return-void
.end method


# virtual methods
.method getRccTransportControlFlagsFromActions(J)I
    .locals 6
    .param p1, "actions"    # J

    .line 3258
    invoke-super {p0, p1, p2}, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->getRccTransportControlFlagsFromActions(J)I

    move-result v0

    .line 3259
    .local v0, "transportControlFlags":I
    const-wide/16 v1, 0x100

    and-long/2addr v1, p1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 3260
    or-int/lit16 v0, v0, 0x100

    .line 3262
    :cond_0
    return v0
.end method

.method registerMediaButtonEventReceiver(Lccsanandroid/app/PendingIntent;Lccsanandroid/content/ComponentName;)V
    .locals 3
    .param p1, "mbrIntent"    # Lccsanandroid/app/PendingIntent;
    .param p2, "mbrComponent"    # Lccsanandroid/content/ComponentName;

    .line 3270
    sget-boolean v0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi18;->sIsMbrPendingIntentSupported:Z

    if-eqz v0, :cond_0

    .line 3272
    :try_start_0
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi18;->mAudioManager:Lccsanandroid/media/AudioManager;

    invoke-virtual {v0, p1}, Lccsanandroid/media/AudioManager;->registerMediaButtonEventReceiver(Lccsanandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3277
    goto :goto_0

    .line 3273
    :catch_0
    move-exception v0

    .line 3274
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "MediaSessionCompat"

    const-string v2, "Unable to register media button event receiver with PendingIntent, falling back to ComponentName."

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3276
    const/4 v1, 0x0

    sput-boolean v1, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi18;->sIsMbrPendingIntentSupported:Z

    .line 3280
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    sget-boolean v0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi18;->sIsMbrPendingIntentSupported:Z

    if-nez v0, :cond_1

    .line 3281
    invoke-super {p0, p1, p2}, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->registerMediaButtonEventReceiver(Lccsanandroid/app/PendingIntent;Lccsanandroid/content/ComponentName;)V

    .line 3283
    :cond_1
    return-void
.end method

.method public setCallback(Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback;Lccsanandroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback;
    .param p2, "handler"    # Lccsanandroid/os/Handler;

    .line 3221
    invoke-super {p0, p1, p2}, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->setCallback(Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback;Lccsanandroid/os/Handler;)V

    .line 3222
    if-nez p1, :cond_0

    .line 3223
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi18;->mRcc:Lccsanandroid/media/RemoteControlClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/media/RemoteControlClient;->setPlaybackPositionUpdateListener(Lccsanandroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;)V

    goto :goto_0

    .line 3225
    :cond_0
    new-instance v0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi18$1;

    invoke-direct {v0, p0}, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi18$1;-><init>(Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi18;)V

    .line 3233
    .local v0, "listener":Lccsanandroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;
    iget-object v1, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi18;->mRcc:Lccsanandroid/media/RemoteControlClient;

    invoke-virtual {v1, v0}, Lccsanandroid/media/RemoteControlClient;->setPlaybackPositionUpdateListener(Lccsanandroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;)V

    .line 3235
    .end local v0    # "listener":Lccsanandroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;
    :goto_0
    return-void
.end method

.method setRccState(Lccsanandroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 12
    .param p1, "state"    # Lccsanandroid/support/v4/media/session/PlaybackStateCompat;

    .line 3239
    invoke-virtual {p1}, Lccsanandroid/support/v4/media/session/PlaybackStateCompat;->getPosition()J

    move-result-wide v0

    .line 3240
    .local v0, "position":J
    invoke-virtual {p1}, Lccsanandroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F

    move-result v2

    .line 3241
    .local v2, "speed":F
    invoke-virtual {p1}, Lccsanandroid/support/v4/media/session/PlaybackStateCompat;->getLastPositionUpdateTime()J

    move-result-wide v3

    .line 3242
    .local v3, "updateTime":J
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 3243
    .local v5, "currTime":J
    invoke-virtual {p1}, Lccsanandroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    const-wide/16 v7, 0x0

    cmp-long v9, v0, v7

    if-lez v9, :cond_1

    .line 3244
    const-wide/16 v9, 0x0

    .line 3245
    .local v9, "diff":J
    cmp-long v11, v3, v7

    if-lez v11, :cond_0

    .line 3246
    sub-long v9, v5, v3

    .line 3247
    const/4 v7, 0x0

    cmpl-float v7, v2, v7

    if-lez v7, :cond_0

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v2, v7

    if-eqz v7, :cond_0

    .line 3248
    long-to-float v7, v9

    mul-float v7, v7, v2

    float-to-long v9, v7

    .line 3251
    :cond_0
    add-long/2addr v0, v9

    .line 3253
    .end local v9    # "diff":J
    :cond_1
    iget-object v7, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi18;->mRcc:Lccsanandroid/media/RemoteControlClient;

    invoke-virtual {p1}, Lccsanandroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v8

    invoke-virtual {p0, v8}, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi18;->getRccStateFromState(I)I

    move-result v8

    invoke-virtual {v7, v8, v0, v1, v2}, Lccsanandroid/media/RemoteControlClient;->setPlaybackState(IJF)V

    .line 3254
    return-void
.end method

.method unregisterMediaButtonEventReceiver(Lccsanandroid/app/PendingIntent;Lccsanandroid/content/ComponentName;)V
    .locals 1
    .param p1, "mbrIntent"    # Lccsanandroid/app/PendingIntent;
    .param p2, "mbrComponent"    # Lccsanandroid/content/ComponentName;

    .line 3288
    sget-boolean v0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi18;->sIsMbrPendingIntentSupported:Z

    if-eqz v0, :cond_0

    .line 3289
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi18;->mAudioManager:Lccsanandroid/media/AudioManager;

    invoke-virtual {v0, p1}, Lccsanandroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Lccsanandroid/app/PendingIntent;)V

    goto :goto_0

    .line 3291
    :cond_0
    invoke-super {p0, p1, p2}, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->unregisterMediaButtonEventReceiver(Lccsanandroid/app/PendingIntent;Lccsanandroid/content/ComponentName;)V

    .line 3293
    :goto_0
    return-void
.end method
