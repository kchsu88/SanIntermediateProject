.class final Lccsancom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/source/ProgressiveMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SampleStreamImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

.field private final track:I


# direct methods
.method public constructor <init>(Lccsancom/google/android/exoplayer2/source/ProgressiveMediaPeriod;I)V
    .locals 0
    .param p2, "track"    # I

    .line 934
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;->this$0:Lccsancom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 935
    iput p2, p0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    .line 936
    return-void
.end method

.method static synthetic access$000(Lccsancom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;)I
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;

    .line 930
    iget v0, p0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    return v0
.end method


# virtual methods
.method public isReady()Z
    .locals 2

    .line 940
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;->this$0:Lccsancom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    iget v1, p0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    invoke-virtual {v0, v1}, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->isReady(I)Z

    move-result v0

    return v0
.end method

.method public maybeThrowError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 945
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;->this$0:Lccsancom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    iget v1, p0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    invoke-virtual {v0, v1}, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->maybeThrowError(I)V

    .line 946
    return-void
.end method

.method public readData(Lccsancom/google/android/exoplayer2/FormatHolder;Lccsancom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .locals 2
    .param p1, "formatHolder"    # Lccsancom/google/android/exoplayer2/FormatHolder;
    .param p2, "buffer"    # Lccsancom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .param p3, "readFlags"    # I

    .line 951
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;->this$0:Lccsancom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    iget v1, p0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->readData(ILccsancom/google/android/exoplayer2/FormatHolder;Lccsancom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result v0

    return v0
.end method

.method public skipData(J)I
    .locals 2
    .param p1, "positionUs"    # J

    .line 956
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;->this$0:Lccsancom/google/android/exoplayer2/source/ProgressiveMediaPeriod;

    iget v1, p0, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    invoke-virtual {v0, v1, p1, p2}, Lccsancom/google/android/exoplayer2/source/ProgressiveMediaPeriod;->skipData(IJ)I

    move-result v0

    return v0
.end method
