.class final Lccsancom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StreamEventCallbackV29"
.end annotation


# instance fields
.field private final callback:Lccsanandroid/media/AudioTrack$StreamEventCallback;

.field private final handler:Lccsanandroid/os/Handler;

.field final synthetic this$0:Lccsancom/google/android/exoplayer2/audio/DefaultAudioSink;


# direct methods
.method public constructor <init>(Lccsancom/google/android/exoplayer2/audio/DefaultAudioSink;)V
    .locals 1

    .line 1816
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;->this$0:Lccsancom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1817
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-direct {v0}, Lccsanandroid/os/Handler;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;->handler:Lccsanandroid/os/Handler;

    .line 1821
    new-instance v0, Lccsancom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29$1;

    invoke-direct {v0, p0, p1}, Lccsancom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29$1;-><init>(Lccsancom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;Lccsancom/google/android/exoplayer2/audio/DefaultAudioSink;)V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;->callback:Lccsanandroid/media/AudioTrack$StreamEventCallback;

    .line 1845
    return-void
.end method


# virtual methods
.method public register(Lccsanandroid/media/AudioTrack;)V
    .locals 2
    .param p1, "audioTrack"    # Lccsanandroid/media/AudioTrack;

    .line 1848
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;->handler:Lccsanandroid/os/Handler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lccsancom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lccsancom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29$$ExternalSyntheticLambda0;-><init>(Lccsanandroid/os/Handler;)V

    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;->callback:Lccsanandroid/media/AudioTrack$StreamEventCallback;

    invoke-virtual {p1, v1, v0}, Lccsanandroid/media/AudioTrack;->registerStreamEventCallback(Ljava/util/concurrent/Executor;Lccsanandroid/media/AudioTrack$StreamEventCallback;)V

    .line 1849
    return-void
.end method

.method public unregister(Lccsanandroid/media/AudioTrack;)V
    .locals 2
    .param p1, "audioTrack"    # Lccsanandroid/media/AudioTrack;

    .line 1852
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;->callback:Lccsanandroid/media/AudioTrack$StreamEventCallback;

    invoke-virtual {p1, v0}, Lccsanandroid/media/AudioTrack;->unregisterStreamEventCallback(Lccsanandroid/media/AudioTrack$StreamEventCallback;)V

    .line 1853
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;->handler:Lccsanandroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1854
    return-void
.end method
