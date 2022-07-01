.class public final Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;
.super Ljava/lang/Object;
.source "AudioCapabilitiesReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;,
        Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;,
        Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$Listener;
    }
.end annotation


# instance fields
.field audioCapabilities:Lccsancom/google/android/exoplayer2/audio/AudioCapabilities;

.field private final context:Lccsanandroid/content/Context;

.field private final externalSurroundSoundSettingObserver:Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;

.field private final handler:Lccsanandroid/os/Handler;

.field private final listener:Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$Listener;

.field private final receiver:Lccsanandroid/content/BroadcastReceiver;

.field private registered:Z


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$Listener;)V
    .locals 4
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "listener"    # Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$Listener;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p1

    .line 63
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->context:Lccsanandroid/content/Context;

    .line 64
    invoke-static {p2}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$Listener;

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->listener:Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$Listener;

    .line 65
    invoke-static {}, Lccsancom/google/android/exoplayer2/util/Util;->createHandlerForCurrentOrMainLooper()Lccsanandroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->handler:Lccsanandroid/os/Handler;

    .line 66
    sget v1, Lccsancom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-lt v1, v3, :cond_0

    new-instance v1, Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;

    invoke-direct {v1, p0, v2}, Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;-><init>(Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$1;)V

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iput-object v1, p0, Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->receiver:Lccsanandroid/content/BroadcastReceiver;

    .line 67
    invoke-static {}, Lccsancom/google/android/exoplayer2/audio/AudioCapabilities;->getExternalSurroundSoundGlobalSettingUri()Lccsanandroid/net/Uri;

    move-result-object v1

    .line 68
    .local v1, "externalSurroundSoundUri":Lccsanandroid/net/Uri;
    nop

    .line 69
    if-eqz v1, :cond_1

    .line 70
    new-instance v2, Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;

    .line 71
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getContentResolver()Lccsanandroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3, v1}, Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;-><init>(Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;Lccsanandroid/os/Handler;Lccsanandroid/content/ContentResolver;Lccsanandroid/net/Uri;)V

    goto :goto_1

    .line 72
    :cond_1
    nop

    :goto_1
    iput-object v2, p0, Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->externalSurroundSoundSettingObserver:Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;

    .line 73
    return-void
.end method

.method static synthetic access$100(Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;Lccsancom/google/android/exoplayer2/audio/AudioCapabilities;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;
    .param p1, "x1"    # Lccsancom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 35
    invoke-direct {p0, p1}, Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->onNewAudioCapabilities(Lccsancom/google/android/exoplayer2/audio/AudioCapabilities;)V

    return-void
.end method

.method static synthetic access$200(Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;)Lccsanandroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;

    .line 35
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->context:Lccsanandroid/content/Context;

    return-object v0
.end method

.method private onNewAudioCapabilities(Lccsancom/google/android/exoplayer2/audio/AudioCapabilities;)V
    .locals 1
    .param p1, "newAudioCapabilities"    # Lccsancom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 121
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->registered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->audioCapabilities:Lccsancom/google/android/exoplayer2/audio/AudioCapabilities;

    invoke-virtual {p1, v0}, Lccsancom/google/android/exoplayer2/audio/AudioCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->audioCapabilities:Lccsancom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 123
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->listener:Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$Listener;

    invoke-interface {v0, p1}, Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$Listener;->onAudioCapabilitiesChanged(Lccsancom/google/android/exoplayer2/audio/AudioCapabilities;)V

    .line 125
    :cond_0
    return-void
.end method


# virtual methods
.method public register()Lccsancom/google/android/exoplayer2/audio/AudioCapabilities;
    .locals 6

    .line 84
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->registered:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->audioCapabilities:Lccsancom/google/android/exoplayer2/audio/AudioCapabilities;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/audio/AudioCapabilities;

    return-object v0

    .line 87
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->registered:Z

    .line 88
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->externalSurroundSoundSettingObserver:Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->register()V

    .line 91
    :cond_1
    const/4 v0, 0x0

    .line 92
    .local v0, "stickyIntent":Lccsanandroid/content/Intent;
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->receiver:Lccsanandroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2

    .line 93
    new-instance v1, Lccsanandroid/content/IntentFilter;

    const-string v2, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v1, v2}, Lccsanandroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 94
    .local v1, "intentFilter":Lccsanandroid/content/IntentFilter;
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->context:Lccsanandroid/content/Context;

    iget-object v3, p0, Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->receiver:Lccsanandroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    iget-object v5, p0, Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->handler:Lccsanandroid/os/Handler;

    .line 95
    invoke-virtual {v2, v3, v1, v4, v5}, Lccsanandroid/content/Context;->registerReceiver(Lccsanandroid/content/BroadcastReceiver;Lccsanandroid/content/IntentFilter;Ljava/lang/String;Lccsanandroid/os/Handler;)Lccsanandroid/content/Intent;

    move-result-object v0

    .line 98
    .end local v1    # "intentFilter":Lccsanandroid/content/IntentFilter;
    :cond_2
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->context:Lccsanandroid/content/Context;

    invoke-static {v1, v0}, Lccsancom/google/android/exoplayer2/audio/AudioCapabilities;->getCapabilities(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)Lccsancom/google/android/exoplayer2/audio/AudioCapabilities;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->audioCapabilities:Lccsancom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 99
    return-object v1
.end method

.method public unregister()V
    .locals 2

    .line 107
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->registered:Z

    if-nez v0, :cond_0

    .line 108
    return-void

    .line 110
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->audioCapabilities:Lccsancom/google/android/exoplayer2/audio/AudioCapabilities;

    .line 111
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->receiver:Lccsanandroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 112
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->context:Lccsanandroid/content/Context;

    invoke-virtual {v1, v0}, Lccsanandroid/content/Context;->unregisterReceiver(Lccsanandroid/content/BroadcastReceiver;)V

    .line 114
    :cond_1
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->externalSurroundSoundSettingObserver:Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;

    if-eqz v0, :cond_2

    .line 115
    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->unregister()V

    .line 117
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioCapabilitiesReceiver;->registered:Z

    .line 118
    return-void
.end method
