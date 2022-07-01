.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;
.super Ljava/lang/Object;
.source "DefaultEbmlReader.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/EbmlReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader$ElementState;
    }
.end annotation


# static fields
.field private static final ELEMENT_STATE_READ_CONTENT:I = 0x2

.field private static final ELEMENT_STATE_READ_CONTENT_SIZE:I = 0x1

.field private static final ELEMENT_STATE_READ_ID:I = 0x0

.field private static final MAX_ID_BYTES:I = 0x4

.field private static final MAX_INTEGER_ELEMENT_SIZE_BYTES:I = 0x8

.field private static final MAX_LENGTH_BYTES:I = 0x8

.field private static final VALID_FLOAT32_ELEMENT_SIZE_BYTES:I = 0x4

.field private static final VALID_FLOAT64_ELEMENT_SIZE_BYTES:I = 0x8


# instance fields
.field private elementContentSize:J

.field private elementId:I

.field private elementState:I

.field private final masterElementsStack:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;",
            ">;"
        }
    .end annotation
.end field

.field private output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/EbmlReaderOutput;

.field private final scratch:[B

.field private final varintReader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/VarintReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->scratch:[B

    .line 60
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    .line 61
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/VarintReader;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/VarintReader;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->varintReader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/VarintReader;

    .line 62
    return-void
.end method

.method private maybeResyncToNextLevel1Element(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 162
    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 164
    :goto_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->scratch:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {p1, v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 165
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->scratch:[B

    aget-byte v0, v0, v1

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/VarintReader;->parseUnsignedVarintLength(I)I

    move-result v0

    .line 166
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    if-gt v0, v2, :cond_0

    .line 167
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->scratch:[B

    invoke-static {v2, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/VarintReader;->assembleVarint([BIZ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 168
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/EbmlReaderOutput;

    invoke-interface {v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/EbmlReaderOutput;->isLevel1Element(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    invoke-interface {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 170
    int-to-long v0, v2

    return-wide v0

    .line 173
    :cond_0
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 174
    goto :goto_0
.end method

.method private readFloat(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;I)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 207
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->readInteger(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;I)J

    move-result-wide v0

    .line 209
    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 210
    long-to-int p1, v0

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    float-to-double p1, p1

    goto :goto_0

    .line 212
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    .line 214
    :goto_0
    return-wide p1
.end method

.method private readInteger(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;I)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->scratch:[B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 189
    nop

    .line 190
    const-wide/16 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 191
    const/16 p1, 0x8

    shl-long/2addr v2, p1

    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->scratch:[B

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-long v4, p1

    or-long/2addr v2, v4

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    :cond_0
    return-wide v2
.end method

.method private readString(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 229
    if-nez p2, :cond_0

    .line 230
    const-string p1, ""

    return-object p1

    .line 232
    :cond_0
    new-array v0, p2, [B

    .line 233
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 235
    nop

    .line 236
    :goto_0
    if-lez p2, :cond_1

    add-int/lit8 p1, p2, -0x1

    aget-byte p1, v0, p1

    if-nez p1, :cond_1

    .line 237
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 239
    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Ljava/lang/String;-><init>([BII)V

    return-object p1
.end method


# virtual methods
.method public final init(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/EbmlReaderOutput;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/EbmlReaderOutput;

    .line 67
    return-void
.end method

.method public final read(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/EbmlReaderOutput;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 80
    :goto_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;->access$000(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-ltz v0, :cond_1

    .line 82
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/EbmlReaderOutput;

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;->access$100(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;)I

    move-result v0

    invoke-interface {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/EbmlReaderOutput;->endMasterElement(I)V

    .line 83
    return v2

    .line 86
    :cond_1
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    if-nez v0, :cond_4

    .line 87
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->varintReader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/VarintReader;

    const/4 v3, 0x4

    invoke-virtual {v0, p1, v2, v1, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/VarintReader;->readUnsignedVarint(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;ZZI)J

    move-result-wide v3

    .line 88
    const-wide/16 v5, -0x2

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    .line 89
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->maybeResyncToNextLevel1Element(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v3

    .line 91
    :cond_2
    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_3

    .line 92
    return v1

    .line 95
    :cond_3
    long-to-int v0, v3

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    .line 96
    iput v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 99
    :cond_4
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    if-ne v0, v2, :cond_5

    .line 100
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->varintReader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/VarintReader;

    const/16 v3, 0x8

    invoke-virtual {v0, p1, v1, v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/VarintReader;->readUnsignedVarint(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;ZZI)J

    move-result-wide v3

    iput-wide v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    .line 101
    const/4 v0, 0x2

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 104
    :cond_5
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/EbmlReaderOutput;

    iget v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    invoke-interface {v0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/EbmlReaderOutput;->getElementType(I)I

    move-result v0

    .line 105
    const-wide/16 v3, 0x8

    packed-switch v0, :pswitch_data_0

    .line 144
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid element type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 121
    :pswitch_0
    iget-wide v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    const-wide/16 v7, 0x4

    cmp-long v0, v5, v7

    if-eqz v0, :cond_7

    cmp-long v0, v5, v3

    if-nez v0, :cond_6

    goto :goto_2

    .line 123
    :cond_6
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid float size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 125
    :cond_7
    :goto_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/EbmlReaderOutput;

    iget v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    long-to-int v4, v5

    invoke-direct {p0, p1, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->readFloat(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;I)D

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/EbmlReaderOutput;->floatElement(ID)V

    .line 126
    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 127
    return v2

    .line 136
    :pswitch_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/EbmlReaderOutput;

    iget v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    iget-wide v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    long-to-int v5, v4

    invoke-interface {v0, v3, v5, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/EbmlReaderOutput;->binaryElement(IILccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)V

    .line 137
    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 138
    return v2

    .line 129
    :pswitch_2
    iget-wide v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v0, v3, v5

    if-gtz v0, :cond_8

    .line 132
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/EbmlReaderOutput;

    iget v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    long-to-int v4, v3

    invoke-direct {p0, p1, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->readString(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v5, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/EbmlReaderOutput;->stringElement(ILjava/lang/String;)V

    .line 133
    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 134
    return v2

    .line 130
    :cond_8
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "String element size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 114
    :pswitch_3
    iget-wide v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    cmp-long v0, v5, v3

    if-gtz v0, :cond_9

    .line 117
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/EbmlReaderOutput;

    iget v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    long-to-int v4, v5

    invoke-direct {p0, p1, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->readInteger(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;I)J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/EbmlReaderOutput;->integerElement(IJ)V

    .line 118
    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 119
    return v2

    .line 115
    :cond_9
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid integer size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :pswitch_4
    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    .line 108
    iget-wide v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    add-long/2addr v3, v5

    .line 109
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;

    iget v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    const/4 v8, 0x0

    invoke-direct {v0, v7, v3, v4, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;-><init>(IJLccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader$1;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 110
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/EbmlReaderOutput;

    iget v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    iget-wide v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    invoke-interface/range {v3 .. v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/EbmlReaderOutput;->startMasterElement(IJJ)V

    .line 111
    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 112
    return v2

    .line 140
    :pswitch_5
    iget-wide v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    long-to-int v0, v3

    invoke-interface {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 141
    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 142
    nop

    .line 146
    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final reset()V
    .locals 1

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 72
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 73
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/DefaultEbmlReader;->varintReader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/VarintReader;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mkv/VarintReader;->reset()V

    .line 74
    return-void
.end method
