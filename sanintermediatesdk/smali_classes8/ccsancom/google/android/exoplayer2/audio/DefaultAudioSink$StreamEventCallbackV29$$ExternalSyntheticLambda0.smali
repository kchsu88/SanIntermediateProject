.class public final synthetic Lccsancom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic f$0:Lccsanandroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Lccsanandroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29$$ExternalSyntheticLambda0;->f$0:Lccsanandroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29$$ExternalSyntheticLambda0;->f$0:Lccsanandroid/os/Handler;

    invoke-virtual {v0, p1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
