.class final Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager;
.super Ljava/lang/Object;
.source "AudioBecomingNoisyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;,
        Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager$EventListener;
    }
.end annotation


# instance fields
.field private final context:Lccsanandroid/content/Context;

.field private final receiver:Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;

.field private receiverRegistered:Z


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/os/Handler;Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager$EventListener;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "eventHandler"    # Lccsanandroid/os/Handler;
    .param p3, "listener"    # Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager$EventListener;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager;->context:Lccsanandroid/content/Context;

    .line 37
    new-instance v0, Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;

    invoke-direct {v0, p0, p2, p3}, Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;-><init>(Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager;Lccsanandroid/os/Handler;Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager$EventListener;)V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager;->receiver:Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager;)Z
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager;

    .line 25
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager;->receiverRegistered:Z

    return v0
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 48
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager;->receiverRegistered:Z

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager;->context:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager;->receiver:Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;

    new-instance v2, Lccsanandroid/content/IntentFilter;

    const-string v3, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v2, v3}, Lccsanandroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/Context;->registerReceiver(Lccsanandroid/content/BroadcastReceiver;Lccsanandroid/content/IntentFilter;)Lccsanandroid/content/Intent;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager;->receiverRegistered:Z

    goto :goto_0

    .line 52
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager;->receiverRegistered:Z

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager;->context:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager;->receiver:Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->unregisterReceiver(Lccsanandroid/content/BroadcastReceiver;)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager;->receiverRegistered:Z

    .line 56
    :cond_1
    :goto_0
    return-void
.end method
