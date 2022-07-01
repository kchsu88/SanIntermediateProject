.class Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$1;
.super Lccsanandroid/os/Handler;
.source "AsynchronousMediaCodecBufferEnqueuer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;


# direct methods
.method constructor <init>(Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;Lccsanandroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;
    .param p2, "arg0"    # Lccsanandroid/os/Looper;

    .line 92
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$1;->this$0:Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    invoke-direct {p0, p2}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Lccsanandroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Lccsanandroid/os/Message;

    .line 95
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$1;->this$0:Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    invoke-static {v0, p1}, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->access$000(Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;Lccsanandroid/os/Message;)V

    .line 96
    return-void
.end method
