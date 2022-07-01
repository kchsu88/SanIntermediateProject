.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/CssParser;
.super Ljava/lang/Object;
.source "CssParser.java"


# static fields
.field private static final BLOCK_END:Ljava/lang/String; = "}"

.field private static final BLOCK_START:Ljava/lang/String; = "{"

.field private static final PROPERTY_BGCOLOR:Ljava/lang/String; = "background-color"

.field private static final PROPERTY_FONT_FAMILY:Ljava/lang/String; = "font-family"

.field private static final PROPERTY_FONT_STYLE:Ljava/lang/String; = "font-style"

.field private static final PROPERTY_FONT_WEIGHT:Ljava/lang/String; = "font-weight"

.field private static final PROPERTY_TEXT_DECORATION:Ljava/lang/String; = "text-decoration"

.field private static final VALUE_BOLD:Ljava/lang/String; = "bold"

.field private static final VALUE_ITALIC:Ljava/lang/String; = "italic"

.field private static final VALUE_UNDERLINE:Ljava/lang/String; = "underline"

.field private static final VOICE_NAME_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final stringBuilder:Ljava/lang/StringBuilder;

.field private final styleInput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-string v0, "\\[voice=\"([^\"]*)\"\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/CssParser;->VOICE_NAME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/CssParser;->styleInput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/CssParser;->stringBuilder:Ljava/lang/StringBuilder;

    .line 52
    return-void
.end method

.method private applySelectorToStyle(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;Ljava/lang/String;)V
    .locals 6

    .line 307
    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    return-void

    .line 310
    :cond_0
    const/16 v0, 0x5b

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 311
    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    .line 312
    sget-object v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/CssParser;->VOICE_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 313
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 314
    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;->setTargetVoice(Ljava/lang/String;)V

    .line 316
    :cond_1
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 318
    :cond_2
    const-string v0, "\\."

    invoke-static {p2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 319
    aget-object v0, p2, v2

    .line 320
    const/16 v4, 0x23

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 321
    if-eq v4, v1, :cond_3

    .line 322
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;->setTargetTagName(Ljava/lang/String;)V

    .line 323
    add-int/2addr v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;->setTargetId(Ljava/lang/String;)V

    goto :goto_0

    .line 325
    :cond_3
    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;->setTargetTagName(Ljava/lang/String;)V

    .line 327
    :goto_0
    array-length v0, p2

    if-le v0, v3, :cond_4

    .line 328
    array-length v0, p2

    invoke-static {p2, v3, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;->setTargetClasses([Ljava/lang/String;)V

    .line 330
    :cond_4
    return-void
.end method

.method private static maybeSkipComment(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Z
    .locals 6

    .line 264
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 265
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    .line 266
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    .line 267
    add-int/lit8 v3, v0, 0x2

    if-gt v3, v1, :cond_2

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    const/16 v4, 0x2f

    if-ne v0, v4, :cond_2

    add-int/lit8 v0, v3, 0x1

    aget-byte v3, v2, v3

    const/16 v5, 0x2a

    if-ne v3, v5, :cond_2

    .line 268
    :goto_0
    add-int/lit8 v3, v0, 0x1

    if-ge v3, v1, :cond_1

    .line 269
    aget-byte v0, v2, v0

    int-to-char v0, v0

    .line 270
    if-ne v0, v5, :cond_0

    .line 271
    aget-byte v0, v2, v3

    int-to-char v0, v0

    if-ne v0, v4, :cond_0

    .line 272
    add-int/lit8 v3, v3, 0x1

    .line 273
    move v0, v3

    move v1, v0

    goto :goto_1

    .line 276
    :cond_0
    move v0, v3

    :goto_1
    goto :goto_0

    .line 277
    :cond_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 278
    const/4 p0, 0x1

    return p0

    .line 280
    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static maybeSkipWhitespace(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Z
    .locals 1

    .line 213
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    invoke-static {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/CssParser;->peekCharAtPosition(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 222
    const/4 p0, 0x0

    return p0

    .line 219
    :sswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 220
    return v0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private static parseIdentifier(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 5

    .line 284
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 285
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 286
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    .line 287
    nop

    .line 288
    :goto_0
    if-ge v1, v2, :cond_5

    if-nez v0, :cond_5

    .line 289
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    aget-byte v3, v3, v1

    int-to-char v3, v3

    .line 290
    const/16 v4, 0x41

    if-lt v3, v4, :cond_0

    const/16 v4, 0x5a

    if-le v3, v4, :cond_4

    :cond_0
    const/16 v4, 0x61

    if-lt v3, v4, :cond_1

    const/16 v4, 0x7a

    if-le v3, v4, :cond_4

    :cond_1
    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    const/16 v4, 0x39

    if-le v3, v4, :cond_4

    :cond_2
    const/16 v4, 0x23

    if-eq v3, v4, :cond_4

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_4

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_4

    const/16 v4, 0x5f

    if-ne v3, v4, :cond_3

    goto :goto_1

    .line 295
    :cond_3
    const/4 v0, 0x1

    goto :goto_2

    .line 292
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 293
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 297
    :goto_2
    goto :goto_0

    .line 298
    :cond_5
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 299
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static parseNextToken(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 2

    .line 200
    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/CssParser;->skipWhitespaceAndComments(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)V

    .line 201
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-nez v0, :cond_0

    .line 202
    const/4 p0, 0x0

    return-object p0

    .line 204
    :cond_0
    invoke-static {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/CssParser;->parseIdentifier(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 205
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 206
    return-object p1

    .line 209
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    int-to-char p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static parsePropertyValue(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 5

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    const/4 v1, 0x0

    .line 246
    :goto_0
    if-nez v1, :cond_3

    .line 247
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v2

    .line 248
    invoke-static {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/CssParser;->parseNextToken(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 249
    if-nez v3, :cond_0

    .line 251
    const/4 p0, 0x0

    return-object p0

    .line 253
    :cond_0
    const-string v4, "}"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, ";"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 257
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 254
    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 255
    const/4 v1, 0x1

    goto :goto_0

    .line 260
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static parseSelector(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 4

    .line 97
    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/CssParser;->skipWhitespaceAndComments(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)V

    .line 98
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 99
    return-object v2

    .line 101
    :cond_0
    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    const-string v1, "::cue"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    return-object v2

    .line 105
    :cond_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 106
    invoke-static {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/CssParser;->parseNextToken(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 107
    if-nez v1, :cond_2

    .line 108
    return-object v2

    .line 110
    :cond_2
    const-string v3, "{"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 111
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 112
    const-string p0, ""

    return-object p0

    .line 114
    :cond_3
    nop

    .line 115
    const-string v0, "("

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 116
    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/CssParser;->readCueTarget(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 115
    :cond_4
    move-object v0, v2

    .line 118
    :goto_0
    invoke-static {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/CssParser;->parseNextToken(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    .line 119
    const-string p1, ")"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-nez p0, :cond_5

    goto :goto_1

    .line 122
    :cond_5
    return-object v0

    .line 120
    :cond_6
    :goto_1
    return-object v2
.end method

.method private static parseStyleDeclaration(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;Ljava/lang/StringBuilder;)V
    .locals 4

    .line 142
    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/CssParser;->skipWhitespaceAndComments(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)V

    .line 143
    invoke-static {p0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/CssParser;->parseIdentifier(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 144
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    return-void

    .line 147
    :cond_0
    invoke-static {p0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/CssParser;->parseNextToken(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 148
    return-void

    .line 150
    :cond_1
    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/CssParser;->skipWhitespaceAndComments(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)V

    .line 151
    invoke-static {p0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/CssParser;->parsePropertyValue(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    .line 152
    if-eqz v2, :cond_b

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_2

    .line 155
    :cond_2
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 156
    invoke-static {p0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/CssParser;->parseNextToken(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    .line 157
    const-string v3, ";"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 159
    :cond_3
    const-string v3, "}"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 162
    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 168
    :goto_0
    const-string p0, "color"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 169
    invoke-static {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ColorParser;->parseCssColor(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;->setFontColor(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;

    goto :goto_1

    .line 170
    :cond_4
    const-string p0, "background-color"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 171
    invoke-static {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ColorParser;->parseCssColor(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;->setBackgroundColor(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;

    goto :goto_1

    .line 172
    :cond_5
    const-string p0, "text-decoration"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p2, 0x1

    if-eqz p0, :cond_6

    .line 173
    const-string p0, "underline"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 174
    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;->setUnderline(Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;

    goto :goto_1

    .line 176
    :cond_6
    const-string p0, "font-family"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 177
    invoke-virtual {p1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;->setFontFamily(Ljava/lang/String;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;

    goto :goto_1

    .line 178
    :cond_7
    const-string p0, "font-weight"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 179
    const-string p0, "bold"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 180
    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;->setBold(Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;

    goto :goto_1

    .line 182
    :cond_8
    const-string p0, "font-style"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 183
    const-string p0, "italic"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 184
    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;->setItalic(Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;

    .line 188
    :cond_9
    :goto_1
    return-void

    .line 165
    :cond_a
    return-void

    .line 153
    :cond_b
    :goto_2
    return-void
.end method

.method private static peekCharAtPosition(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)C
    .locals 0

    .line 237
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    aget-byte p0, p0, p1

    int-to-char p0, p0

    return p0
.end method

.method private static readCueTarget(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Ljava/lang/String;
    .locals 5

    .line 129
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 130
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    .line 131
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 132
    :goto_0
    if-ge v0, v1, :cond_1

    if-nez v3, :cond_1

    .line 133
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v3, v0

    int-to-char v0, v0

    .line 134
    const/16 v3, 0x29

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 135
    :goto_1
    move v0, v4

    goto :goto_0

    .line 136
    :cond_1
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static skipStyleBlock(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)V
    .locals 1

    .line 232
    :goto_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    return-void

    .line 233
    :cond_0
    goto :goto_0
.end method

.method static skipWhitespaceAndComments(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)V
    .locals 3

    .line 192
    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 193
    :goto_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-lez v2, :cond_2

    if-eqz v1, :cond_2

    .line 194
    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/CssParser;->maybeSkipWhitespace(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/CssParser;->maybeSkipComment(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 196
    :cond_2
    return-void
.end method


# virtual methods
.method public final parseBlock(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;
    .locals 6

    .line 63
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/CssParser;->stringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 64
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 65
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/CssParser;->skipStyleBlock(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)V

    .line 66
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/CssParser;->styleInput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result p1

    invoke-virtual {v2, v3, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 67
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/CssParser;->styleInput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 68
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/CssParser;->styleInput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/CssParser;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/CssParser;->parseSelector(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 69
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/CssParser;->styleInput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/CssParser;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/CssParser;->parseNextToken(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "{"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    .line 72
    :cond_0
    new-instance v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;

    invoke-direct {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;-><init>()V

    .line 73
    invoke-direct {p0, v2, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/CssParser;->applySelectorToStyle(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;Ljava/lang/String;)V

    .line 74
    nop

    .line 75
    move-object v3, v0

    const/4 p1, 0x0

    .line 76
    :goto_0
    const-string v4, "}"

    if-nez p1, :cond_4

    .line 77
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/CssParser;->styleInput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result p1

    .line 78
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/CssParser;->styleInput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/CssParser;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v3, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/CssParser;->parseNextToken(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 79
    if-eqz v3, :cond_2

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x1

    .line 80
    :goto_2
    if-nez v4, :cond_3

    .line 81
    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/CssParser;->styleInput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 82
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/CssParser;->styleInput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/CssParser;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-static {p1, v2, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/CssParser;->parseStyleDeclaration(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;Ljava/lang/StringBuilder;)V

    .line 84
    :cond_3
    move p1, v4

    goto :goto_0

    .line 85
    :cond_4
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move-object v0, v2

    :cond_5
    return-object v0

    .line 70
    :cond_6
    :goto_3
    return-object v0
.end method
