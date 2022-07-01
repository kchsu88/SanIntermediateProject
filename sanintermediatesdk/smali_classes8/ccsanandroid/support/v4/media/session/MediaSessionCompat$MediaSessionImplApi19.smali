.class Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19;
.super Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi18;
.source "MediaSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaSessionImplApi19"
.end annotation


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/content/ComponentName;Lccsanandroid/app/PendingIntent;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "mbrComponent"    # Lccsanandroid/content/ComponentName;
    .param p4, "mbrIntent"    # Lccsanandroid/app/PendingIntent;

    .line 3300
    invoke-direct {p0, p1, p2, p3, p4}, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi18;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/content/ComponentName;Lccsanandroid/app/PendingIntent;)V

    .line 3301
    return-void
.end method


# virtual methods
.method buildRccMetadata(Lccsanandroid/os/Bundle;)Lccsanandroid/media/RemoteControlClient$MetadataEditor;
    .locals 9
    .param p1, "metadata"    # Lccsanandroid/os/Bundle;

    .line 3335
    invoke-super {p0, p1}, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi18;->buildRccMetadata(Lccsanandroid/os/Bundle;)Lccsanandroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    .line 3336
    .local v0, "editor":Lccsanandroid/media/RemoteControlClient$MetadataEditor;
    iget-object v1, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19;->mState:Lccsanandroid/support/v4/media/session/PlaybackStateCompat;

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    move-wide v4, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19;->mState:Lccsanandroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v1}, Lccsanandroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v4

    .line 3337
    .local v4, "actions":J
    :goto_0
    const-wide/16 v6, 0x80

    and-long/2addr v6, v4

    const v1, 0x10000001

    cmp-long v8, v6, v2

    if-eqz v8, :cond_1

    .line 3338
    invoke-virtual {v0, v1}, Lccsanandroid/media/RemoteControlClient$MetadataEditor;->addEditableKey(I)V

    .line 3341
    :cond_1
    if-nez p1, :cond_2

    .line 3342
    return-object v0

    .line 3344
    :cond_2
    const-string v2, "android.media.metadata.YEAR"

    invoke-virtual {p1, v2}, Lccsanandroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3345
    const/16 v3, 0x8

    .line 3346
    invoke-virtual {p1, v2}, Lccsanandroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 3345
    invoke-virtual {v0, v3, v6, v7}, Lccsanandroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Lccsanandroid/media/RemoteControlClient$MetadataEditor;

    .line 3348
    :cond_3
    const-string v2, "android.media.metadata.RATING"

    invoke-virtual {p1, v2}, Lccsanandroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3350
    const/16 v3, 0x65

    .line 3351
    invoke-virtual {p1, v2}, Lccsanandroid/os/Bundle;->getParcelable(Ljava/lang/String;)Lccsanandroid/os/Parcelable;

    move-result-object v2

    .line 3350
    invoke-virtual {v0, v3, v2}, Lccsanandroid/media/MediaMetadataEditor;->putObject(ILjava/lang/Object;)Lccsanandroid/media/MediaMetadataEditor;

    .line 3353
    :cond_4
    const-string v2, "android.media.metadata.USER_RATING"

    invoke-virtual {p1, v2}, Lccsanandroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3355
    nop

    .line 3356
    invoke-virtual {p1, v2}, Lccsanandroid/os/Bundle;->getParcelable(Ljava/lang/String;)Lccsanandroid/os/Parcelable;

    move-result-object v2

    .line 3355
    invoke-virtual {v0, v1, v2}, Lccsanandroid/media/MediaMetadataEditor;->putObject(ILjava/lang/Object;)Lccsanandroid/media/MediaMetadataEditor;

    .line 3358
    :cond_5
    return-object v0
.end method

.method getRccTransportControlFlagsFromActions(J)I
    .locals 6
    .param p1, "actions"    # J

    .line 3326
    invoke-super {p0, p1, p2}, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi18;->getRccTransportControlFlagsFromActions(J)I

    move-result v0

    .line 3327
    .local v0, "transportControlFlags":I
    const-wide/16 v1, 0x80

    and-long/2addr v1, p1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 3328
    or-int/lit16 v0, v0, 0x200

    .line 3330
    :cond_0
    return v0
.end method

.method public setCallback(Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback;Lccsanandroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback;
    .param p2, "handler"    # Lccsanandroid/os/Handler;

    .line 3305
    invoke-super {p0, p1, p2}, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi18;->setCallback(Lccsanandroid/support/v4/media/session/MediaSessionCompat$Callback;Lccsanandroid/os/Handler;)V

    .line 3306
    if-nez p1, :cond_0

    .line 3307
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19;->mRcc:Lccsanandroid/media/RemoteControlClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/media/RemoteControlClient;->setMetadataUpdateListener(Lccsanandroid/media/RemoteControlClient$OnMetadataUpdateListener;)V

    goto :goto_0

    .line 3309
    :cond_0
    new-instance v0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19$1;

    invoke-direct {v0, p0}, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19$1;-><init>(Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19;)V

    .line 3320
    .local v0, "listener":Lccsanandroid/media/RemoteControlClient$OnMetadataUpdateListener;
    iget-object v1, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19;->mRcc:Lccsanandroid/media/RemoteControlClient;

    invoke-virtual {v1, v0}, Lccsanandroid/media/RemoteControlClient;->setMetadataUpdateListener(Lccsanandroid/media/RemoteControlClient$OnMetadataUpdateListener;)V

    .line 3322
    .end local v0    # "listener":Lccsanandroid/media/RemoteControlClient$OnMetadataUpdateListener;
    :goto_0
    return-void
.end method
