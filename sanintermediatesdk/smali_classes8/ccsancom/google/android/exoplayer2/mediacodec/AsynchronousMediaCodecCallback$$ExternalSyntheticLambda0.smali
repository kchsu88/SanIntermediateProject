.class public final synthetic Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback$$ExternalSyntheticLambda0;->f$0:Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;

    iput-object p2, p0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback$$ExternalSyntheticLambda0;->f$0:Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecCallback;->lambda$flushAsync$0$com-google-android-exoplayer2-mediacodec-AsynchronousMediaCodecCallback(Ljava/lang/Runnable;)V

    return-void
.end method
