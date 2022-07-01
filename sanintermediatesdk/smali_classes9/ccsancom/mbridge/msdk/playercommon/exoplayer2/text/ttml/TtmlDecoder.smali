.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;
.super Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SimpleSubtitleDecoder;
.source "TtmlDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$CellResolution;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    }
.end annotation


# static fields
.field private static final ATTR_BEGIN:Ljava/lang/String; = "begin"

.field private static final ATTR_DURATION:Ljava/lang/String; = "dur"

.field private static final ATTR_END:Ljava/lang/String; = "end"

.field private static final ATTR_REGION:Ljava/lang/String; = "region"

.field private static final ATTR_STYLE:Ljava/lang/String; = "style"

.field private static final CELL_RESOLUTION:Ljava/util/regex/Pattern;

.field private static final CLOCK_TIME:Ljava/util/regex/Pattern;

.field private static final DEFAULT_CELL_RESOLUTION:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$CellResolution;

.field private static final DEFAULT_FRAME_AND_TICK_RATE:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

.field private static final DEFAULT_FRAME_RATE:I = 0x1e

.field private static final FONT_SIZE:Ljava/util/regex/Pattern;

.field private static final OFFSET_TIME:Ljava/util/regex/Pattern;

.field private static final PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "TtmlDecoder"

.field private static final TTP:Ljava/lang/String; = "http://www.w3.org/ns/ttml#parameter"


# instance fields
.field private final xmlParserFactory:Lccsanorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 72
    nop

    .line 73
    const-string v0, "^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->CLOCK_TIME:Ljava/util/regex/Pattern;

    .line 75
    nop

    .line 76
    const-string v0, "^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->OFFSET_TIME:Ljava/util/regex/Pattern;

    .line 77
    const-string v0, "^(([0-9]*.)?[0-9]+)(px|em|%)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->FONT_SIZE:Ljava/util/regex/Pattern;

    .line 78
    nop

    .line 79
    const-string v0, "^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

    .line 80
    const-string v0, "^(\\d+) (\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->CELL_RESOLUTION:Ljava/util/regex/Pattern;

    .line 84
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    const/high16 v1, 0x41f00000    # 30.0f

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;-><init>(FII)V

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_FRAME_AND_TICK_RATE:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    .line 86
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$CellResolution;

    const/16 v1, 0x20

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$CellResolution;-><init>(II)V

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_CELL_RESOLUTION:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$CellResolution;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 92
    const-string v0, "TtmlDecoder"

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 94
    :try_start_0
    invoke-static {}, Lccsanorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lccsanorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->xmlParserFactory:Lccsanorg/xmlpull/v1/XmlPullParserFactory;

    .line 95
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsanorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V
    :try_end_0
    .catch Lccsanorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    nop

    .line 99
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private createIfNull(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;
    .locals 0

    .line 450
    if-nez p1, :cond_0

    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;-><init>()V

    :cond_0
    return-object p1
.end method

.method private static isSupportedTag(Ljava/lang/String;)Z
    .locals 1

    .line 516
    const-string v0, "tt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 517
    const-string v0, "head"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 518
    const-string v0, "body"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 519
    const-string v0, "div"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 520
    const-string v0, "p"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 521
    const-string v0, "span"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 522
    const-string v0, "br"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 523
    const-string v0, "style"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 524
    const-string v0, "styling"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 525
    const-string v0, "layout"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 526
    const-string v0, "region"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 527
    const-string v0, "metadata"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 528
    const-string v0, "smpte:image"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 529
    const-string v0, "smpte:data"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 530
    const-string v0, "smpte:information"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 516
    :goto_1
    return p0
.end method

.method private parseCellResolution(Lccsanorg/xmlpull/v1/XmlPullParser;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$CellResolution;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$CellResolution;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 206
    const-string v0, "http://www.w3.org/ns/ttml#parameter"

    const-string v1, "cellResolution"

    invoke-interface {p1, v0, v1}, Lccsanorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 207
    if-nez p1, :cond_0

    .line 208
    return-object p2

    .line 211
    :cond_0
    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->CELL_RESOLUTION:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-string v2, "Ignoring malformed cell resolution: "

    const-string v3, "TtmlDecoder"

    if-nez v1, :cond_1

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return-object p2

    .line 217
    :cond_1
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 218
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 219
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 222
    new-instance v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$CellResolution;

    invoke-direct {v4, v1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$CellResolution;-><init>(II)V

    return-object v4

    .line 220
    :cond_2
    new-instance v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid cell resolution "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-object p2
.end method

.method private static parseFontSize(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 535
    const-string v0, "\\s+"

    invoke-static {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 537
    array-length v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 538
    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->FONT_SIZE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    goto :goto_0

    .line 539
    :cond_0
    array-length v1, v0

    if-ne v1, v2, :cond_3

    .line 540
    sget-object v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->FONT_SIZE:Ljava/util/regex/Pattern;

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 541
    const-string v1, "TtmlDecoder"

    const-string v4, "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first."

    invoke-static {v1, v4}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-string v4, "\'."

    if-eqz v1, :cond_2

    .line 549
    const/4 p0, 0x3

    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 550
    const/4 v5, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    const-string v6, "px"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :sswitch_1
    const-string v6, "em"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :sswitch_2
    const-string v6, "%"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x2

    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 561
    new-instance p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid unit for fontSize: \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 558
    :pswitch_0
    invoke-virtual {p1, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;->setFontSizeUnit(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    .line 559
    goto :goto_2

    .line 555
    :pswitch_1
    invoke-virtual {p1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;->setFontSizeUnit(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    .line 556
    goto :goto_2

    .line 552
    :pswitch_2
    invoke-virtual {p1, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;->setFontSizeUnit(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    .line 553
    nop

    .line 563
    :goto_2
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p1, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;->setFontSize(F)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    .line 564
    nop

    .line 567
    return-void

    .line 565
    :cond_2
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid expression for fontSize: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 544
    :cond_3
    new-instance p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid number of entries for fontSize: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_2
        0xca8 -> :sswitch_1
        0xe08 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseFrameAndTickRates(Lccsanorg/xmlpull/v1/XmlPullParser;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 172
    nop

    .line 173
    const-string v0, "http://www.w3.org/ns/ttml#parameter"

    const-string v1, "frameRate"

    invoke-interface {p1, v0, v1}, Lccsanorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    if-eqz v1, :cond_0

    .line 175
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 174
    :cond_0
    const/16 v1, 0x1e

    .line 178
    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 179
    const-string v3, "frameRateMultiplier"

    invoke-interface {p1, v0, v3}, Lccsanorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 180
    if-eqz v3, :cond_2

    .line 181
    const-string v2, " "

    invoke-static {v3, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 182
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 185
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    .line 186
    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    .line 187
    div-float v2, v3, v2

    goto :goto_1

    .line 183
    :cond_1
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;

    const-string v0, "frameRateMultiplier doesn\'t have 2 parts"

    invoke-direct {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 190
    :cond_2
    :goto_1
    sget-object v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_FRAME_AND_TICK_RATE:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    iget v4, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->subFrameRate:I

    .line 191
    const-string v5, "subFrameRate"

    invoke-interface {p1, v0, v5}, Lccsanorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 192
    if-eqz v5, :cond_3

    .line 193
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 196
    :cond_3
    iget v3, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->tickRate:I

    .line 197
    const-string v5, "tickRate"

    invoke-interface {p1, v0, v5}, Lccsanorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 198
    if-eqz p1, :cond_4

    .line 199
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 201
    :cond_4
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    int-to-float v0, v1

    mul-float v0, v0, v2

    invoke-direct {p1, v0, v4, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;-><init>(FII)V

    return-object p1
.end method

.method private parseHeader(Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Ljava/util/Map;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$CellResolution;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlRegion;",
            ">;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$CellResolution;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lccsanorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 236
    :goto_0
    invoke-interface {p1}, Lccsanorg/xmlpull/v1/XmlPullParser;->next()I

    .line 237
    const-string v0, "style"

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;-><init>()V

    invoke-direct {p0, p1, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->parseStyleAttributes(Lccsanorg/xmlpull/v1/XmlPullParser;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v1

    .line 240
    if-eqz v0, :cond_0

    .line 241
    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->parseStyleIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 242
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    invoke-virtual {v1, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;->chain(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    .line 241
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 245
    :cond_0
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 246
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 248
    :cond_1
    const-string v0, "region"

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    invoke-direct {p0, p1, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->parseRegionAttributes(Lccsanorg/xmlpull/v1/XmlPullParser;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$CellResolution;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlRegion;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_3

    .line 251
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlRegion;->id:Ljava/lang/String;

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 248
    :cond_2
    :goto_2
    nop

    .line 254
    :cond_3
    :goto_3
    const-string v0, "head"

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 255
    return-object p2

    .line 254
    :cond_4
    goto :goto_0
.end method

.method private parseNode(Lccsanorg/xmlpull/v1/XmlPullParser;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlNode;Ljava/util/Map;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlNode;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanorg/xmlpull/v1/XmlPullParser;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlNode;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlRegion;",
            ">;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;",
            ")",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlNode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 456
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    .line 457
    nop

    .line 458
    nop

    .line 459
    nop

    .line 460
    nop

    .line 461
    invoke-interface/range {p1 .. p1}, Lccsanorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    .line 462
    const/4 v5, 0x0

    invoke-direct {v0, v1, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->parseStyleAttributes(Lccsanorg/xmlpull/v1/XmlPullParser;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v11

    .line 463
    const-string v9, ""

    move-object v12, v5

    move-object v13, v9

    const/4 v5, 0x0

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    if-ge v5, v4, :cond_2

    .line 464
    invoke-interface {v1, v5}, Lccsanorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    .line 465
    invoke-interface {v1, v5}, Lccsanorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    .line 466
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v8, "style"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v8, 0x3

    goto :goto_2

    :sswitch_1
    const-string v8, "begin"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v8, 0x0

    goto :goto_2

    :sswitch_2
    const-string v8, "end"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v8, 0x1

    goto :goto_2

    :sswitch_3
    const-string v8, "dur"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v8, 0x2

    goto :goto_2

    :sswitch_4
    const-string v8, "region"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v8, 0x4

    goto :goto_2

    :goto_1
    const/4 v8, -0x1

    :goto_2
    packed-switch v8, :pswitch_data_0

    move-object/from16 v6, p3

    goto :goto_3

    .line 484
    :pswitch_0
    move-object/from16 v6, p3

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 487
    move-object v13, v7

    goto :goto_3

    .line 478
    :pswitch_1
    move-object/from16 v6, p3

    invoke-direct {v0, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->parseStyleIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 479
    array-length v8, v7

    if-lez v8, :cond_1

    .line 480
    move-object v12, v7

    goto :goto_3

    .line 474
    :pswitch_2
    move-object/from16 v6, p3

    invoke-static {v7, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->parseTimeExpression(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)J

    move-result-wide v16

    .line 475
    goto :goto_3

    .line 471
    :pswitch_3
    move-object/from16 v6, p3

    invoke-static {v7, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->parseTimeExpression(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)J

    move-result-wide v14

    .line 472
    goto :goto_3

    .line 468
    :pswitch_4
    move-object/from16 v6, p3

    invoke-static {v7, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->parseTimeExpression(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)J

    move-result-wide v9

    .line 469
    nop

    .line 463
    :cond_1
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 495
    :cond_2
    if-eqz v2, :cond_5

    iget-wide v3, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlNode;->startTimeUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-eqz v7, :cond_5

    .line 496
    cmp-long v3, v9, v5

    if-eqz v3, :cond_3

    .line 497
    iget-wide v3, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlNode;->startTimeUs:J

    add-long/2addr v9, v3

    .line 499
    :cond_3
    cmp-long v3, v14, v5

    if-eqz v3, :cond_4

    .line 500
    iget-wide v3, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlNode;->startTimeUs:J

    add-long/2addr v14, v3

    move-wide v7, v9

    goto :goto_4

    .line 499
    :cond_4
    move-wide v7, v9

    goto :goto_4

    .line 503
    :cond_5
    move-wide v7, v9

    :goto_4
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v14, v3

    if-nez v5, :cond_7

    .line 504
    cmp-long v5, v16, v3

    if-eqz v5, :cond_6

    .line 506
    add-long v16, v7, v16

    move-wide/from16 v9, v16

    goto :goto_5

    .line 507
    :cond_6
    if-eqz v2, :cond_7

    iget-wide v5, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlNode;->endTimeUs:J

    cmp-long v9, v5, v3

    if-eqz v9, :cond_7

    .line 509
    iget-wide v2, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlNode;->endTimeUs:J

    move-wide v9, v2

    goto :goto_5

    .line 512
    :cond_7
    move-wide v9, v14

    :goto_5
    invoke-interface/range {p1 .. p1}, Lccsanorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v6 .. v13}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlNode;->buildNode(Ljava/lang/String;JJLccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlNode;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x37b7d90c -> :sswitch_4
        0x18601 -> :sswitch_3
        0x188db -> :sswitch_2
        0x59478a9 -> :sswitch_1
        0x68b1db1 -> :sswitch_0
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

.method private parseRegionAttributes(Lccsanorg/xmlpull/v1/XmlPullParser;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$CellResolution;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlRegion;
    .locals 11

    .line 266
    const-string v0, "id"

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 267
    const/4 v0, 0x0

    if-nez v2, :cond_0

    .line 268
    return-object v0

    .line 273
    :cond_0
    const-string v1, "origin"

    invoke-static {p1, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 274
    const-string v3, "TtmlDecoder"

    if-eqz v1, :cond_6

    .line 275
    sget-object v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 276
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 278
    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v7, v8

    .line 279
    const/4 v9, 0x2

    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    div-float/2addr v5, v8

    .line 283
    nop

    .line 288
    nop

    .line 300
    const-string v10, "extent"

    invoke-static {p1, v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 301
    if-eqz v10, :cond_4

    .line 302
    invoke-virtual {v4, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 303
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 305
    :try_start_1
    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    div-float/2addr v10, v8

    .line 306
    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    div-float/2addr v0, v8

    .line 310
    nop

    .line 315
    nop

    .line 325
    nop

    .line 326
    const-string v1, "displayAlign"

    invoke-static {p1, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 328
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 329
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v4, "after"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_1
    const-string v4, "center"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 335
    :pswitch_0
    nop

    .line 336
    add-float/2addr v5, v0

    .line 337
    move v4, v5

    const/4 v6, 0x2

    goto :goto_2

    .line 331
    :pswitch_1
    nop

    .line 332
    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v0, p1

    add-float/2addr v5, v0

    .line 333
    move v4, v5

    goto :goto_2

    .line 344
    :cond_2
    :goto_1
    move v4, v5

    const/4 v6, 0x0

    :goto_2
    const/high16 p1, 0x3f800000    # 1.0f

    iget p2, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$CellResolution;->rows:I

    int-to-float p2, p2

    div-float v9, p1, p2

    .line 345
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlRegion;

    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object v1, p1

    move v3, v7

    move v7, v10

    invoke-direct/range {v1 .. v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlRegion;-><init>(Ljava/lang/String;FFIIFIF)V

    return-object p1

    .line 307
    :catch_0
    move-exception p1

    .line 308
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring region with malformed extent: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-object v0

    .line 312
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring region with unsupported extent: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-object v0

    .line 316
    :cond_4
    const-string p1, "Ignoring region without an extent"

    invoke-static {v3, p1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return-object v0

    .line 280
    :catch_1
    move-exception p1

    .line 281
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring region with malformed origin: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-object v0

    .line 285
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring region with unsupported origin: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return-object v0

    .line 289
    :cond_6
    const-string p1, "Ignoring region without an origin"

    invoke-static {v3, p1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_1
        0x58705dc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseStyleAttributes(Lccsanorg/xmlpull/v1/XmlPullParser;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;
    .locals 11

    .line 362
    invoke-interface {p1}, Lccsanorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 363
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 364
    invoke-interface {p1, v2}, Lccsanorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 365
    invoke-interface {p1, v2}, Lccsanorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, -0x1

    const/4 v10, 0x1

    sparse-switch v5, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v5, "backgroundColor"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    :sswitch_1
    const-string v5, "fontSize"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_2

    :sswitch_2
    const-string v5, "color"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    goto :goto_2

    :sswitch_3
    const-string v5, "id"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_2

    :sswitch_4
    const-string v5, "fontWeight"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    goto :goto_2

    :sswitch_5
    const-string v5, "textDecoration"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x8

    goto :goto_2

    :sswitch_6
    const-string v5, "textAlign"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x7

    goto :goto_2

    :sswitch_7
    const-string v5, "fontFamily"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x3

    goto :goto_2

    :sswitch_8
    const-string v5, "fontStyle"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x6

    goto :goto_2

    :goto_1
    const/4 v4, -0x1

    :goto_2
    const-string v5, "TtmlDecoder"

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_9

    .line 426
    :pswitch_0
    invoke-static {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    :cond_1
    goto :goto_3

    :sswitch_9
    const-string v4, "linethrough"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v7, 0x0

    goto :goto_4

    :sswitch_a
    const-string v4, "nolinethrough"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v7, 0x1

    goto :goto_4

    :sswitch_b
    const-string v4, "underline"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_4

    :sswitch_c
    const-string v4, "nounderline"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v7, 0x3

    goto :goto_4

    :goto_3
    const/4 v7, -0x1

    :goto_4
    packed-switch v7, :pswitch_data_1

    goto :goto_5

    .line 437
    :pswitch_1
    invoke-direct {p0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    invoke-virtual {p2, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;->setUnderline(Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    goto :goto_5

    .line 434
    :pswitch_2
    invoke-direct {p0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    invoke-virtual {p2, v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;->setUnderline(Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 435
    goto :goto_5

    .line 431
    :pswitch_3
    invoke-direct {p0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    invoke-virtual {p2, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;->setLinethrough(Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 432
    goto :goto_5

    .line 428
    :pswitch_4
    invoke-direct {p0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    invoke-virtual {p2, v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;->setLinethrough(Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 429
    nop

    .line 440
    :goto_5
    goto/16 :goto_9

    .line 407
    :pswitch_5
    invoke-static {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_2

    :cond_2
    goto :goto_6

    :sswitch_d
    const-string v4, "start"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v6, 0x1

    goto :goto_7

    :sswitch_e
    const-string v4, "right"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v6, 0x2

    goto :goto_7

    :sswitch_f
    const-string v4, "left"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v6, 0x0

    goto :goto_7

    :sswitch_10
    const-string v4, "end"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v6, 0x3

    goto :goto_7

    :sswitch_11
    const-string v4, "center"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_7

    :goto_6
    const/4 v6, -0x1

    :goto_7
    packed-switch v6, :pswitch_data_2

    goto :goto_8

    .line 421
    :pswitch_6
    invoke-direct {p0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    sget-object v3, Lccsanandroid/text/Layout$Alignment;->ALIGN_CENTER:Lccsanandroid/text/Layout$Alignment;

    invoke-virtual {p2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;->setTextAlign(Lccsanandroid/text/Layout$Alignment;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    goto :goto_8

    .line 418
    :pswitch_7
    invoke-direct {p0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    sget-object v3, Lccsanandroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Lccsanandroid/text/Layout$Alignment;

    invoke-virtual {p2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;->setTextAlign(Lccsanandroid/text/Layout$Alignment;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 419
    goto :goto_8

    .line 415
    :pswitch_8
    invoke-direct {p0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    sget-object v3, Lccsanandroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Lccsanandroid/text/Layout$Alignment;

    invoke-virtual {p2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;->setTextAlign(Lccsanandroid/text/Layout$Alignment;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 416
    goto :goto_8

    .line 412
    :pswitch_9
    invoke-direct {p0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    sget-object v3, Lccsanandroid/text/Layout$Alignment;->ALIGN_NORMAL:Lccsanandroid/text/Layout$Alignment;

    invoke-virtual {p2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;->setTextAlign(Lccsanandroid/text/Layout$Alignment;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 413
    goto :goto_8

    .line 409
    :pswitch_a
    invoke-direct {p0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    sget-object v3, Lccsanandroid/text/Layout$Alignment;->ALIGN_NORMAL:Lccsanandroid/text/Layout$Alignment;

    invoke-virtual {p2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;->setTextAlign(Lccsanandroid/text/Layout$Alignment;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 410
    nop

    .line 424
    :goto_8
    goto/16 :goto_9

    .line 403
    :pswitch_b
    invoke-direct {p0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 404
    const-string v4, "italic"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 403
    invoke-virtual {p2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;->setItalic(Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 405
    goto/16 :goto_9

    .line 399
    :pswitch_c
    invoke-direct {p0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 400
    const-string v4, "bold"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 399
    invoke-virtual {p2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;->setBold(Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 401
    goto/16 :goto_9

    .line 392
    :pswitch_d
    :try_start_0
    invoke-direct {p0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 393
    invoke-static {v3, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->parseFontSize(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;)V
    :try_end_0
    .catch Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    goto/16 :goto_9

    .line 394
    :catch_0
    move-exception v4

    .line 395
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing fontSize value: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    goto :goto_9

    .line 388
    :pswitch_e
    invoke-direct {p0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    invoke-virtual {p2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;->setFontFamily(Ljava/lang/String;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 389
    goto :goto_9

    .line 380
    :pswitch_f
    invoke-direct {p0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 382
    :try_start_1
    invoke-static {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ColorParser;->parseTtmlColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;->setFontColor(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 385
    goto :goto_9

    .line 383
    :catch_1
    move-exception v4

    .line 384
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing color value: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    goto :goto_9

    .line 372
    :pswitch_10
    invoke-direct {p0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 374
    :try_start_2
    invoke-static {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ColorParser;->parseTtmlColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;->setBackgroundColor(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 377
    goto :goto_9

    .line 375
    :catch_2
    move-exception v4

    .line 376
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing background value: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    goto :goto_9

    .line 367
    :pswitch_11
    invoke-interface {p1}, Lccsanorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "style"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 368
    invoke-direct {p0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    invoke-virtual {p2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;->setId(Ljava/lang/String;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p2

    .line 363
    :cond_3
    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 446
    :cond_4
    return-object p2

    :sswitch_data_0
    .sparse-switch
        -0x5c71855e -> :sswitch_8
        -0x48ff636d -> :sswitch_7
        -0x3f826a28 -> :sswitch_6
        -0x3468fa43 -> :sswitch_5
        -0x2bc67c59 -> :sswitch_4
        0xd1b -> :sswitch_3
        0x5a72f63 -> :sswitch_2
        0x15caa0f0 -> :sswitch_1
        0x4cb7f6d5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x57195dd5 -> :sswitch_c
        -0x3d363934 -> :sswitch_b
        0x36723ff0 -> :sswitch_a
        0x641ec051 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x514d33ab -> :sswitch_11
        0x188db -> :sswitch_10
        0x32a007 -> :sswitch_f
        0x677c21c -> :sswitch_e
        0x68ac462 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method private parseStyleIds(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 357
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 358
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "\\s+"

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private static parseTimeExpression(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 582
    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->CLOCK_TIME:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 583
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-wide v2, 0x412e848000000000L    # 1000000.0

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v1, :cond_3

    .line 584
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 585
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0xe10

    mul-long v8, v8, v10

    long-to-double v8, v8

    .line 586
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 587
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x3c

    mul-long v10, v10, v12

    long-to-double v10, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v8, v10

    .line 588
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 589
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v8, v6

    .line 590
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 591
    const-wide/16 v5, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    goto :goto_0

    :cond_0
    move-wide v10, v5

    :goto_0
    add-double/2addr v8, v10

    .line 592
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 593
    if-eqz p0, :cond_1

    .line 594
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    long-to-float p0, v10

    iget v1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->effectiveFrameRate:F

    div-float/2addr p0, v1

    float-to-double v10, p0

    goto :goto_1

    :cond_1
    move-wide v10, v5

    :goto_1
    add-double/2addr v8, v10

    .line 595
    const/4 p0, 0x6

    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 596
    if-eqz p0, :cond_2

    .line 598
    nop

    .line 597
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-double v0, v0

    iget p0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->subFrameRate:I

    int-to-double v4, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v4

    iget p0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->effectiveFrameRate:F

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double v5, v0, p0

    goto :goto_2

    .line 599
    :cond_2
    nop

    :goto_2
    add-double/2addr v8, v5

    .line 600
    mul-double v8, v8, v2

    double-to-long p0, v8

    return-wide p0

    .line 602
    :cond_3
    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->OFFSET_TIME:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 603
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 604
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 605
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 606
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 607
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_4
    goto :goto_3

    :sswitch_0
    const-string v1, "ms"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v4, 0x3

    goto :goto_4

    :sswitch_1
    const-string v1, "t"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_4

    :sswitch_2
    const-string v1, "s"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v4, 0x2

    goto :goto_4

    :sswitch_3
    const-string v1, "m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    :sswitch_4
    const-string v1, "h"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v4, 0x0

    goto :goto_4

    :sswitch_5
    const-string v1, "f"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v4, 0x4

    goto :goto_4

    :goto_3
    const/4 v4, -0x1

    :goto_4
    packed-switch v4, :pswitch_data_0

    goto :goto_5

    .line 624
    :pswitch_0
    iget p0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->tickRate:I

    int-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, p0

    goto :goto_5

    .line 621
    :pswitch_1
    iget p0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->effectiveFrameRate:F

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, p0

    .line 622
    goto :goto_5

    .line 618
    :pswitch_2
    const-wide p0, 0x408f400000000000L    # 1000.0

    div-double/2addr v9, p0

    .line 619
    goto :goto_5

    .line 616
    :pswitch_3
    goto :goto_5

    .line 612
    :pswitch_4
    const-wide/high16 p0, 0x404e000000000000L    # 60.0

    mul-double v9, v9, p0

    .line 613
    goto :goto_5

    .line 609
    :pswitch_5
    const-wide p0, 0x40ac200000000000L    # 3600.0

    mul-double v9, v9, p0

    .line 610
    nop

    .line 627
    :goto_5
    mul-double v9, v9, v2

    double-to-long p0, v9

    return-wide p0

    .line 629
    :cond_5
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Malformed time expression: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6

    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_5
        0x68 -> :sswitch_4
        0x6d -> :sswitch_3
        0x73 -> :sswitch_2
        0x74 -> :sswitch_1
        0xda6 -> :sswitch_0
    .end sparse-switch

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


# virtual methods
.method protected final bridge synthetic decode([BIZ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/Subtitle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->decode([BIZ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlSubtitle;

    move-result-object p1

    return-object p1
.end method

.method protected final decode([BIZ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlSubtitle;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 105
    :try_start_0
    iget-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->xmlParserFactory:Lccsanorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {p3}, Lccsanorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lccsanorg/xmlpull/v1/XmlPullParser;

    move-result-object p3

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 107
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 108
    const-string v2, ""

    new-instance v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlRegion;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlRegion;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3, p2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 110
    invoke-interface {p3, v2, v4}, Lccsanorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 111
    nop

    .line 112
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 113
    nop

    .line 114
    invoke-interface {p3}, Lccsanorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p2

    .line 115
    sget-object v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_FRAME_AND_TICK_RATE:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    .line 116
    sget-object v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_CELL_RESOLUTION:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$CellResolution;

    .line 117
    :goto_0
    const/4 v6, 0x1

    if-eq p2, v6, :cond_b

    .line 118
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlNode;

    .line 119
    const/4 v7, 0x3

    const/4 v8, 0x2

    if-nez v3, :cond_8

    .line 120
    invoke-interface {p3}, Lccsanorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Lccsanorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 121
    const-string v10, "tt"

    if-ne p2, v8, :cond_4

    .line 122
    :try_start_1
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 123
    invoke-direct {p0, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->parseFrameAndTickRates(Lccsanorg/xmlpull/v1/XmlPullParser;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    move-result-object v2

    .line 124
    sget-object p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_CELL_RESOLUTION:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$CellResolution;

    invoke-direct {p0, p3, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->parseCellResolution(Lccsanorg/xmlpull/v1/XmlPullParser;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$CellResolution;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$CellResolution;

    move-result-object v5

    .line 126
    :cond_0
    invoke-static {v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->isSupportedTag(Ljava/lang/String;)Z

    move-result p2
    :try_end_1
    .catch Lccsanorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v7, "TtmlDecoder"

    if-nez p2, :cond_1

    .line 127
    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring unsupported tag: "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lccsanorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v7, p2}, Lccsanandroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 129
    :cond_1
    const-string p2, "head"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 130
    invoke-direct {p0, p3, v0, v1, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->parseHeader(Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Ljava/util/Map;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$CellResolution;)Ljava/util/Map;
    :try_end_2
    .catch Lccsanorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 133
    :cond_2
    :try_start_3
    invoke-direct {p0, p3, v6, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder;->parseNode(Lccsanorg/xmlpull/v1/XmlPullParser;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlNode;Ljava/util/Map;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlNode;

    move-result-object p2

    .line 134
    invoke-virtual {p1, p2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 135
    if-eqz v6, :cond_3

    .line 136
    invoke-virtual {v6, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlNode;->addChild(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlNode;)V
    :try_end_3
    .catch Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lccsanorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 138
    :catch_0
    move-exception p2

    .line 139
    :try_start_4
    const-string v6, "Suppressing parser error"

    invoke-static {v7, v6, p2}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    add-int/lit8 v3, v3, 0x1

    .line 142
    :cond_3
    :goto_1
    goto :goto_2

    .line 144
    :cond_4
    const/4 v8, 0x4

    if-ne p2, v8, :cond_5

    .line 145
    invoke-interface {p3}, Lccsanorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlNode;->buildTextNode(Ljava/lang/String;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlNode;

    move-result-object p2

    invoke-virtual {v6, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlNode;->addChild(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlNode;)V

    goto :goto_2

    .line 146
    :cond_5
    if-ne p2, v7, :cond_7

    .line 147
    invoke-interface {p3}, Lccsanorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 148
    new-instance v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlSubtitle;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlNode;

    invoke-direct {v4, p2, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlSubtitle;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/ttml/TtmlNode;Ljava/util/Map;Ljava/util/Map;)V

    .line 150
    :cond_6
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 152
    :cond_7
    :goto_2
    goto :goto_3

    .line 153
    :cond_8
    if-ne p2, v8, :cond_9

    .line 154
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 155
    :cond_9
    if-ne p2, v7, :cond_a

    .line 156
    add-int/lit8 v3, v3, -0x1

    .line 159
    :cond_a
    :goto_3
    invoke-interface {p3}, Lccsanorg/xmlpull/v1/XmlPullParser;->next()I

    .line 160
    invoke-interface {p3}, Lccsanorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p2
    :try_end_4
    .catch Lccsanorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 161
    goto/16 :goto_0

    .line 162
    :cond_b
    return-object v4

    .line 165
    :catch_1
    move-exception p1

    .line 166
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Unexpected error when reading input."

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 163
    :catch_2
    move-exception p1

    .line 164
    new-instance p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;

    const-string p3, "Unable to decode source"

    invoke-direct {p2, p3, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :goto_4
    throw p2

    :goto_5
    goto :goto_4
.end method
