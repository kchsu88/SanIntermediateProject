.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;
.super Lccsanandroid/content/BroadcastReceiver;
.source "AudioCapabilitiesReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilitiesReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HdmiAudioPlugBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilitiesReceiver;


# direct methods
.method private constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilitiesReceiver;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilitiesReceiver;

    invoke-direct {p0}, Lccsanandroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilitiesReceiver;Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilitiesReceiver$1;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilitiesReceiver;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
    .locals 0

    .line 91
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result p1

    if-nez p1, :cond_0

    .line 92
    invoke-static {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilities;->getCapabilities(Lccsanandroid/content/Intent;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilities;

    move-result-object p1

    .line 93
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilitiesReceiver;

    iget-object p2, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilitiesReceiver;->audioCapabilities:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilities;

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilities;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 94
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilitiesReceiver;

    iput-object p1, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilitiesReceiver;->audioCapabilities:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilities;

    .line 95
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilitiesReceiver;

    invoke-static {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilitiesReceiver;->access$100(Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilitiesReceiver;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilitiesReceiver$Listener;

    move-result-object p2

    invoke-interface {p2, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilitiesReceiver$Listener;->onAudioCapabilitiesChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioCapabilities;)V

    .line 98
    :cond_0
    return-void
.end method
