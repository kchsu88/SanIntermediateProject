.class final Lccsancom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30$DataReaderAdapter;
.super Ljava/lang/Object;
.source "OutputConsumerAdapterV30.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/upstream/DataReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DataReaderAdapter"
.end annotation


# instance fields
.field public input:Lccsanandroid/media/MediaParser$InputReader;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30$1;

    .line 682
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30$DataReaderAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 688
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30$DataReaderAdapter;->input:Lccsanandroid/media/MediaParser$InputReader;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/media/MediaParser$InputReader;

    invoke-interface {v0, p1, p2, p3}, Lccsanandroid/media/MediaParser$InputReader;->read([BII)I

    move-result v0

    return v0
.end method
