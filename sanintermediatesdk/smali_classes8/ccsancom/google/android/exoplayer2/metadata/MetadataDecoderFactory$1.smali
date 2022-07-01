.class Lccsancom/google/android/exoplayer2/metadata/MetadataDecoderFactory$1;
.super Ljava/lang/Object;
.source "MetadataDecoderFactory.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/metadata/MetadataDecoderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/metadata/MetadataDecoderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDecoder(Lccsancom/google/android/exoplayer2/Format;)Lccsancom/google/android/exoplayer2/metadata/MetadataDecoder;
    .locals 5
    .param p1, "format"    # Lccsancom/google/android/exoplayer2/Format;

    .line 75
    iget-object v0, p1, Lccsancom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 76
    .local v0, "mimeType":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 77
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "application/x-scte35"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v2, "application/x-emsg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "application/id3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_3
    const-string v2, "application/x-icy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "application/vnd.dvb.ait"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 87
    :pswitch_0
    new-instance v1, Lccsancom/google/android/exoplayer2/metadata/dvbsi/AppInfoTableDecoder;

    invoke-direct {v1}, Lccsancom/google/android/exoplayer2/metadata/dvbsi/AppInfoTableDecoder;-><init>()V

    return-object v1

    .line 85
    :pswitch_1
    new-instance v1, Lccsancom/google/android/exoplayer2/metadata/icy/IcyDecoder;

    invoke-direct {v1}, Lccsancom/google/android/exoplayer2/metadata/icy/IcyDecoder;-><init>()V

    return-object v1

    .line 83
    :pswitch_2
    new-instance v1, Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;

    invoke-direct {v1}, Lccsancom/google/android/exoplayer2/metadata/scte35/SpliceInfoDecoder;-><init>()V

    return-object v1

    .line 81
    :pswitch_3
    new-instance v1, Lccsancom/google/android/exoplayer2/metadata/emsg/EventMessageDecoder;

    invoke-direct {v1}, Lccsancom/google/android/exoplayer2/metadata/emsg/EventMessageDecoder;-><init>()V

    return-object v1

    .line 79
    :pswitch_4
    new-instance v1, Lccsancom/google/android/exoplayer2/metadata/id3/Id3Decoder;

    invoke-direct {v1}, Lccsancom/google/android/exoplayer2/metadata/id3/Id3Decoder;-><init>()V

    return-object v1

    .line 92
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Attempted to create decoder for unsupported MIME type: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_2
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x50bb4913 -> :sswitch_4
        -0x505c61b5 -> :sswitch_3
        -0x4a682ec7 -> :sswitch_2
        0x44ce7ed0 -> :sswitch_1
        0x62816bb7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public supportsFormat(Lccsancom/google/android/exoplayer2/Format;)Z
    .locals 2
    .param p1, "format"    # Lccsancom/google/android/exoplayer2/Format;

    .line 65
    iget-object v0, p1, Lccsancom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 66
    .local v0, "mimeType":Ljava/lang/String;
    const-string v1, "application/id3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 67
    const-string v1, "application/x-emsg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 68
    const-string v1, "application/x-scte35"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    const-string v1, "application/x-icy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 70
    const-string v1, "application/vnd.dvb.ait"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 66
    :goto_1
    return v1
.end method
