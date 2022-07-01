.class final Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;
.super Ljava/lang/Object;
.source "DefaultEbmlReader.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/extractor/mkv/EbmlReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;
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
            "Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;",
            ">;"
        }
    .end annotation
.end field

.field private processor:Lccsancom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;

.field private final scratch:[B

.field private final varintReader:Lccsancom/google/android/exoplayer2/extractor/mkv/VarintReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->scratch:[B

    .line 62
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    .line 63
    new-instance v0, Lccsancom/google/android/exoplayer2/extractor/mkv/VarintReader;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/extractor/mkv/VarintReader;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->varintReader:Lccsancom/google/android/exoplayer2/extractor/mkv/VarintReader;

    .line 64
    return-void
.end method

.method private maybeResyncToNextLevel1Element(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;)J
    .locals 5
    .param p1, "input"    # Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "processor"
        }
    .end annotation

    .line 167
    invoke-interface {p1}, Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 169
    :goto_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->scratch:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {p1, v0, v1, v2}, Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 170
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->scratch:[B

    aget-byte v0, v0, v1

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/extractor/mkv/VarintReader;->parseUnsignedVarintLength(I)I

    move-result v0

    .line 171
    .local v0, "varintLength":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    if-gt v0, v2, :cond_0

    .line 172
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->scratch:[B

    invoke-static {v2, v0, v1}, Lccsancom/google/android/exoplayer2/extractor/mkv/VarintReader;->assembleVarint([BIZ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 173
    .local v2, "potentialId":I
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->processor:Lccsancom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;

    invoke-interface {v1, v2}, Lccsancom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;->isLevel1Element(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    invoke-interface {p1, v0}, Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 175
    int-to-long v3, v2

    return-wide v3

    .line 178
    .end local v2    # "potentialId":I
    :cond_0
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 179
    .end local v0    # "varintLength":I
    goto :goto_0
.end method

.method private readFloat(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;I)D
    .locals 4
    .param p1, "input"    # Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "byteLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->readInteger(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;I)J

    move-result-wide v0

    .line 210
    .local v0, "integerValue":J
    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    .line 211
    long-to-int v2, v0

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    float-to-double v2, v2

    .local v2, "floatValue":D
    goto :goto_0

    .line 213
    .end local v2    # "floatValue":D
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 215
    .restart local v2    # "floatValue":D
    :goto_0
    return-wide v2
.end method

.method private readInteger(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;I)J
    .locals 7
    .param p1, "input"    # Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p2, "byteLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->scratch:[B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 192
    const-wide/16 v0, 0x0

    .line 193
    .local v0, "value":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 194
    const/16 v3, 0x8

    shl-long v3, v0, v3

    iget-object v5, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->scratch:[B

    aget-byte v5, v5, v2

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    or-long v0, v3, v5

    .line 193
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    .end local v2    # "i":I
    :cond_0
    return-wide v0
.end method

.method private static readString(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;I)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;
    .param p1, "byteLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    if-nez p1, :cond_0

    .line 229
    const-string v0, ""

    return-object v0

    .line 231
    :cond_0
    new-array v0, p1, [B

    .line 232
    .local v0, "stringBytes":[B
    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, p1}, Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 234
    move v2, p1

    .line 235
    .local v2, "trimmedLength":I
    :goto_0
    if-lez v2, :cond_1

    add-int/lit8 v3, v2, -0x1

    aget-byte v3, v0, v3

    if-nez v3, :cond_1

    .line 236
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 238
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    return-object v3
.end method


# virtual methods
.method public init(Lccsancom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;)V
    .locals 0
    .param p1, "processor"    # Lccsancom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;

    .line 68
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->processor:Lccsancom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;

    .line 69
    return-void
.end method

.method public read(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 14
    .param p1, "input"    # Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->processor:Lccsancom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :goto_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;

    .line 83
    .local v0, "head":Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;->access$000(Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    .line 84
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->processor:Lccsancom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;

    iget-object v3, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;

    invoke-static {v3}, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;->access$100(Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;)I

    move-result v3

    invoke-interface {v2, v3}, Lccsancom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;->endMasterElement(I)V

    .line 85
    return v1

    .line 88
    :cond_0
    iget v2, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 89
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->varintReader:Lccsancom/google/android/exoplayer2/extractor/mkv/VarintReader;

    const/4 v4, 0x4

    invoke-virtual {v2, p1, v1, v3, v4}, Lccsancom/google/android/exoplayer2/extractor/mkv/VarintReader;->readUnsignedVarint(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;ZZI)J

    move-result-wide v4

    .line 90
    .local v4, "result":J
    const-wide/16 v6, -0x2

    cmp-long v2, v4, v6

    if-nez v2, :cond_1

    .line 91
    invoke-direct {p0, p1}, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->maybeResyncToNextLevel1Element(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v4

    .line 93
    :cond_1
    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_2

    .line 94
    return v3

    .line 97
    :cond_2
    long-to-int v2, v4

    iput v2, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    .line 98
    iput v1, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 101
    .end local v4    # "result":J
    :cond_3
    iget v2, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    if-ne v2, v1, :cond_4

    .line 102
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->varintReader:Lccsancom/google/android/exoplayer2/extractor/mkv/VarintReader;

    const/16 v4, 0x8

    invoke-virtual {v2, p1, v3, v1, v4}, Lccsancom/google/android/exoplayer2/extractor/mkv/VarintReader;->readUnsignedVarint(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;ZZI)J

    move-result-wide v4

    iput-wide v4, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    .line 103
    const/4 v2, 0x2

    iput v2, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 106
    :cond_4
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->processor:Lccsancom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;

    iget v4, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    invoke-interface {v2, v4}, Lccsancom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;->getElementType(I)I

    move-result v2

    .line 107
    .local v2, "type":I
    const-wide/16 v4, 0x8

    const/4 v6, 0x0

    packed-switch v2, :pswitch_data_0

    .line 149
    const/16 v1, 0x20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid element type "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lccsancom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lccsancom/google/android/exoplayer2/ParserException;

    move-result-object v1

    throw v1

    .line 124
    :pswitch_0
    iget-wide v7, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    const-wide/16 v9, 0x4

    cmp-long v11, v7, v9

    if-eqz v11, :cond_6

    cmp-long v9, v7, v4

    if-nez v9, :cond_5

    goto :goto_1

    .line 126
    :cond_5
    const/16 v1, 0x28

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid float size: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lccsancom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lccsancom/google/android/exoplayer2/ParserException;

    move-result-object v1

    throw v1

    .line 129
    :cond_6
    :goto_1
    iget-object v4, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->processor:Lccsancom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;

    iget v5, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    long-to-int v6, v7

    invoke-direct {p0, p1, v6}, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->readFloat(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;I)D

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Lccsancom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;->floatElement(ID)V

    .line 130
    iput v3, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 131
    return v1

    .line 141
    :pswitch_1
    iget-object v4, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->processor:Lccsancom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;

    iget v5, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    iget-wide v6, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    long-to-int v7, v6

    invoke-interface {v4, v5, v7, p1}, Lccsancom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;->binaryElement(IILccsancom/google/android/exoplayer2/extractor/ExtractorInput;)V

    .line 142
    iput v3, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 143
    return v1

    .line 133
    :pswitch_2
    iget-wide v4, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    const-wide/32 v7, 0x7fffffff

    cmp-long v9, v4, v7

    if-gtz v9, :cond_7

    .line 137
    iget-object v6, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->processor:Lccsancom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;

    iget v7, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    long-to-int v5, v4

    invoke-static {p1, v5}, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->readString(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v7, v4}, Lccsancom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;->stringElement(ILjava/lang/String;)V

    .line 138
    iput v3, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 139
    return v1

    .line 134
    :cond_7
    const/16 v1, 0x29

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "String element size: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lccsancom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lccsancom/google/android/exoplayer2/ParserException;

    move-result-object v1

    throw v1

    .line 116
    :pswitch_3
    iget-wide v7, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    cmp-long v9, v7, v4

    if-gtz v9, :cond_8

    .line 120
    iget-object v4, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->processor:Lccsancom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;

    iget v5, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    long-to-int v6, v7

    invoke-direct {p0, p1, v6}, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->readInteger(Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;I)J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Lccsancom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;->integerElement(IJ)V

    .line 121
    iput v3, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 122
    return v1

    .line 117
    :cond_8
    const/16 v1, 0x2a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid integer size: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lccsancom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lccsancom/google/android/exoplayer2/ParserException;

    move-result-object v1

    throw v1

    .line 109
    :pswitch_4
    invoke-interface {p1}, Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v10

    .line 110
    .local v10, "elementContentPosition":J
    iget-wide v4, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    add-long v12, v10, v4

    .line 111
    .local v12, "elementEndPosition":J
    iget-object v4, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    new-instance v5, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;

    iget v7, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    invoke-direct {v5, v7, v12, v13, v6}, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;-><init>(IJLccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$1;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 112
    iget-object v4, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->processor:Lccsancom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;

    iget v5, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementId:I

    iget-wide v8, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    move-wide v6, v10

    invoke-interface/range {v4 .. v9}, Lccsancom/google/android/exoplayer2/extractor/mkv/EbmlProcessor;->startMasterElement(IJJ)V

    .line 113
    iput v3, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 114
    return v1

    .line 145
    .end local v10    # "elementContentPosition":J
    .end local v12    # "elementEndPosition":J
    :pswitch_5
    iget-wide v4, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    long-to-int v1, v4

    invoke-interface {p1, v1}, Lccsancom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 146
    iput v3, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 147
    nop

    .line 152
    .end local v0    # "head":Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader$MasterElement;
    .end local v2    # "type":I
    goto/16 :goto_0

    nop

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

.method public reset()V
    .locals 1

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 74
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 75
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/extractor/mkv/DefaultEbmlReader;->varintReader:Lccsancom/google/android/exoplayer2/extractor/mkv/VarintReader;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/extractor/mkv/VarintReader;->reset()V

    .line 76
    return-void
.end method
