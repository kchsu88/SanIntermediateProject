.class public final synthetic Lccsancom/google/android/exoplayer2/text/cea/CeaDecoder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lccsancom/google/android/exoplayer2/decoder/DecoderOutputBuffer$Owner;


# instance fields
.field public final synthetic f$0:Lccsancom/google/android/exoplayer2/text/cea/CeaDecoder;


# direct methods
.method public synthetic constructor <init>(Lccsancom/google/android/exoplayer2/text/cea/CeaDecoder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/google/android/exoplayer2/text/cea/CeaDecoder$$ExternalSyntheticLambda0;->f$0:Lccsancom/google/android/exoplayer2/text/cea/CeaDecoder;

    return-void
.end method


# virtual methods
.method public final releaseOutputBuffer(Lccsancom/google/android/exoplayer2/decoder/DecoderOutputBuffer;)V
    .locals 1

    iget-object v0, p0, Lccsancom/google/android/exoplayer2/text/cea/CeaDecoder$$ExternalSyntheticLambda0;->f$0:Lccsancom/google/android/exoplayer2/text/cea/CeaDecoder;

    check-cast p1, Lccsancom/google/android/exoplayer2/text/cea/CeaDecoder$CeaOutputBuffer;

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/text/cea/CeaDecoder;->releaseOutputBuffer(Lccsancom/google/android/exoplayer2/text/SubtitleOutputBuffer;)V

    return-void
.end method
