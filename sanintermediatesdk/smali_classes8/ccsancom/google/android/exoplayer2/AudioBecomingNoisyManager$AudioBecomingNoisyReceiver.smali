.class final Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;
.super Lccsanandroid/content/BroadcastReceiver;
.source "AudioBecomingNoisyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AudioBecomingNoisyReceiver"
.end annotation


# instance fields
.field private final eventHandler:Lccsanandroid/os/Handler;

.field private final listener:Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager$EventListener;

.field final synthetic this$0:Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager;


# direct methods
.method public constructor <init>(Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager;Lccsanandroid/os/Handler;Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager$EventListener;)V
    .locals 0
    .param p2, "eventHandler"    # Lccsanandroid/os/Handler;
    .param p3, "listener"    # Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager$EventListener;

    .line 62
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;->this$0:Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager;

    invoke-direct {p0}, Lccsanandroid/content/BroadcastReceiver;-><init>()V

    .line 63
    iput-object p2, p0, Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;->eventHandler:Lccsanandroid/os/Handler;

    .line 64
    iput-object p3, p0, Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;->listener:Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager$EventListener;

    .line 65
    return-void
.end method


# virtual methods
.method public onReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "intent"    # Lccsanandroid/content/Intent;

    .line 69
    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;->eventHandler:Lccsanandroid/os/Handler;

    invoke-virtual {v0, p0}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    .line 76
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;->this$0:Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager;->access$000(Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;->listener:Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager$EventListener;

    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/AudioBecomingNoisyManager$EventListener;->onAudioBecomingNoisy()V

    .line 79
    :cond_0
    return-void
.end method
