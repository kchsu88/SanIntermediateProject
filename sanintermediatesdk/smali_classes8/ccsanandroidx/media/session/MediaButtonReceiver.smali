.class public Lccsanandroidx/media/session/MediaButtonReceiver;
.super Lccsanandroid/content/BroadcastReceiver;
.source "MediaButtonReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaButtonReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Lccsanandroid/content/BroadcastReceiver;-><init>()V

    .line 135
    return-void
.end method

.method public static buildMediaButtonPendingIntent(Lccsanandroid/content/Context;J)Lccsanandroid/app/PendingIntent;
    .locals 3
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "action"    # J

    .line 228
    invoke-static {p0}, Lccsanandroidx/media/session/MediaButtonReceiver;->getMediaButtonReceiverComponent(Lccsanandroid/content/Context;)Lccsanandroid/content/ComponentName;

    move-result-object v0

    .line 229
    .local v0, "mbrComponent":Lccsanandroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 230
    const-string v1, "MediaButtonReceiver"

    const-string v2, "A unique media button receiver could not be found in the given context, so couldn\'t build a pending intent."

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v1, 0x0

    return-object v1

    .line 234
    :cond_0
    invoke-static {p0, v0, p1, p2}, Lccsanandroidx/media/session/MediaButtonReceiver;->buildMediaButtonPendingIntent(Lccsanandroid/content/Context;Lccsanandroid/content/ComponentName;J)Lccsanandroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static buildMediaButtonPendingIntent(Lccsanandroid/content/Context;Lccsanandroid/content/ComponentName;J)Lccsanandroid/app/PendingIntent;
    .locals 5
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "mbrComponent"    # Lccsanandroid/content/ComponentName;
    .param p2, "action"    # J

    .line 261
    const/4 v0, 0x0

    const-string v1, "MediaButtonReceiver"

    if-nez p1, :cond_0

    .line 262
    const-string v2, "The component name of media button receiver should be provided."

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-object v0

    .line 265
    :cond_0
    invoke-static {p2, p3}, Lccsanandroid/support/v4/media/session/PlaybackStateCompat;->toKeyCode(J)I

    move-result v2

    .line 266
    .local v2, "keyCode":I
    if-nez v2, :cond_1

    .line 267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot build a media button pending intent with the given action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-object v0

    .line 271
    :cond_1
    new-instance v0, Lccsanandroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    .local v0, "intent":Lccsanandroid/content/Intent;
    invoke-virtual {v0, p1}, Lccsanandroid/content/Intent;->setComponent(Lccsanandroid/content/ComponentName;)Lccsanandroid/content/Intent;

    .line 273
    new-instance v1, Lccsanandroid/view/KeyEvent;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lccsanandroid/view/KeyEvent;-><init>(II)V

    const-string v4, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v4, v1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Lccsanandroid/os/Parcelable;)Lccsanandroid/content/Intent;

    .line 274
    invoke-static {p0, v2, v0, v3}, Lccsanandroid/app/PendingIntent;->getBroadcast(Lccsanandroid/content/Context;ILccsanandroid/content/Intent;I)Lccsanandroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static getMediaButtonReceiverComponent(Lccsanandroid/content/Context;)Lccsanandroid/content/ComponentName;
    .locals 7
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 282
    new-instance v0, Lccsanandroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 283
    .local v0, "queryIntent":Lccsanandroid/content/Intent;
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->setPackage(Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 284
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v1

    .line 285
    .local v1, "pm":Lccsanandroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lccsanandroid/content/pm/PackageManager;->queryBroadcastReceivers(Lccsanandroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 286
    .local v3, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 287
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/content/pm/ResolveInfo;

    .line 288
    .local v2, "resolveInfo":Lccsanandroid/content/pm/ResolveInfo;
    new-instance v4, Lccsanandroid/content/ComponentName;

    iget-object v5, v2, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    iget-object v5, v5, Lccsanandroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v2, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    iget-object v6, v6, Lccsanandroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lccsanandroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 290
    .end local v2    # "resolveInfo":Lccsanandroid/content/pm/ResolveInfo;
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v5, :cond_1

    .line 291
    const-string v2, "MediaButtonReceiver"

    const-string v4, "More than one BroadcastReceiver that handles android.intent.action.MEDIA_BUTTON was found, returning null."

    invoke-static {v2, v4}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private static getServiceComponentByAction(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroid/content/ComponentName;
    .locals 7
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .line 306
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v0

    .line 307
    .local v0, "pm":Lccsanandroid/content/pm/PackageManager;
    new-instance v1, Lccsanandroid/content/Intent;

    invoke-direct {v1, p1}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 308
    .local v1, "queryIntent":Lccsanandroid/content/Intent;
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsanandroid/content/Intent;->setPackage(Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 309
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/pm/PackageManager;->queryIntentServices(Lccsanandroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 310
    .local v3, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 311
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/content/pm/ResolveInfo;

    .line 312
    .local v2, "resolveInfo":Lccsanandroid/content/pm/ResolveInfo;
    new-instance v4, Lccsanandroid/content/ComponentName;

    iget-object v5, v2, Lccsanandroid/content/pm/ResolveInfo;->serviceInfo:Lccsanandroid/content/pm/ServiceInfo;

    iget-object v5, v5, Lccsanandroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v2, Lccsanandroid/content/pm/ResolveInfo;->serviceInfo:Lccsanandroid/content/pm/ServiceInfo;

    iget-object v6, v6, Lccsanandroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lccsanandroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 314
    .end local v2    # "resolveInfo":Lccsanandroid/content/pm/ResolveInfo;
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 315
    const/4 v2, 0x0

    return-object v2

    .line 317
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected 1 service that handles "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static handleIntent(Lccsanandroid/support/v4/media/session/MediaSessionCompat;Lccsanandroid/content/Intent;)Lccsanandroid/view/KeyEvent;
    .locals 2
    .param p0, "mediaSessionCompat"    # Lccsanandroid/support/v4/media/session/MediaSessionCompat;
    .param p1, "intent"    # Lccsanandroid/content/Intent;

    .line 194
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 195
    invoke-virtual {p1}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p1, v0}, Lccsanandroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {p1, v0}, Lccsanandroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Lccsanandroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/KeyEvent;

    .line 200
    .local v0, "ke":Lccsanandroid/view/KeyEvent;
    invoke-virtual {p0}, Lccsanandroid/support/v4/media/session/MediaSessionCompat;->getController()Lccsanandroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v1

    .line 201
    .local v1, "mediaController":Lccsanandroid/support/v4/media/session/MediaControllerCompat;
    invoke-virtual {v1, v0}, Lccsanandroid/support/v4/media/session/MediaControllerCompat;->dispatchMediaButtonEvent(Lccsanandroid/view/KeyEvent;)Z

    .line 202
    return-object v0

    .line 197
    .end local v0    # "ke":Lccsanandroid/view/KeyEvent;
    .end local v1    # "mediaController":Lccsanandroid/support/v4/media/session/MediaControllerCompat;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static startForegroundService(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "intent"    # Lccsanandroid/content/Intent;

    .line 298
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 299
    invoke-virtual {p0, p1}, Lccsanandroid/content/Context;->startForegroundService(Lccsanandroid/content/Intent;)Lccsanandroid/content/ComponentName;

    goto :goto_0

    .line 301
    :cond_0
    invoke-virtual {p0, p1}, Lccsanandroid/content/Context;->startService(Lccsanandroid/content/Intent;)Lccsanandroid/content/ComponentName;

    .line 303
    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "intent"    # Lccsanandroid/content/Intent;

    .line 105
    if-eqz p2, :cond_3

    .line 106
    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v0}, Lccsanandroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    nop

    .line 112
    invoke-static {p1, v1}, Lccsanandroidx/media/session/MediaButtonReceiver;->getServiceComponentByAction(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroid/content/ComponentName;

    move-result-object v0

    .line 113
    .local v0, "mediaButtonServiceComponentName":Lccsanandroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {p2, v0}, Lccsanandroid/content/Intent;->setComponent(Lccsanandroid/content/ComponentName;)Lccsanandroid/content/Intent;

    .line 115
    invoke-static {p1, p2}, Lccsanandroidx/media/session/MediaButtonReceiver;->startForegroundService(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V

    .line 116
    return-void

    .line 118
    :cond_1
    const-string v1, "android.media.browse.MediaBrowserService"

    invoke-static {p1, v1}, Lccsanandroidx/media/session/MediaButtonReceiver;->getServiceComponentByAction(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroid/content/ComponentName;

    move-result-object v1

    .line 120
    .local v1, "mediaBrowserServiceComponentName":Lccsanandroid/content/ComponentName;
    if-eqz v1, :cond_2

    .line 121
    invoke-virtual {p0}, Lccsanandroidx/media/session/MediaButtonReceiver;->goAsync()Lccsanandroid/content/BroadcastReceiver$PendingResult;

    move-result-object v2

    .line 122
    .local v2, "pendingResult":Lccsanandroid/content/BroadcastReceiver$PendingResult;
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v3

    .line 123
    .local v3, "applicationContext":Lccsanandroid/content/Context;
    new-instance v4, Lccsanandroidx/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;

    invoke-direct {v4, v3, p2, v2}, Lccsanandroidx/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;-><init>(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;Lccsanandroid/content/BroadcastReceiver$PendingResult;)V

    .line 125
    .local v4, "connectionCallback":Lccsanandroidx/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;
    new-instance v5, Lccsanandroid/support/v4/media/MediaBrowserCompat;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v1, v4, v6}, Lccsanandroid/support/v4/media/MediaBrowserCompat;-><init>(Lccsanandroid/content/Context;Lccsanandroid/content/ComponentName;Lccsanandroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Lccsanandroid/os/Bundle;)V

    .line 127
    .local v5, "mediaBrowser":Lccsanandroid/support/v4/media/MediaBrowserCompat;
    invoke-virtual {v4, v5}, Lccsanandroidx/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->setMediaBrowser(Lccsanandroid/support/v4/media/MediaBrowserCompat;)V

    .line 128
    invoke-virtual {v5}, Lccsanandroid/support/v4/media/MediaBrowserCompat;->connect()V

    .line 129
    return-void

    .line 131
    .end local v2    # "pendingResult":Lccsanandroid/content/BroadcastReceiver$PendingResult;
    .end local v3    # "applicationContext":Lccsanandroid/content/Context;
    .end local v4    # "connectionCallback":Lccsanandroidx/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;
    .end local v5    # "mediaBrowser":Lccsanandroid/support/v4/media/MediaBrowserCompat;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Could not find any Service that handles android.intent.action.MEDIA_BUTTON or implements a media browser service."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    .end local v0    # "mediaButtonServiceComponentName":Lccsanandroid/content/ComponentName;
    .end local v1    # "mediaBrowserServiceComponentName":Lccsanandroid/content/ComponentName;
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignore unsupported intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaButtonReceiver"

    invoke-static {v1, v0}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method
