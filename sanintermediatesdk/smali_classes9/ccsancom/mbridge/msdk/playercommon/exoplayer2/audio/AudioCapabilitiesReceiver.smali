.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilitiesReceiver;
.super Ljava/lang/Object;
.source "AudioCapabilitiesReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilitiesReceiver$Listener;
    }
.end annotation


# instance fields
.field audioCapabilities:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilities;

.field private final context:Lccsanandroid/content/Context;

.field private final listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilitiesReceiver$Listener;

.field private final receiver:Lccsanandroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilitiesReceiver$Listener;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/content/Context;

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilitiesReceiver;->context:Lccsanandroid/content/Context;

    .line 58
    invoke-static {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilitiesReceiver$Listener;

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilitiesReceiver;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilitiesReceiver$Listener;

    .line 59
    sget p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/4 p2, 0x0

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;

    invoke-direct {p1, p0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilitiesReceiver;Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilitiesReceiver$1;)V

    move-object p2, p1

    :cond_0
    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilitiesReceiver;->receiver:Lccsanandroid/content/BroadcastReceiver;

    .line 60
    return-void
.end method

.method static synthetic access$100(Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilitiesReceiver;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilitiesReceiver$Listener;
    .locals 0

    .line 30
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilitiesReceiver;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilitiesReceiver$Listener;

    return-object p0
.end method


# virtual methods
.method public final register()Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilities;
    .locals 4

    .line 71
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilitiesReceiver;->receiver:Lccsanandroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 72
    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilitiesReceiver;->context:Lccsanandroid/content/Context;

    new-instance v2, Lccsanandroid/content/IntentFilter;

    const-string v3, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v2, v3}, Lccsanandroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lccsanandroid/content/Context;->registerReceiver(Lccsanandroid/content/BroadcastReceiver;Lccsanandroid/content/IntentFilter;)Lccsanandroid/content/Intent;

    move-result-object v0

    .line 73
    :goto_0
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilities;->getCapabilities(Lccsanandroid/content/Intent;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilities;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilitiesReceiver;->audioCapabilities:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilities;

    .line 74
    return-object v0
.end method

.method public final unregister()V
    .locals 2

    .line 82
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilitiesReceiver;->receiver:Lccsanandroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 83
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilitiesReceiver;->context:Lccsanandroid/content/Context;

    invoke-virtual {v1, v0}, Lccsanandroid/content/Context;->unregisterReceiver(Lccsanandroid/content/BroadcastReceiver;)V

    .line 85
    :cond_0
    return-void
.end method
