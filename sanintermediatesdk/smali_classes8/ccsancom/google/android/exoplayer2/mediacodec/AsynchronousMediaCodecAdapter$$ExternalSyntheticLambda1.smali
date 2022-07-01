.class public final synthetic Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lccsanandroid/media/MediaCodec;


# direct methods
.method public synthetic constructor <init>(Lccsanandroid/media/MediaCodec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$$ExternalSyntheticLambda1;->f$0:Lccsanandroid/media/MediaCodec;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$$ExternalSyntheticLambda1;->f$0:Lccsanandroid/media/MediaCodec;

    invoke-virtual {v0}, Lccsanandroid/media/MediaCodec;->start()V

    return-void
.end method
