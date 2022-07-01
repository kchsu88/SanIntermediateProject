.class public final Lccsancom/google/android/exoplayer2/metadata/icy/IcyDecoder;
.super Lccsancom/google/android/exoplayer2/metadata/SimpleMetadataDecoder;
.source "IcyDecoder.java"


# static fields
.field private static final METADATA_ELEMENT:Ljava/util/regex/Pattern;

.field private static final STREAM_KEY_NAME:Ljava/lang/String; = "streamtitle"

.field private static final STREAM_KEY_URL:Ljava/lang/String; = "streamurl"


# instance fields
.field private final iso88591Decoder:Ljava/nio/charset/CharsetDecoder;

.field private final utf8Decoder:Ljava/nio/charset/CharsetDecoder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    const-string v0, "(.+?)=\'(.*?)\';"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lccsancom/google/android/exoplayer2/metadata/icy/IcyDecoder;->METADATA_ELEMENT:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/metadata/SimpleMetadataDecoder;-><init>()V

    .line 41
    sget-object v0, Lccsancom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/metadata/icy/IcyDecoder;->utf8Decoder:Ljava/nio/charset/CharsetDecoder;

    .line 42
    sget-object v0, Lccsancom/google/common/base/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/metadata/icy/IcyDecoder;->iso88591Decoder:Ljava/nio/charset/CharsetDecoder;

    .line 43
    return-void
.end method

.method private decodeToString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 3
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .line 85
    :try_start_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/metadata/icy/IcyDecoder;->utf8Decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/metadata/icy/IcyDecoder;->utf8Decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 90
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 85
    return-object v0

    .line 89
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/metadata/icy/IcyDecoder;->utf8Decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 90
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 91
    throw v0

    .line 86
    :catch_0
    move-exception v0

    .line 89
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/metadata/icy/IcyDecoder;->utf8Decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 90
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 91
    nop

    .line 93
    :try_start_1
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/metadata/icy/IcyDecoder;->iso88591Decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 97
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/metadata/icy/IcyDecoder;->iso88591Decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 98
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 93
    return-object v0

    .line 97
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/metadata/icy/IcyDecoder;->iso88591Decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 98
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 99
    throw v0

    .line 94
    :catch_1
    move-exception v0

    .line 95
    .local v0, "e":Ljava/nio/charset/CharacterCodingException;
    const/4 v1, 0x0

    .line 97
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/metadata/icy/IcyDecoder;->iso88591Decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v2}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 98
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 95
    return-object v1
.end method


# virtual methods
.method protected decode(Lccsancom/google/android/exoplayer2/metadata/MetadataInputBuffer;Ljava/nio/ByteBuffer;)Lccsancom/google/android/exoplayer2/metadata/Metadata;
    .locals 13
    .param p1, "inputBuffer"    # Lccsancom/google/android/exoplayer2/metadata/MetadataInputBuffer;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 47
    invoke-direct {p0, p2}, Lccsancom/google/android/exoplayer2/metadata/icy/IcyDecoder;->decodeToString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "icyString":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    new-array v1, v1, [B

    .line 49
    .local v1, "icyBytes":[B
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 51
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 52
    new-instance v4, Lccsancom/google/android/exoplayer2/metadata/Metadata;

    new-array v3, v3, [Lccsancom/google/android/exoplayer2/metadata/Metadata$Entry;

    new-instance v5, Lccsancom/google/android/exoplayer2/metadata/icy/IcyInfo;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6, v6}, Lccsancom/google/android/exoplayer2/metadata/icy/IcyInfo;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v2

    invoke-direct {v4, v3}, Lccsancom/google/android/exoplayer2/metadata/Metadata;-><init>([Lccsancom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    return-object v4

    .line 55
    :cond_0
    const/4 v4, 0x0

    .line 56
    .local v4, "name":Ljava/lang/String;
    const/4 v5, 0x0

    .line 57
    .local v5, "url":Ljava/lang/String;
    const/4 v6, 0x0

    .line 58
    .local v6, "index":I
    sget-object v7, Lccsancom/google/android/exoplayer2/metadata/icy/IcyDecoder;->METADATA_ELEMENT:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 59
    .local v7, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v7, v6}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 60
    invoke-virtual {v7, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 61
    .local v8, "key":Ljava/lang/String;
    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 62
    .local v9, "value":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 63
    invoke-static {v8}, Lccsancom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    const-string/jumbo v12, "streamtitle"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v11, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v12, "streamurl"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v11, 0x1

    :goto_1
    packed-switch v11, :pswitch_data_0

    goto :goto_2

    .line 68
    :pswitch_0
    move-object v5, v9

    .line 69
    goto :goto_2

    .line 65
    :pswitch_1
    move-object v4, v9

    .line 74
    :cond_2
    :goto_2
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    .line 75
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    goto :goto_0

    .line 76
    :cond_3
    new-instance v8, Lccsancom/google/android/exoplayer2/metadata/Metadata;

    new-array v3, v3, [Lccsancom/google/android/exoplayer2/metadata/Metadata$Entry;

    new-instance v9, Lccsancom/google/android/exoplayer2/metadata/icy/IcyInfo;

    invoke-direct {v9, v1, v4, v5}, Lccsancom/google/android/exoplayer2/metadata/icy/IcyInfo;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    aput-object v9, v3, v2

    invoke-direct {v8, v3}, Lccsancom/google/android/exoplayer2/metadata/Metadata;-><init>([Lccsancom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    return-object v8

    :sswitch_data_0
    .sparse-switch
        -0x12cfba11 -> :sswitch_1
        0x622482d8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
