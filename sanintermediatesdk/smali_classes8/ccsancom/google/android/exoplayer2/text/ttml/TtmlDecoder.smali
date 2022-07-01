.class public final Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;
.super Lccsancom/google/android/exoplayer2/text/SimpleSubtitleDecoder;
.source "TtmlDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;,
        Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;,
        Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    }
.end annotation


# static fields
.field private static final ATTR_BEGIN:Ljava/lang/String; = "begin"

.field private static final ATTR_DURATION:Ljava/lang/String; = "dur"

.field private static final ATTR_END:Ljava/lang/String; = "end"

.field private static final ATTR_IMAGE:Ljava/lang/String; = "backgroundImage"

.field private static final ATTR_REGION:Ljava/lang/String; = "region"

.field private static final ATTR_STYLE:Ljava/lang/String; = "style"

.field private static final CELL_RESOLUTION:Ljava/util/regex/Pattern;

.field private static final CLOCK_TIME:Ljava/util/regex/Pattern;

.field private static final DEFAULT_CELL_RESOLUTION:Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;

.field private static final DEFAULT_FRAME_AND_TICK_RATE:Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

.field private static final DEFAULT_FRAME_RATE:I = 0x1e

.field private static final FONT_SIZE:Ljava/util/regex/Pattern;

.field private static final OFFSET_TIME:Ljava/util/regex/Pattern;

.field static final PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

.field private static final PIXEL_COORDINATES:Ljava/util/regex/Pattern;

.field static final SIGNED_PERCENTAGE:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "TtmlDecoder"

.field private static final TTP:Ljava/lang/String; = "http://www.w3.org/ns/ttml#parameter"


# instance fields
.field private final xmlParserFactory:Lccsanorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 82
    nop

    .line 83
    const-string v0, "^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->CLOCK_TIME:Ljava/util/regex/Pattern;

    .line 86
    nop

    .line 87
    const-string v0, "^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->OFFSET_TIME:Ljava/util/regex/Pattern;

    .line 88
    const-string v0, "^(([0-9]*.)?[0-9]+)(px|em|%)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->FONT_SIZE:Ljava/util/regex/Pattern;

    .line 89
    const-string v0, "^([-+]?\\d+\\.?\\d*?)%$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->SIGNED_PERCENTAGE:Ljava/util/regex/Pattern;

    .line 90
    nop

    .line 91
    const-string v0, "^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

    .line 92
    nop

    .line 93
    const-string v0, "^(\\d+\\.?\\d*?)px (\\d+\\.?\\d*?)px$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->PIXEL_COORDINATES:Ljava/util/regex/Pattern;

    .line 94
    const-string v0, "^(\\d+) (\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->CELL_RESOLUTION:Ljava/util/regex/Pattern;

    .line 98
    new-instance v0, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    const/high16 v1, 0x41f00000    # 30.0f

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;-><init>(FII)V

    sput-object v0, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_FRAME_AND_TICK_RATE:Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    .line 100
    new-instance v0, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;

    const/16 v1, 0x20

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;-><init>(II)V

    sput-object v0, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_CELL_RESOLUTION:Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 106
    const-string v0, "TtmlDecoder"

    invoke-direct {p0, v0}, Lccsancom/google/android/exoplayer2/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 108
    :try_start_0
    invoke-static {}, Lccsanorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lccsanorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->xmlParserFactory:Lccsanorg/xmlpull/v1/XmlPullParserFactory;

    .line 109
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsanorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V
    :try_end_0
    .catch Lccsanorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    nop

    .line 113
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Lccsanorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static createIfNull(Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .locals 1
    .param p0, "style"    # Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    .line 619
    if-nez p0, :cond_0

    new-instance v0, Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method private static isSupportedTag(Ljava/lang/String;)Z
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    .line 714
    const-string/jumbo v0, "tt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 715
    const-string v0, "head"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 716
    const-string v0, "body"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 717
    const-string v0, "div"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 718
    const-string v0, "p"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 719
    const-string/jumbo v0, "span"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 720
    const-string v0, "br"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 721
    const-string/jumbo v0, "style"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 722
    const-string/jumbo v0, "styling"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 723
    const-string v0, "layout"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 724
    const-string v0, "region"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 725
    const-string v0, "metadata"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 726
    const-string v0, "image"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 727
    const-string v0, "data"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 728
    const-string v0, "information"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 714
    :goto_1
    return v0
.end method

.method private static parseAlignment(Ljava/lang/String;)Lccsanandroid/text/Layout$Alignment;
    .locals 2
    .param p0, "alignment"    # Ljava/lang/String;

    .line 624
    invoke-static {p0}, Lccsancom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string/jumbo v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v1, "right"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "left"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v1, "end"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v1, "center"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 634
    const/4 v0, 0x0

    return-object v0

    .line 632
    :pswitch_0
    sget-object v0, Lccsanandroid/text/Layout$Alignment;->ALIGN_CENTER:Lccsanandroid/text/Layout$Alignment;

    return-object v0

    .line 630
    :pswitch_1
    sget-object v0, Lccsanandroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Lccsanandroid/text/Layout$Alignment;

    return-object v0

    .line 627
    :pswitch_2
    sget-object v0, Lccsanandroid/text/Layout$Alignment;->ALIGN_NORMAL:Lccsanandroid/text/Layout$Alignment;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_4
        0x188db -> :sswitch_3
        0x32a007 -> :sswitch_2
        0x677c21c -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseCellResolution(Lccsanorg/xmlpull/v1/XmlPullParser;Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;)Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;
    .locals 9
    .param p0, "xmlParser"    # Lccsanorg/xmlpull/v1/XmlPullParser;
    .param p1, "defaultValue"    # Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 229
    const-string v0, "http://www.w3.org/ns/ttml#parameter"

    const-string v1, "cellResolution"

    invoke-interface {p0, v0, v1}, Lccsanorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "cellResolution":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 231
    return-object p1

    .line 234
    :cond_0
    sget-object v1, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->CELL_RESOLUTION:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 235
    .local v1, "cellResolutionMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const-string v3, "Ignoring malformed cell resolution: "

    const-string v4, "TtmlDecoder"

    if-nez v2, :cond_2

    .line 236
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v4, v2}, Lccsancom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-object p1

    .line 240
    :cond_2
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 241
    .local v2, "columns":I
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 242
    .local v5, "rows":I
    if-eqz v2, :cond_3

    if-eqz v5, :cond_3

    .line 245
    new-instance v6, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;

    invoke-direct {v6, v2, v5}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;-><init>(II)V

    return-object v6

    .line 243
    :cond_3
    new-instance v6, Lccsancom/google/android/exoplayer2/text/SubtitleDecoderException;

    const/16 v7, 0x2f

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Invalid cell resolution "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lccsancom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    .end local v0    # "cellResolution":Ljava/lang/String;
    .end local v1    # "cellResolutionMatcher":Ljava/util/regex/Matcher;
    .end local p0    # "xmlParser":Lccsanorg/xmlpull/v1/XmlPullParser;
    .end local p1    # "defaultValue":Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;
    throw v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .end local v2    # "columns":I
    .end local v5    # "rows":I
    .restart local v0    # "cellResolution":Ljava/lang/String;
    .restart local v1    # "cellResolutionMatcher":Ljava/util/regex/Matcher;
    .restart local p0    # "xmlParser":Lccsanorg/xmlpull/v1/XmlPullParser;
    .restart local p1    # "defaultValue":Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;
    :catch_0
    move-exception v2

    .line 247
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    :goto_1
    invoke-static {v4, v3}, Lccsancom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-object p1
.end method

.method private static parseFontSize(Ljava/lang/String;Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;)V
    .locals 9
    .param p0, "expression"    # Ljava/lang/String;
    .param p1, "out"    # Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 733
    const-string v0, "\\s+"

    invoke-static {p0, v0}, Lccsancom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 735
    .local v0, "expressions":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 736
    sget-object v1, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->FONT_SIZE:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .local v1, "matcher":Ljava/util/regex/Matcher;
    goto :goto_0

    .line 737
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_0
    array-length v1, v0

    if-ne v1, v2, :cond_3

    .line 738
    sget-object v1, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->FONT_SIZE:Ljava/util/regex/Pattern;

    aget-object v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 739
    .restart local v1    # "matcher":Ljava/util/regex/Matcher;
    const-string v4, "TtmlDecoder"

    const-string v5, "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first."

    invoke-static {v4, v5}, Lccsancom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    const-string v5, "\'."

    if-eqz v4, :cond_2

    .line 749
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 750
    .local v6, "unit":Ljava/lang/String;
    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    const-string v8, "px"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    :sswitch_1
    const-string v8, "em"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :sswitch_2
    const-string v8, "%"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v7, 0x2

    :goto_1
    packed-switch v7, :pswitch_data_0

    .line 761
    new-instance v2, Lccsancom/google/android/exoplayer2/text/SubtitleDecoderException;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid unit for fontSize: \'"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lccsancom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 758
    :pswitch_0
    invoke-virtual {p1, v4}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;->setFontSizeUnit(I)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    .line 759
    goto :goto_2

    .line 755
    :pswitch_1
    invoke-virtual {p1, v2}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;->setFontSizeUnit(I)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    .line 756
    goto :goto_2

    .line 752
    :pswitch_2
    invoke-virtual {p1, v3}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;->setFontSizeUnit(I)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    .line 753
    nop

    .line 763
    :goto_2
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {p1, v2}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;->setFontSize(F)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    .line 764
    .end local v6    # "unit":Ljava/lang/String;
    nop

    .line 767
    return-void

    .line 765
    :cond_2
    new-instance v2, Lccsancom/google/android/exoplayer2/text/SubtitleDecoderException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x24

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid expression for fontSize: \'"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lccsancom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 744
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_3
    new-instance v1, Lccsancom/google/android/exoplayer2/text/SubtitleDecoderException;

    array-length v2, v0

    const/16 v3, 0x34

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid number of entries for fontSize: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsancom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v1

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

.method private static parseFrameAndTickRates(Lccsanorg/xmlpull/v1/XmlPullParser;)Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .locals 10
    .param p0, "xmlParser"    # Lccsanorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 195
    const/16 v0, 0x1e

    .line 196
    .local v0, "frameRate":I
    const-string v1, "http://www.w3.org/ns/ttml#parameter"

    const-string v2, "frameRate"

    invoke-interface {p0, v1, v2}, Lccsanorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "frameRateString":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 198
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 201
    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    .line 202
    .local v3, "frameRateMultiplier":F
    const-string v4, "frameRateMultiplier"

    invoke-interface {p0, v1, v4}, Lccsanorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 203
    .local v4, "frameRateMultiplierString":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 204
    const-string v5, " "

    invoke-static {v4, v5}, Lccsancom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 205
    .local v5, "parts":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 208
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    .line 209
    .local v6, "numerator":F
    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    .line 210
    .local v7, "denominator":F
    div-float v3, v6, v7

    goto :goto_0

    .line 206
    .end local v6    # "numerator":F
    .end local v7    # "denominator":F
    :cond_1
    new-instance v1, Lccsancom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string v6, "frameRateMultiplier doesn\'t have 2 parts"

    invoke-direct {v1, v6}, Lccsancom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 213
    .end local v5    # "parts":[Ljava/lang/String;
    :cond_2
    :goto_0
    sget-object v5, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_FRAME_AND_TICK_RATE:Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    iget v6, v5, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->subFrameRate:I

    .line 214
    .local v6, "subFrameRate":I
    const-string/jumbo v7, "subFrameRate"

    invoke-interface {p0, v1, v7}, Lccsanorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 215
    .local v7, "subFrameRateString":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 216
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 219
    :cond_3
    iget v5, v5, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->tickRate:I

    .line 220
    .local v5, "tickRate":I
    const-string/jumbo v8, "tickRate"

    invoke-interface {p0, v1, v8}, Lccsanorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "tickRateString":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 222
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 224
    :cond_4
    new-instance v8, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    int-to-float v9, v0

    mul-float v9, v9, v3

    invoke-direct {v8, v9, v6, v5}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;-><init>(FII)V

    return-object v8
.end method

.method private static parseHeader(Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .param p0, "xmlParser"    # Lccsanorg/xmlpull/v1/XmlPullParser;
    .param p2, "cellResolution"    # Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;
    .param p3, "ttsExtent"    # Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;",
            ">;",
            "Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;",
            "Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsancom/google/android/exoplayer2/text/ttml/TtmlRegion;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lccsanorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 284
    .local p1, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;>;"
    .local p4, "globalRegions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lccsancom/google/android/exoplayer2/text/ttml/TtmlRegion;>;"
    .local p5, "imageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {p0}, Lccsanorg/xmlpull/v1/XmlPullParser;->next()I

    .line 285
    const-string/jumbo v0, "style"

    invoke-static {p0, v0}, Lccsancom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 286
    invoke-static {p0, v0}, Lccsancom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "parentStyleId":Ljava/lang/String;
    new-instance v1, Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    invoke-direct {v1}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;-><init>()V

    invoke-static {p0, v1}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseStyleAttributes(Lccsanorg/xmlpull/v1/XmlPullParser;Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v1

    .line 288
    .local v1, "style":Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;
    if-eqz v0, :cond_0

    .line 289
    invoke-static {v0}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseStyleIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 290
    .local v5, "id":Ljava/lang/String;
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    invoke-virtual {v1, v6}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;->chain(Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    .line 289
    .end local v5    # "id":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 293
    :cond_0
    invoke-virtual {v1}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;->getId()Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, "styleId":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 295
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    .end local v0    # "parentStyleId":Ljava/lang/String;
    .end local v1    # "style":Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .end local v2    # "styleId":Ljava/lang/String;
    :cond_1
    goto :goto_3

    :cond_2
    const-string v0, "region"

    invoke-static {p0, v0}, Lccsancom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 299
    invoke-static {p0, p2, p3}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseRegionAttributes(Lccsanorg/xmlpull/v1/XmlPullParser;Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;)Lccsancom/google/android/exoplayer2/text/ttml/TtmlRegion;

    move-result-object v0

    .line 300
    .local v0, "ttmlRegion":Lccsancom/google/android/exoplayer2/text/ttml/TtmlRegion;
    if-eqz v0, :cond_4

    .line 301
    iget-object v1, v0, Lccsancom/google/android/exoplayer2/text/ttml/TtmlRegion;->id:Ljava/lang/String;

    invoke-interface {p4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 303
    .end local v0    # "ttmlRegion":Lccsancom/google/android/exoplayer2/text/ttml/TtmlRegion;
    :cond_3
    const-string v0, "metadata"

    invoke-static {p0, v0}, Lccsancom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 304
    invoke-static {p0, p5}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseMetadata(Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    goto :goto_3

    .line 303
    :cond_4
    :goto_2
    nop

    .line 306
    :goto_3
    const-string v0, "head"

    invoke-static {p0, v0}, Lccsancom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 307
    return-object p1

    .line 306
    :cond_5
    goto :goto_0
.end method

.method private static parseMetadata(Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    .locals 2
    .param p0, "xmlParser"    # Lccsanorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lccsanorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 313
    .local p1, "imageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {p0}, Lccsanorg/xmlpull/v1/XmlPullParser;->next()I

    .line 314
    const-string v0, "image"

    invoke-static {p0, v0}, Lccsancom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    const-string v0, "id"

    invoke-static {p0, v0}, Lccsancom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 317
    invoke-interface {p0}, Lccsanorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "encodedBitmapData":Ljava/lang/String;
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "encodedBitmapData":Ljava/lang/String;
    :cond_0
    const-string v0, "metadata"

    invoke-static {p0, v0}, Lccsancom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    return-void

    .line 321
    :cond_1
    goto :goto_0
.end method

.method private static parseNode(Lccsanorg/xmlpull/v1/XmlPullParser;Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;Ljava/util/Map;Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;
    .locals 24
    .param p0, "parser"    # Lccsanorg/xmlpull/v1/XmlPullParser;
    .param p1, "parent"    # Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;
    .param p3, "frameAndTickRate"    # Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanorg/xmlpull/v1/XmlPullParser;",
            "Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsancom/google/android/exoplayer2/text/ttml/TtmlRegion;",
            ">;",
            "Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;",
            ")",
            "Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 644
    .local p2, "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lccsancom/google/android/exoplayer2/text/ttml/TtmlRegion;>;"
    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p3

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 645
    .local v1, "duration":J
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 646
    .local v3, "startTime":J
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 647
    .local v5, "endTime":J
    const-string v7, ""

    .line 648
    .local v7, "regionId":Ljava/lang/String;
    const/4 v8, 0x0

    .line 649
    .local v8, "imageId":Ljava/lang/String;
    const/4 v9, 0x0

    .line 650
    .local v9, "styleIds":[Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Lccsanorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v13

    .line 651
    .local v13, "attributeCount":I
    const/4 v10, 0x0

    invoke-static {v0, v10}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseStyleAttributes(Lccsanorg/xmlpull/v1/XmlPullParser;Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v14

    .line 652
    .local v14, "style":Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;
    const/4 v10, 0x0

    move-wide v15, v1

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    .end local v1    # "duration":J
    .end local v7    # "regionId":Ljava/lang/String;
    .end local v8    # "imageId":Ljava/lang/String;
    .end local v9    # "styleIds":[Ljava/lang/String;
    .local v10, "i":I
    .local v15, "duration":J
    .local v17, "regionId":Ljava/lang/String;
    .local v18, "imageId":Ljava/lang/String;
    .local v19, "styleIds":[Ljava/lang/String;
    :goto_0
    if-ge v10, v13, :cond_3

    .line 653
    invoke-interface {v0, v10}, Lccsanorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 654
    .local v1, "attr":Ljava/lang/String;
    invoke-interface {v0, v10}, Lccsanorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 655
    .local v2, "value":Ljava/lang/String;
    const/4 v7, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x1

    sparse-switch v8, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v8, "backgroundImage"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x5

    goto :goto_1

    :sswitch_1
    const-string/jumbo v8, "style"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x3

    goto :goto_1

    :sswitch_2
    const-string v8, "begin"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x0

    goto :goto_1

    :sswitch_3
    const-string v8, "end"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :sswitch_4
    const-string v8, "dur"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x2

    goto :goto_1

    :sswitch_5
    const-string v8, "region"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x4

    :goto_1
    packed-switch v7, :pswitch_data_0

    move-object/from16 v9, p2

    goto :goto_2

    .line 682
    :pswitch_0
    const-string v7, "#"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 683
    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v9, p2

    move-object/from16 v18, v7

    .end local v18    # "imageId":Ljava/lang/String;
    .local v7, "imageId":Ljava/lang/String;
    goto :goto_2

    .line 682
    .end local v7    # "imageId":Ljava/lang/String;
    .restart local v18    # "imageId":Ljava/lang/String;
    :cond_1
    move-object/from16 v9, p2

    goto :goto_2

    .line 673
    :pswitch_1
    move-object/from16 v9, p2

    invoke-interface {v9, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 676
    move-object v7, v2

    move-object/from16 v17, v7

    .end local v17    # "regionId":Ljava/lang/String;
    .local v7, "regionId":Ljava/lang/String;
    goto :goto_2

    .line 667
    .end local v7    # "regionId":Ljava/lang/String;
    .restart local v17    # "regionId":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v9, p2

    invoke-static {v2}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseStyleIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 668
    .local v7, "ids":[Ljava/lang/String;
    array-length v8, v7

    if-lez v8, :cond_2

    .line 669
    move-object v8, v7

    move-object/from16 v19, v8

    .end local v19    # "styleIds":[Ljava/lang/String;
    .local v8, "styleIds":[Ljava/lang/String;
    goto :goto_2

    .line 663
    .end local v7    # "ids":[Ljava/lang/String;
    .end local v8    # "styleIds":[Ljava/lang/String;
    .restart local v19    # "styleIds":[Ljava/lang/String;
    :pswitch_3
    move-object/from16 v9, p2

    invoke-static {v2, v12}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseTimeExpression(Ljava/lang/String;Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)J

    move-result-wide v7

    .line 664
    .end local v15    # "duration":J
    .local v7, "duration":J
    move-wide v15, v7

    goto :goto_2

    .line 660
    .end local v7    # "duration":J
    .restart local v15    # "duration":J
    :pswitch_4
    move-object/from16 v9, p2

    invoke-static {v2, v12}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseTimeExpression(Ljava/lang/String;Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)J

    move-result-wide v5

    .line 661
    goto :goto_2

    .line 657
    :pswitch_5
    move-object/from16 v9, p2

    invoke-static {v2, v12}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseTimeExpression(Ljava/lang/String;Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)J

    move-result-wide v3

    .line 658
    nop

    .line 652
    .end local v1    # "attr":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_3
    move-object/from16 v9, p2

    .line 691
    .end local v10    # "i":I
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v11, :cond_6

    iget-wide v7, v11, Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;->startTimeUs:J

    cmp-long v10, v7, v1

    if-eqz v10, :cond_6

    .line 692
    cmp-long v7, v3, v1

    if-eqz v7, :cond_4

    .line 693
    iget-wide v7, v11, Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;->startTimeUs:J

    add-long/2addr v3, v7

    .line 695
    :cond_4
    cmp-long v7, v5, v1

    if-eqz v7, :cond_5

    .line 696
    iget-wide v7, v11, Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;->startTimeUs:J

    add-long/2addr v5, v7

    move-wide/from16 v20, v3

    goto :goto_3

    .line 695
    :cond_5
    move-wide/from16 v20, v3

    goto :goto_3

    .line 699
    :cond_6
    move-wide/from16 v20, v3

    .end local v3    # "startTime":J
    .local v20, "startTime":J
    :goto_3
    cmp-long v3, v5, v1

    if-nez v3, :cond_8

    .line 700
    cmp-long v3, v15, v1

    if-eqz v3, :cond_7

    .line 702
    add-long v5, v20, v15

    move-wide/from16 v22, v5

    goto :goto_4

    .line 703
    :cond_7
    if-eqz v11, :cond_8

    iget-wide v3, v11, Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;->endTimeUs:J

    cmp-long v7, v3, v1

    if-eqz v7, :cond_8

    .line 705
    iget-wide v5, v11, Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;->endTimeUs:J

    move-wide/from16 v22, v5

    goto :goto_4

    .line 709
    :cond_8
    move-wide/from16 v22, v5

    .end local v5    # "endTime":J
    .local v22, "endTime":J
    :goto_4
    nop

    .line 710
    invoke-interface/range {p0 .. p0}, Lccsanorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 709
    move-wide/from16 v2, v20

    move-wide/from16 v4, v22

    move-object v6, v14

    move-object/from16 v7, v19

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move-object/from16 v10, p1

    invoke-static/range {v1 .. v10}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;->buildNode(Ljava/lang/String;JJLccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;)Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x37b7d90c -> :sswitch_5
        0x18601 -> :sswitch_4
        0x188db -> :sswitch_3
        0x59478a9 -> :sswitch_2
        0x68b1db1 -> :sswitch_1
        0x4d0b70cd -> :sswitch_0
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

.method private static parseRegionAttributes(Lccsanorg/xmlpull/v1/XmlPullParser;Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;)Lccsancom/google/android/exoplayer2/text/ttml/TtmlRegion;
    .locals 26
    .param p0, "xmlParser"    # Lccsanorg/xmlpull/v1/XmlPullParser;
    .param p1, "cellResolution"    # Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;
    .param p2, "ttsExtent"    # Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;

    .line 335
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v0, "id"

    invoke-static {v1, v0}, Lccsancom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 336
    .local v14, "regionId":Ljava/lang/String;
    const/4 v3, 0x0

    if-nez v14, :cond_0

    .line 337
    return-object v3

    .line 344
    :cond_0
    const-string v0, "origin"

    invoke-static {v1, v0}, Lccsancom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 345
    .local v15, "regionOrigin":Ljava/lang/String;
    const-string v4, "TtmlDecoder"

    if-eqz v15, :cond_14

    .line 346
    sget-object v0, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 347
    .local v5, "originPercentageMatcher":Ljava/util/regex/Matcher;
    sget-object v6, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->PIXEL_COORDINATES:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 348
    .local v7, "originPixelMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    const-string v9, "Ignoring region with malformed origin: "

    const-string v10, "Ignoring region with missing tts:extent: "

    const/high16 v11, 0x42c80000    # 100.0f

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v8, :cond_2

    .line 350
    nop

    .line 351
    :try_start_0
    invoke-virtual {v5, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    div-float/2addr v8, v11

    .line 352
    .local v8, "position":F
    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    div-float/2addr v9, v11

    .line 356
    .local v9, "line":F
    move/from16 v19, v8

    goto :goto_2

    .line 353
    .end local v8    # "position":F
    .end local v9    # "line":F
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v9, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v4, v6}, Lccsancom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    return-object v3

    .line 357
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 358
    if-nez v2, :cond_4

    .line 359
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v10, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v4, v0}, Lccsancom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    return-object v3

    .line 363
    :cond_4
    :try_start_1
    invoke-virtual {v7, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 364
    .local v8, "width":I
    invoke-virtual {v7, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v17, v16

    .line 366
    .local v17, "height":I
    int-to-float v3, v8

    iget v12, v2, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;->width:I

    int-to-float v12, v12

    div-float/2addr v3, v12

    .line 367
    .local v3, "position":F
    move/from16 v12, v17

    .end local v17    # "height":I
    .local v12, "height":I
    int-to-float v11, v12

    iget v9, v2, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;->height:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    int-to-float v9, v9

    div-float v9, v11, v9

    .line 371
    .end local v8    # "width":I
    .end local v12    # "height":I
    .restart local v9    # "line":F
    move/from16 v19, v3

    .line 376
    .end local v3    # "position":F
    .end local v5    # "originPercentageMatcher":Ljava/util/regex/Matcher;
    .end local v7    # "originPixelMatcher":Ljava/util/regex/Matcher;
    .local v19, "position":F
    :goto_2
    nop

    .line 389
    const-string v3, "extent"

    invoke-static {v1, v3}, Lccsancom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 390
    .local v12, "regionExtent":Ljava/lang/String;
    if-eqz v12, :cond_10

    .line 391
    invoke-virtual {v0, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 392
    .local v3, "extentPercentageMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v6, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 393
    .local v5, "extentPixelMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const-string v6, "Ignoring region with malformed extent: "

    if-eqz v0, :cond_6

    .line 395
    nop

    .line 396
    :try_start_2
    invoke-virtual {v3, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v0, v7

    .line 397
    .local v0, "width":F
    nop

    .line 398
    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v4, v6

    .line 402
    .local v4, "height":F
    move/from16 v16, v4

    const/4 v7, 0x2

    goto :goto_5

    .line 399
    .end local v0    # "width":F
    .end local v4    # "height":F
    :catch_1
    move-exception v0

    .line 400
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_5
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    :goto_3
    invoke-static {v4, v6}, Lccsancom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const/4 v4, 0x0

    return-object v4

    .line 403
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 404
    if-nez v2, :cond_8

    .line 405
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v10, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-static {v4, v0}, Lccsancom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const/4 v4, 0x0

    return-object v4

    .line 409
    :cond_8
    :try_start_3
    invoke-virtual {v5, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 410
    .local v0, "extentWidth":I
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 412
    .local v8, "extentHeight":I
    int-to-float v10, v0

    iget v11, v2, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;->width:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    .line 413
    .local v10, "width":F
    int-to-float v11, v8

    iget v4, v2, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;->height:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    int-to-float v4, v4

    div-float v4, v11, v4

    .line 417
    .end local v0    # "extentWidth":I
    .end local v8    # "extentHeight":I
    .restart local v4    # "height":F
    move/from16 v16, v4

    move v0, v10

    .line 422
    .end local v3    # "extentPercentageMatcher":Ljava/util/regex/Matcher;
    .end local v4    # "height":F
    .end local v5    # "extentPixelMatcher":Ljava/util/regex/Matcher;
    .end local v10    # "width":F
    .local v0, "width":F
    .local v16, "height":F
    :goto_5
    nop

    .line 432
    const/4 v3, 0x0

    .line 434
    .local v3, "lineAnchor":I
    nop

    .line 435
    const-string v4, "displayAlign"

    invoke-static {v1, v4}, Lccsancom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 436
    .local v17, "displayAlign":Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v17, :cond_a

    .line 437
    invoke-static/range {v17 .. v17}, Lccsancom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_9
    goto :goto_6

    :sswitch_0
    const-string v8, "after"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x1

    goto :goto_7

    :sswitch_1
    const-string v8, "center"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x0

    goto :goto_7

    :goto_6
    const/4 v6, -0x1

    :goto_7
    packed-switch v6, :pswitch_data_0

    goto :goto_8

    .line 443
    :pswitch_0
    const/4 v3, 0x2

    .line 444
    add-float v9, v9, v16

    .line 445
    move/from16 v18, v3

    move/from16 v20, v9

    goto :goto_9

    .line 439
    :pswitch_1
    const/4 v3, 0x1

    .line 440
    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v16, v6

    add-float/2addr v9, v6

    .line 441
    move/from16 v18, v3

    move/from16 v20, v9

    goto :goto_9

    .line 452
    :cond_a
    :goto_8
    move/from16 v18, v3

    move/from16 v20, v9

    .end local v3    # "lineAnchor":I
    .end local v9    # "line":F
    .local v18, "lineAnchor":I
    .local v20, "line":F
    :goto_9
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v11, p1

    iget v6, v11, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;->rows:I

    int-to-float v6, v6

    div-float v21, v3, v6

    .line 454
    .local v21, "regionTextHeight":F
    const/high16 v3, -0x80000000

    .line 456
    .local v3, "verticalType":I
    nop

    .line 457
    const-string/jumbo v6, "writingMode"

    invoke-static {v1, v6}, Lccsancom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 458
    .local v22, "writingDirection":Ljava/lang/String;
    if-eqz v22, :cond_c

    .line 459
    invoke-static/range {v22 .. v22}, Lccsancom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_1

    :cond_b
    goto :goto_a

    :sswitch_2
    const-string/jumbo v4, "tbrl"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v13, 0x2

    goto :goto_b

    :sswitch_3
    const-string/jumbo v4, "tblr"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_b

    :sswitch_4
    const-string/jumbo v7, "tb"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    const/4 v13, 0x0

    goto :goto_b

    :goto_a
    const/4 v13, -0x1

    :goto_b
    packed-switch v13, :pswitch_data_1

    goto :goto_c

    .line 466
    :pswitch_2
    const/4 v3, 0x1

    .line 467
    move/from16 v23, v3

    goto :goto_d

    .line 463
    :pswitch_3
    const/4 v3, 0x2

    .line 464
    move/from16 v23, v3

    goto :goto_d

    .line 473
    :cond_c
    :goto_c
    move/from16 v23, v3

    .end local v3    # "verticalType":I
    .local v23, "verticalType":I
    :goto_d
    new-instance v24, Lccsancom/google/android/exoplayer2/text/ttml/TtmlRegion;

    const/4 v7, 0x0

    const/4 v13, 0x1

    move-object/from16 v3, v24

    move-object v4, v14

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v8, v18

    move v9, v0

    move/from16 v10, v16

    move v11, v13

    move-object/from16 v25, v12

    .end local v12    # "regionExtent":Ljava/lang/String;
    .local v25, "regionExtent":Ljava/lang/String;
    move/from16 v12, v21

    move/from16 v13, v23

    invoke-direct/range {v3 .. v13}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlRegion;-><init>(Ljava/lang/String;FFIIFFIFI)V

    return-object v24

    .line 414
    .end local v0    # "width":F
    .end local v16    # "height":F
    .end local v17    # "displayAlign":Ljava/lang/String;
    .end local v18    # "lineAnchor":I
    .end local v20    # "line":F
    .end local v21    # "regionTextHeight":F
    .end local v22    # "writingDirection":Ljava/lang/String;
    .end local v23    # "verticalType":I
    .end local v25    # "regionExtent":Ljava/lang/String;
    .local v3, "extentPercentageMatcher":Ljava/util/regex/Matcher;
    .restart local v5    # "extentPixelMatcher":Ljava/util/regex/Matcher;
    .restart local v9    # "line":F
    .restart local v12    # "regionExtent":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v25, v12

    .line 415
    .end local v12    # "regionExtent":Ljava/lang/String;
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v25    # "regionExtent":Ljava/lang/String;
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_d

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_e

    :cond_d
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    :goto_e
    invoke-static {v4, v6}, Lccsancom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const/4 v4, 0x0

    return-object v4

    .line 419
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v25    # "regionExtent":Ljava/lang/String;
    .restart local v12    # "regionExtent":Ljava/lang/String;
    :cond_e
    move-object/from16 v25, v12

    .end local v12    # "regionExtent":Ljava/lang/String;
    .restart local v25    # "regionExtent":Ljava/lang/String;
    const-string v0, "Ignoring region with unsupported extent: "

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_f

    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_f
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    :goto_f
    invoke-static {v4, v0}, Lccsancom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const/4 v6, 0x0

    return-object v6

    .line 423
    .end local v3    # "extentPercentageMatcher":Ljava/util/regex/Matcher;
    .end local v5    # "extentPixelMatcher":Ljava/util/regex/Matcher;
    .end local v25    # "regionExtent":Ljava/lang/String;
    .restart local v12    # "regionExtent":Ljava/lang/String;
    :cond_10
    const/4 v6, 0x0

    const-string v0, "Ignoring region without an extent"

    invoke-static {v4, v0}, Lccsancom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    return-object v6

    .line 368
    .end local v9    # "line":F
    .end local v12    # "regionExtent":Ljava/lang/String;
    .end local v19    # "position":F
    .local v5, "originPercentageMatcher":Ljava/util/regex/Matcher;
    .restart local v7    # "originPixelMatcher":Ljava/util/regex/Matcher;
    :catch_3
    move-exception v0

    .line 369
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {v9, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_10

    :cond_11
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_10
    invoke-static {v4, v3}, Lccsancom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const/4 v3, 0x0

    return-object v3

    .line 373
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_12
    const-string v0, "Ignoring region with unsupported origin: "

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_13

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_13
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    :goto_11
    invoke-static {v4, v0}, Lccsancom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const/4 v3, 0x0

    return-object v3

    .line 377
    .end local v5    # "originPercentageMatcher":Ljava/util/regex/Matcher;
    .end local v7    # "originPixelMatcher":Ljava/util/regex/Matcher;
    :cond_14
    const-string v0, "Ignoring region without an origin"

    invoke-static {v4, v0}, Lccsancom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    return-object v3

    nop

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

    :sswitch_data_1
    .sparse-switch
        0xe6e -> :sswitch_4
        0x363874 -> :sswitch_3
        0x363928 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static parseShear(Ljava/lang/String;)F
    .locals 7
    .param p0, "expression"    # Ljava/lang/String;

    .line 774
    sget-object v0, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->SIGNED_PERCENTAGE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 775
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const-string v3, "TtmlDecoder"

    if-nez v1, :cond_1

    .line 776
    const-string v1, "Invalid value for shear: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    :goto_0
    invoke-static {v3, v1}, Lccsancom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    return v2

    .line 780
    :cond_1
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 781
    .local v1, "percentage":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 785
    .local v4, "value":F
    const/high16 v5, -0x3d380000    # -100.0f

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move v4, v5

    .line 786
    const/high16 v5, 0x42c80000    # 100.0f

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    .end local v4    # "value":F
    .local v2, "value":F
    return v2

    .line 788
    .end local v1    # "percentage":Ljava/lang/String;
    .end local v2    # "value":F
    :catch_0
    move-exception v1

    .line 789
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v4, "Failed to parse shear: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :goto_1
    invoke-static {v3, v4, v1}, Lccsancom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 790
    return v2
.end method

.method private static parseStyleAttributes(Lccsanorg/xmlpull/v1/XmlPullParser;Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .locals 12
    .param p0, "parser"    # Lccsanorg/xmlpull/v1/XmlPullParser;
    .param p1, "style"    # Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    .line 493
    invoke-interface {p0}, Lccsanorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 494
    .local v0, "attributeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_9

    .line 495
    invoke-interface {p0, v1}, Lccsanorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 496
    .local v2, "attributeValue":Ljava/lang/String;
    invoke-interface {p0, v1}, Lccsanorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    sparse-switch v4, :sswitch_data_0

    :cond_0
    goto/16 :goto_1

    :sswitch_0
    const-string v4, "multiRowAlign"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto/16 :goto_2

    :sswitch_1
    const-string v4, "backgroundColor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto/16 :goto_2

    :sswitch_2
    const-string/jumbo v4, "rubyPosition"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xb

    goto/16 :goto_2

    :sswitch_3
    const-string/jumbo v4, "textEmphasis"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xd

    goto/16 :goto_2

    :sswitch_4
    const-string v4, "fontSize"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto/16 :goto_2

    :sswitch_5
    const-string/jumbo v4, "textCombine"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x9

    goto :goto_2

    :sswitch_6
    const-string/jumbo v4, "shear"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xe

    goto :goto_2

    :sswitch_7
    const-string v4, "color"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_2

    :sswitch_8
    const-string/jumbo v4, "ruby"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xa

    goto :goto_2

    :sswitch_9
    const-string v4, "id"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :sswitch_a
    const-string v4, "fontWeight"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_2

    :sswitch_b
    const-string/jumbo v4, "textDecoration"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xc

    goto :goto_2

    :sswitch_c
    const-string/jumbo v4, "textAlign"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    goto :goto_2

    :sswitch_d
    const-string v4, "fontFamily"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_2

    :sswitch_e
    const-string v4, "fontStyle"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    goto :goto_2

    :goto_1
    const/4 v3, -0x1

    :goto_2
    const-string v4, "TtmlDecoder"

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_10

    .line 608
    :pswitch_0
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-static {v2}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseShear(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v3, v4}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;->setShearPercentage(F)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p1

    .line 609
    goto/16 :goto_10

    .line 605
    :pswitch_1
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-static {v2}, Lccsancom/google/android/exoplayer2/text/ttml/TextEmphasis;->parse(Ljava/lang/String;)Lccsancom/google/android/exoplayer2/text/ttml/TextEmphasis;

    move-result-object v4

    invoke-virtual {v3, v4}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;->setTextEmphasis(Lccsancom/google/android/exoplayer2/text/ttml/TextEmphasis;)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p1

    .line 606
    goto/16 :goto_10

    .line 589
    :pswitch_2
    invoke-static {v2}, Lccsancom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    :cond_1
    goto :goto_3

    :sswitch_f
    const-string v4, "linethrough"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v7, 0x0

    goto :goto_4

    :sswitch_10
    const-string v4, "nolinethrough"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v7, 0x1

    goto :goto_4

    :sswitch_11
    const-string/jumbo v4, "underline"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v7, 0x2

    goto :goto_4

    :sswitch_12
    const-string v4, "nounderline"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_4

    :goto_3
    const/4 v7, -0x1

    :goto_4
    packed-switch v7, :pswitch_data_1

    goto :goto_5

    .line 600
    :pswitch_3
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-virtual {v3, v10}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;->setUnderline(Z)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p1

    goto :goto_5

    .line 597
    :pswitch_4
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-virtual {v3, v11}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;->setUnderline(Z)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p1

    .line 598
    goto :goto_5

    .line 594
    :pswitch_5
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-virtual {v3, v10}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;->setLinethrough(Z)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p1

    .line 595
    goto :goto_5

    .line 591
    :pswitch_6
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-virtual {v3, v11}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;->setLinethrough(Z)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p1

    .line 592
    nop

    .line 603
    :goto_5
    goto/16 :goto_10

    .line 576
    :pswitch_7
    invoke-static {v2}, Lccsancom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_2

    :cond_2
    goto :goto_6

    :sswitch_13
    const-string v4, "after"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v9, 0x1

    goto :goto_6

    :sswitch_14
    const-string v4, "before"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v9, 0x0

    :goto_6
    packed-switch v9, :pswitch_data_2

    goto :goto_7

    .line 581
    :pswitch_8
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-virtual {v3, v8}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;->setRubyPosition(I)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p1

    .line 582
    goto :goto_7

    .line 578
    :pswitch_9
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-virtual {v3, v11}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;->setRubyPosition(I)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p1

    .line 579
    nop

    .line 587
    :goto_7
    goto/16 :goto_10

    .line 555
    :pswitch_a
    invoke-static {v2}, Lccsancom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_3

    :cond_3
    goto :goto_8

    :sswitch_15
    const-string/jumbo v4, "text"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v5, 0x3

    goto :goto_9

    :sswitch_16
    const-string v4, "base"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v5, 0x1

    goto :goto_9

    :sswitch_17
    const-string/jumbo v4, "textContainer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v5, 0x4

    goto :goto_9

    :sswitch_18
    const-string v4, "delimiter"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_9

    :sswitch_19
    const-string v4, "container"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v5, 0x0

    goto :goto_9

    :sswitch_1a
    const-string v4, "baseContainer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v5, 0x2

    goto :goto_9

    :goto_8
    const/4 v5, -0x1

    :goto_9
    packed-switch v5, :pswitch_data_3

    goto :goto_a

    .line 568
    :pswitch_b
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-virtual {v3, v6}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;->setRubyType(I)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p1

    .line 569
    goto :goto_a

    .line 565
    :pswitch_c
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-virtual {v3, v7}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;->setRubyType(I)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p1

    .line 566
    goto :goto_a

    .line 561
    :pswitch_d
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-virtual {v3, v8}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;->setRubyType(I)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p1

    .line 562
    goto :goto_a

    .line 557
    :pswitch_e
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-virtual {v3, v11}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;->setRubyType(I)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p1

    .line 558
    nop

    .line 574
    :goto_a
    goto/16 :goto_10

    .line 542
    :pswitch_f
    invoke-static {v2}, Lccsancom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_4

    :cond_4
    goto :goto_b

    :sswitch_1b
    const-string v4, "none"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v9, 0x0

    goto :goto_b

    :sswitch_1c
    const-string v4, "all"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v9, 0x1

    :goto_b
    packed-switch v9, :pswitch_data_4

    goto :goto_c

    .line 547
    :pswitch_10
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-virtual {v3, v11}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;->setTextCombine(Z)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p1

    .line 548
    goto :goto_c

    .line 544
    :pswitch_11
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-virtual {v3, v10}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;->setTextCombine(Z)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p1

    .line 545
    nop

    .line 553
    :goto_c
    goto/16 :goto_10

    .line 539
    :pswitch_12
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-static {v2}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseAlignment(Ljava/lang/String;)Lccsanandroid/text/Layout$Alignment;

    move-result-object v4

    invoke-virtual {v3, v4}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;->setMultiRowAlign(Lccsanandroid/text/Layout$Alignment;)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p1

    .line 540
    goto/16 :goto_10

    .line 536
    :pswitch_13
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-static {v2}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseAlignment(Ljava/lang/String;)Lccsanandroid/text/Layout$Alignment;

    move-result-object v4

    invoke-virtual {v3, v4}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;->setTextAlign(Lccsanandroid/text/Layout$Alignment;)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p1

    .line 537
    goto/16 :goto_10

    .line 533
    :pswitch_14
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    const-string v4, "italic"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;->setItalic(Z)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p1

    .line 534
    goto/16 :goto_10

    .line 530
    :pswitch_15
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    const-string v4, "bold"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;->setBold(Z)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p1

    .line 531
    goto/16 :goto_10

    .line 523
    :pswitch_16
    :try_start_0
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    move-object p1, v3

    .line 524
    invoke-static {v2, p1}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseFontSize(Ljava/lang/String;Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;)V
    :try_end_0
    .catch Lccsancom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    goto/16 :goto_10

    .line 525
    :catch_0
    move-exception v3

    .line 526
    .local v3, "e":Lccsancom/google/android/exoplayer2/text/SubtitleDecoderException;
    const-string v5, "Failed parsing fontSize value: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_d

    :cond_5
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    :goto_d
    invoke-static {v4, v5}, Lccsancom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    .end local v3    # "e":Lccsancom/google/android/exoplayer2/text/SubtitleDecoderException;
    goto/16 :goto_10

    .line 519
    :pswitch_17
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-virtual {v3, v2}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;->setFontFamily(Ljava/lang/String;)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p1

    .line 520
    goto :goto_10

    .line 511
    :pswitch_18
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p1

    .line 513
    :try_start_1
    invoke-static {v2}, Lccsancom/google/android/exoplayer2/util/ColorParser;->parseTtmlColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;->setFontColor(I)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 516
    goto :goto_10

    .line 514
    :catch_1
    move-exception v3

    .line 515
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "Failed parsing color value: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_e

    :cond_6
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    :goto_e
    invoke-static {v4, v5}, Lccsancom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_10

    .line 503
    :pswitch_19
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p1

    .line 505
    :try_start_2
    invoke-static {v2}, Lccsancom/google/android/exoplayer2/util/ColorParser;->parseTtmlColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;->setBackgroundColor(I)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 508
    goto :goto_10

    .line 506
    :catch_2
    move-exception v3

    .line 507
    .restart local v3    # "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "Failed parsing background value: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_f

    :cond_7
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    :goto_f
    invoke-static {v4, v5}, Lccsancom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_10

    .line 498
    :pswitch_1a
    invoke-interface {p0}, Lccsanorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "style"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 499
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v3

    invoke-virtual {v3, v2}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;->setId(Ljava/lang/String;)Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object p1

    .line 494
    .end local v2    # "attributeValue":Ljava/lang/String;
    :cond_8
    :goto_10
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 615
    .end local v1    # "i":I
    :cond_9
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5c71855e -> :sswitch_e
        -0x48ff636d -> :sswitch_d
        -0x3f826a28 -> :sswitch_c
        -0x3468fa43 -> :sswitch_b
        -0x2bc67c59 -> :sswitch_a
        0xd1b -> :sswitch_9
        0x3595da -> :sswitch_8
        0x5a72f63 -> :sswitch_7
        0x6855ce1 -> :sswitch_6
        0x6909352 -> :sswitch_5
        0x15caa0f0 -> :sswitch_4
        0x36e741c9 -> :sswitch_3
        0x42841923 -> :sswitch_2
        0x4cb7f6d5 -> :sswitch_1
        0x6899f5a4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_f
        :pswitch_a
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x57195dd5 -> :sswitch_12
        -0x3d363934 -> :sswitch_11
        0x36723ff0 -> :sswitch_10
        0x641ec051 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x5305c081 -> :sswitch_14
        0x58705dc -> :sswitch_13
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        -0x24de7f50 -> :sswitch_1a
        -0x187eb37f -> :sswitch_19
        -0xeee99f9 -> :sswitch_18
        -0x81c562c -> :sswitch_17
        0x2e06d1 -> :sswitch_16
        0x36452d -> :sswitch_15
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :sswitch_data_4
    .sparse-switch
        0x179a1 -> :sswitch_1c
        0x33af38 -> :sswitch_1b
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method private static parseStyleIds(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "parentStyleIds"    # Ljava/lang/String;

    .line 487
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 488
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "\\s+"

    invoke-static {p0, v0}, Lccsancom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static parseTimeExpression(Ljava/lang/String;Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)J
    .locals 16
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "frameAndTickRate"    # Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 807
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->CLOCK_TIME:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 808
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v3, :cond_3

    .line 809
    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 810
    .local v3, "hours":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0xe10

    mul-long v10, v10, v12

    long-to-double v10, v10

    .line 811
    .local v10, "durationSeconds":D
    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 812
    .local v9, "minutes":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v14, 0x3c

    mul-long v12, v12, v14

    long-to-double v12, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v10, v12

    .line 813
    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 814
    .local v8, "seconds":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    long-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v10, v12

    .line 815
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 816
    .local v7, "fraction":Ljava/lang/String;
    const-wide/16 v12, 0x0

    if-eqz v7, :cond_0

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    goto :goto_0

    :cond_0
    move-wide v14, v12

    :goto_0
    add-double/2addr v10, v14

    .line 817
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 818
    .local v6, "frames":Ljava/lang/String;
    nop

    .line 819
    if-eqz v6, :cond_1

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    long-to-float v14, v14

    iget v15, v1, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->effectiveFrameRate:F

    div-float/2addr v14, v15

    float-to-double v14, v14

    goto :goto_1

    :cond_1
    move-wide v14, v12

    :goto_1
    add-double/2addr v10, v14

    .line 820
    const/4 v14, 0x6

    invoke-virtual {v2, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    .line 821
    .local v14, "subframes":Ljava/lang/String;
    nop

    .line 822
    if-eqz v14, :cond_2

    .line 825
    nop

    .line 823
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    long-to-double v12, v12

    iget v15, v1, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->subFrameRate:I

    int-to-double v4, v15

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v12, v4

    iget v4, v1, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->effectiveFrameRate:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v12, v4

    goto :goto_2

    .line 826
    :cond_2
    nop

    :goto_2
    add-double/2addr v10, v12

    .line 827
    const-wide v4, 0x412e848000000000L    # 1000000.0

    mul-double v4, v4, v10

    double-to-long v4, v4

    return-wide v4

    .line 829
    .end local v3    # "hours":Ljava/lang/String;
    .end local v6    # "frames":Ljava/lang/String;
    .end local v7    # "fraction":Ljava/lang/String;
    .end local v8    # "seconds":Ljava/lang/String;
    .end local v9    # "minutes":Ljava/lang/String;
    .end local v10    # "durationSeconds":D
    .end local v14    # "subframes":Ljava/lang/String;
    :cond_3
    sget-object v3, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->OFFSET_TIME:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 830
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 831
    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 832
    .local v3, "timeValue":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 833
    .local v4, "offsetSeconds":D
    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 834
    .local v11, "unit":Ljava/lang/String;
    const/4 v12, -0x1

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    :cond_4
    goto :goto_3

    :sswitch_0
    const-string v6, "ms"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x3

    goto :goto_4

    :sswitch_1
    const-string/jumbo v7, "t"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_4

    :sswitch_2
    const-string/jumbo v6, "s"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x2

    goto :goto_4

    :sswitch_3
    const-string v6, "m"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    goto :goto_4

    :sswitch_4
    const-string v6, "h"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    goto :goto_4

    :sswitch_5
    const-string v6, "f"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x4

    goto :goto_4

    :goto_3
    const/4 v6, -0x1

    :goto_4
    packed-switch v6, :pswitch_data_0

    goto :goto_5

    .line 851
    :pswitch_0
    iget v6, v1, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->tickRate:I

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    goto :goto_5

    .line 848
    :pswitch_1
    iget v6, v1, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->effectiveFrameRate:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    .line 849
    goto :goto_5

    .line 845
    :pswitch_2
    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    .line 846
    goto :goto_5

    .line 843
    :pswitch_3
    goto :goto_5

    .line 839
    :pswitch_4
    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    mul-double v4, v4, v6

    .line 840
    goto :goto_5

    .line 836
    :pswitch_5
    const-wide v6, 0x40ac200000000000L    # 3600.0

    mul-double v4, v4, v6

    .line 837
    nop

    .line 854
    :goto_5
    const-wide v6, 0x412e848000000000L    # 1000000.0

    mul-double v6, v6, v4

    double-to-long v6, v6

    return-wide v6

    .line 856
    .end local v3    # "timeValue":Ljava/lang/String;
    .end local v4    # "offsetSeconds":D
    .end local v11    # "unit":Ljava/lang/String;
    :cond_5
    new-instance v3, Lccsancom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string v4, "Malformed time expression: "

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_6
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :goto_6
    invoke-direct {v3, v4}, Lccsancom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :goto_7
    throw v3

    :goto_8
    goto :goto_7

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

.method private static parseTtsExtent(Lccsanorg/xmlpull/v1/XmlPullParser;)Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;
    .locals 8
    .param p0, "xmlParser"    # Lccsanorg/xmlpull/v1/XmlPullParser;

    .line 255
    const-string v0, "extent"

    invoke-static {p0, v0}, Lccsancom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "ttsExtent":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 257
    return-object v1

    .line 260
    :cond_0
    sget-object v2, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->PIXEL_COORDINATES:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 261
    .local v2, "extentMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    const-string v4, "TtmlDecoder"

    if-nez v3, :cond_2

    .line 262
    const-string v3, "Ignoring non-pixel tts extent: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    :goto_0
    invoke-static {v4, v3}, Lccsancom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return-object v1

    .line 266
    :cond_2
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 267
    .local v3, "width":I
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 268
    .local v5, "height":I
    new-instance v6, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;

    invoke-direct {v6, v3, v5}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 269
    .end local v3    # "width":I
    .end local v5    # "height":I
    :catch_0
    move-exception v3

    .line 270
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v5, "Ignoring malformed tts extent: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    :goto_1
    invoke-static {v4, v5}, Lccsancom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    return-object v1
.end method


# virtual methods
.method protected decode([BIZ)Lccsancom/google/android/exoplayer2/text/Subtitle;
    .locals 21
    .param p1, "bytes"    # [B
    .param p2, "length"    # I
    .param p3, "reset"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 119
    const-string v0, ""

    move-object/from16 v1, p0

    :try_start_0
    iget-object v2, v1, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->xmlParserFactory:Lccsanorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v2}, Lccsanorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lccsanorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 120
    .local v2, "xmlParser":Lccsanorg/xmlpull/v1/XmlPullParser;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v9, v3

    .line 121
    .local v9, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v10, v3

    .line 122
    .local v10, "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lccsancom/google/android/exoplayer2/text/ttml/TtmlRegion;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v11, v3

    .line 123
    .local v11, "imageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Lccsancom/google/android/exoplayer2/text/ttml/TtmlRegion;

    invoke-direct {v3, v0}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlRegion;-><init>(Ljava/lang/String;)V

    invoke-interface {v10, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const/4 v3, 0x0

    move-object/from16 v12, p1

    move/from16 v13, p2

    invoke-direct {v0, v12, v3, v13}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    move-object v14, v0

    .line 125
    .local v14, "inputStream":Ljava/io/ByteArrayInputStream;
    const/4 v0, 0x0

    invoke-interface {v2, v14, v0}, Lccsanorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "ttmlSubtitle":Lccsancom/google/android/exoplayer2/text/ttml/TtmlSubtitle;
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    move-object v15, v3

    .line 128
    .local v15, "nodeStack":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;>;"
    const/4 v3, 0x0

    .line 129
    .local v3, "unsupportedNodeDepth":I
    invoke-interface {v2}, Lccsanorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 130
    .local v4, "eventType":I
    sget-object v5, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_FRAME_AND_TICK_RATE:Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    .line 131
    .local v5, "frameAndTickRate":Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    sget-object v6, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_CELL_RESOLUTION:Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;

    .line 132
    .local v6, "cellResolution":Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;
    const/4 v7, 0x0

    move-object/from16 v16, v0

    move/from16 v17, v3

    move v8, v4

    .line 133
    .end local v0    # "ttmlSubtitle":Lccsancom/google/android/exoplayer2/text/ttml/TtmlSubtitle;
    .end local v3    # "unsupportedNodeDepth":I
    .end local v4    # "eventType":I
    .local v7, "ttsExtent":Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;
    .local v8, "eventType":I
    .local v16, "ttmlSubtitle":Lccsancom/google/android/exoplayer2/text/ttml/TtmlSubtitle;
    .local v17, "unsupportedNodeDepth":I
    :goto_0
    const/4 v0, 0x1

    if-eq v8, v0, :cond_c

    .line 134
    invoke-virtual {v15}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;

    move-object v4, v0

    .line 135
    .local v4, "parent":Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;
    const/4 v3, 0x2

    if-nez v17, :cond_9

    .line 136
    invoke-interface {v2}, Lccsanorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18
    :try_end_0
    .catch Lccsanorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v19, v18

    .line 137
    .local v19, "name":Ljava/lang/String;
    const-string/jumbo v0, "tt"

    if-ne v8, v3, :cond_5

    .line 138
    move-object/from16 v3, v19

    .end local v19    # "name":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-static {v2}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseFrameAndTickRates(Lccsanorg/xmlpull/v1/XmlPullParser;)Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    move-result-object v0

    move-object v5, v0

    .line 140
    sget-object v0, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_CELL_RESOLUTION:Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;

    invoke-static {v2, v0}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseCellResolution(Lccsanorg/xmlpull/v1/XmlPullParser;Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;)Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;

    move-result-object v0

    move-object v6, v0

    .line 141
    invoke-static {v2}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseTtsExtent(Lccsanorg/xmlpull/v1/XmlPullParser;)Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;

    move-result-object v0

    move-object v7, v0

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object v7, v5

    goto :goto_1

    .line 138
    :cond_0
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object v7, v5

    .line 143
    .end local v5    # "frameAndTickRate":Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .end local v6    # "cellResolution":Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;
    .local v7, "frameAndTickRate":Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .local v18, "cellResolution":Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;
    .local v19, "ttsExtent":Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;
    :goto_1
    invoke-static {v3}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->isSupportedTag(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Lccsanorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v5, "TtmlDecoder"

    if-nez v0, :cond_2

    .line 144
    :try_start_2
    const-string v0, "Ignoring unsupported tag: "

    invoke-interface {v2}, Lccsanorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v20

    if-eqz v20, :cond_1

    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    :goto_2
    invoke-static {v5, v0}, Lccsancom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    add-int/lit8 v17, v17, 0x1

    move-object v1, v4

    move-object v5, v7

    move v13, v8

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    goto/16 :goto_4

    .line 146
    :cond_2
    const-string v0, "head"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 147
    move-object/from16 v20, v3

    .end local v3    # "name":Ljava/lang/String;
    .local v20, "name":Ljava/lang/String;
    move-object v3, v2

    move-object v6, v4

    .end local v4    # "parent":Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;
    .local v6, "parent":Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;
    move-object v4, v9

    move-object/from16 v5, v18

    move-object v1, v6

    .end local v6    # "parent":Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;
    .local v1, "parent":Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;
    move-object/from16 v6, v19

    move-object v12, v7

    .end local v7    # "frameAndTickRate":Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .local v12, "frameAndTickRate":Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    move-object v7, v10

    move v13, v8

    .end local v8    # "eventType":I
    .local v13, "eventType":I
    move-object v8, v11

    invoke-static/range {v3 .. v8}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseHeader(Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    :try_end_2
    .catch Lccsanorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 150
    .end local v1    # "parent":Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;
    .end local v12    # "frameAndTickRate":Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .end local v13    # "eventType":I
    .end local v20    # "name":Ljava/lang/String;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "parent":Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;
    .restart local v7    # "frameAndTickRate":Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .restart local v8    # "eventType":I
    :cond_3
    move-object/from16 v20, v3

    move-object v1, v4

    move-object v12, v7

    move v13, v8

    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "parent":Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;
    .end local v7    # "frameAndTickRate":Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .end local v8    # "eventType":I
    .restart local v1    # "parent":Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;
    .restart local v12    # "frameAndTickRate":Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .restart local v13    # "eventType":I
    .restart local v20    # "name":Ljava/lang/String;
    :try_start_3
    invoke-static {v2, v1, v10, v12}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseNode(Lccsanorg/xmlpull/v1/XmlPullParser;Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;Ljava/util/Map;Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;

    move-result-object v0

    .line 151
    .local v0, "node":Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;
    invoke-virtual {v15, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 152
    if-eqz v1, :cond_4

    .line 153
    invoke-virtual {v1, v0}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;->addChild(Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;)V
    :try_end_3
    .catch Lccsancom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lccsanorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 159
    .end local v0    # "node":Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;
    :cond_4
    nop

    .line 171
    .end local v20    # "name":Ljava/lang/String;
    :goto_3
    move-object v5, v12

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    goto :goto_4

    .line 155
    .restart local v20    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Lccsancom/google/android/exoplayer2/text/SubtitleDecoderException;
    :try_start_4
    const-string v3, "Suppressing parser error"

    invoke-static {v5, v3, v0}, Lccsancom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    nop

    .end local v0    # "e":Lccsancom/google/android/exoplayer2/text/SubtitleDecoderException;
    add-int/lit8 v17, v17, 0x1

    .line 159
    move-object v5, v12

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    goto :goto_4

    .line 161
    .end local v1    # "parent":Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;
    .end local v12    # "frameAndTickRate":Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .end local v13    # "eventType":I
    .end local v18    # "cellResolution":Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;
    .end local v20    # "name":Ljava/lang/String;
    .restart local v4    # "parent":Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;
    .restart local v5    # "frameAndTickRate":Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .local v6, "cellResolution":Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;
    .local v7, "ttsExtent":Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;
    .restart local v8    # "eventType":I
    .local v19, "name":Ljava/lang/String;
    :cond_5
    move-object v1, v4

    move v13, v8

    move-object/from16 v20, v19

    .end local v4    # "parent":Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;
    .end local v8    # "eventType":I
    .end local v19    # "name":Ljava/lang/String;
    .restart local v1    # "parent":Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;
    .restart local v13    # "eventType":I
    .restart local v20    # "name":Ljava/lang/String;
    const/4 v3, 0x4

    if-ne v13, v3, :cond_6

    .line 162
    invoke-static {v1}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;

    invoke-interface {v2}, Lccsanorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;->buildTextNode(Ljava/lang/String;)Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;

    move-result-object v3

    invoke-virtual {v0, v3}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;->addChild(Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;)V

    goto :goto_4

    .line 163
    :cond_6
    const/4 v3, 0x3

    if-ne v13, v3, :cond_8

    .line 164
    invoke-interface {v2}, Lccsanorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 165
    new-instance v0, Lccsancom/google/android/exoplayer2/text/ttml/TtmlSubtitle;

    .line 167
    invoke-virtual {v15}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;

    invoke-static {v3}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;

    invoke-direct {v0, v3, v9, v10, v11}, Lccsancom/google/android/exoplayer2/text/ttml/TtmlSubtitle;-><init>(Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    move-object/from16 v16, v0

    .line 169
    :cond_7
    invoke-virtual {v15}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 171
    .end local v20    # "name":Ljava/lang/String;
    :cond_8
    :goto_4
    goto :goto_5

    .line 172
    .end local v1    # "parent":Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;
    .end local v13    # "eventType":I
    .restart local v4    # "parent":Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;
    .restart local v8    # "eventType":I
    :cond_9
    move-object v1, v4

    move v13, v8

    .end local v4    # "parent":Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;
    .end local v8    # "eventType":I
    .restart local v1    # "parent":Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;
    .restart local v13    # "eventType":I
    if-ne v13, v3, :cond_a

    .line 173
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 174
    :cond_a
    const/4 v0, 0x3

    if-ne v13, v0, :cond_b

    .line 175
    add-int/lit8 v17, v17, -0x1

    .line 178
    :cond_b
    :goto_5
    invoke-interface {v2}, Lccsanorg/xmlpull/v1/XmlPullParser;->next()I

    .line 179
    invoke-interface {v2}, Lccsanorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move v8, v0

    .line 180
    .end local v1    # "parent":Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;
    .end local v13    # "eventType":I
    .restart local v8    # "eventType":I
    move-object/from16 v1, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    goto/16 :goto_0

    .line 181
    :cond_c
    move v13, v8

    .end local v8    # "eventType":I
    .restart local v13    # "eventType":I
    if-eqz v16, :cond_d

    .line 182
    return-object v16

    .line 184
    :cond_d
    new-instance v0, Lccsancom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string v1, "No TTML subtitles found"

    invoke-direct {v0, v1}, Lccsancom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    .end local p1    # "bytes":[B
    .end local p2    # "length":I
    .end local p3    # "reset":Z
    throw v0
    :try_end_4
    .catch Lccsanorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 188
    .end local v2    # "xmlParser":Lccsanorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "frameAndTickRate":Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .end local v6    # "cellResolution":Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;
    .end local v7    # "ttsExtent":Lccsancom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;
    .end local v9    # "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lccsancom/google/android/exoplayer2/text/ttml/TtmlStyle;>;"
    .end local v10    # "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lccsancom/google/android/exoplayer2/text/ttml/TtmlRegion;>;"
    .end local v11    # "imageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "eventType":I
    .end local v14    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v15    # "nodeStack":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lccsancom/google/android/exoplayer2/text/ttml/TtmlNode;>;"
    .end local v16    # "ttmlSubtitle":Lccsancom/google/android/exoplayer2/text/ttml/TtmlSubtitle;
    .end local v17    # "unsupportedNodeDepth":I
    .restart local p1    # "bytes":[B
    .restart local p2    # "length":I
    .restart local p3    # "reset":Z
    :catch_1
    move-exception v0

    .line 189
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected error when reading input."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 186
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 187
    .local v0, "xppe":Lccsanorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Lccsancom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string v2, "Unable to decode source"

    invoke-direct {v1, v2, v0}, Lccsancom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :goto_6
    throw v1

    :goto_7
    goto :goto_6
.end method
