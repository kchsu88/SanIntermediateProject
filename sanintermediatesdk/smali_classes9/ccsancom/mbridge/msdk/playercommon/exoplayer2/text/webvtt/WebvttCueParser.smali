.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser;
.super Ljava/lang/Object;
.source "WebvttCueParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser$StartTag;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;
    }
.end annotation


# static fields
.field private static final CHAR_AMPERSAND:C = '&'

.field private static final CHAR_GREATER_THAN:C = '>'

.field private static final CHAR_LESS_THAN:C = '<'

.field private static final CHAR_SEMI_COLON:C = ';'

.field private static final CHAR_SLASH:C = '/'

.field private static final CHAR_SPACE:C = ' '

.field public static final CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

.field private static final CUE_SETTING_PATTERN:Ljava/util/regex/Pattern;

.field private static final ENTITY_AMPERSAND:Ljava/lang/String; = "amp"

.field private static final ENTITY_GREATER_THAN:Ljava/lang/String; = "gt"

.field private static final ENTITY_LESS_THAN:Ljava/lang/String; = "lt"

.field private static final ENTITY_NON_BREAK_SPACE:Ljava/lang/String; = "nbsp"

.field private static final STYLE_BOLD:I = 0x1

.field private static final STYLE_ITALIC:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WebvttCueParser"

.field private static final TAG_BOLD:Ljava/lang/String; = "b"

.field private static final TAG_CLASS:Ljava/lang/String; = "c"

.field private static final TAG_ITALIC:Ljava/lang/String; = "i"

.field private static final TAG_LANG:Ljava/lang/String; = "lang"

.field private static final TAG_UNDERLINE:Ljava/lang/String; = "u"

.field private static final TAG_VOICE:Ljava/lang/String; = "v"


# instance fields
.field private final textBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    nop

    .line 52
    const-string v0, "^(\\S+)\\s+-->\\s+(\\S+)(.*)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser;->CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

    .line 54
    const-string v0, "(\\S+?):(\\S+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser;->CUE_SETTING_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser;->textBuilder:Ljava/lang/StringBuilder;

    .line 84
    return-void
.end method

.method private static applyEntity(Ljava/lang/String;Lccsanandroid/text/SpannableStringBuilder;)V
    .locals 1

    .line 334
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "nbsp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "amp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "lt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "gt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 348
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ignoring unsupported entity: \'&"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";\'"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WebvttCueParser"

    invoke-static {p1, p0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 345
    :pswitch_0
    const/16 p0, 0x26

    invoke-virtual {p1, p0}, Lccsanandroid/text/SpannableStringBuilder;->append(C)Lccsanandroid/text/SpannableStringBuilder;

    .line 346
    goto :goto_2

    .line 342
    :pswitch_1
    const/16 p0, 0x20

    invoke-virtual {p1, p0}, Lccsanandroid/text/SpannableStringBuilder;->append(C)Lccsanandroid/text/SpannableStringBuilder;

    .line 343
    goto :goto_2

    .line 339
    :pswitch_2
    const/16 p0, 0x3e

    invoke-virtual {p1, p0}, Lccsanandroid/text/SpannableStringBuilder;->append(C)Lccsanandroid/text/SpannableStringBuilder;

    .line 340
    goto :goto_2

    .line 336
    :pswitch_3
    const/16 p0, 0x3c

    invoke-virtual {p1, p0}, Lccsanandroid/text/SpannableStringBuilder;->append(C)Lccsanandroid/text/SpannableStringBuilder;

    .line 337
    nop

    .line 351
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xced -> :sswitch_3
        0xd88 -> :sswitch_2
        0x179c4 -> :sswitch_1
        0x337f11 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static applySpansForTag(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser$StartTag;Lccsanandroid/text/SpannableStringBuilder;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser$StartTag;",
            "Lccsanandroid/text/SpannableStringBuilder;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;",
            ">;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;",
            ">;)V"
        }
    .end annotation

    .line 369
    iget v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->position:I

    .line 370
    invoke-virtual {p2}, Lccsanandroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 371
    iget-object v2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v3, "lang"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_1
    const-string v3, "v"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_2
    const-string v3, "u"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_3
    const-string v3, "i"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_4
    const-string v3, "c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_5
    const-string v3, "b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_6
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto :goto_1

    :goto_0
    const/4 v2, -0x1

    :goto_1
    const/16 v3, 0x21

    packed-switch v2, :pswitch_data_0

    .line 389
    return-void

    .line 387
    :pswitch_0
    goto :goto_2

    .line 381
    :pswitch_1
    new-instance v2, Lccsanandroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Lccsanandroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p2, v2, v0, v1, v3}, Lccsanandroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 382
    goto :goto_2

    .line 377
    :pswitch_2
    new-instance v2, Lccsanandroid/text/style/StyleSpan;

    invoke-direct {v2, v5}, Lccsanandroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p2, v2, v0, v1, v3}, Lccsanandroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 379
    goto :goto_2

    .line 373
    :pswitch_3
    new-instance v2, Lccsanandroid/text/style/StyleSpan;

    invoke-direct {v2, v6}, Lccsanandroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p2, v2, v0, v1, v3}, Lccsanandroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 375
    nop

    .line 391
    :goto_2
    invoke-interface {p4}, Ljava/util/List;->clear()V

    .line 392
    invoke-static {p3, p0, p1, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser;->getApplicableStyles(Ljava/util/List;Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser$StartTag;Ljava/util/List;)V

    .line 393
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p0

    .line 394
    nop

    :goto_3
    if-ge v4, p0, :cond_1

    .line 395
    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;->style:Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;

    invoke-static {p2, p1, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser;->applyStyleToText(Lccsanandroid/text/SpannableStringBuilder;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;II)V

    .line 394
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 397
    :cond_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x62 -> :sswitch_5
        0x63 -> :sswitch_4
        0x69 -> :sswitch_3
        0x75 -> :sswitch_2
        0x76 -> :sswitch_1
        0x3291ee -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static applyStyleToText(Lccsanandroid/text/SpannableStringBuilder;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;II)V
    .locals 3

    .line 401
    if-nez p1, :cond_0

    .line 402
    return-void

    .line 404
    :cond_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;->getStyle()I

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0x21

    if-eq v0, v1, :cond_1

    .line 405
    new-instance v0, Lccsanandroid/text/style/StyleSpan;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;->getStyle()I

    move-result v1

    invoke-direct {v0, v1}, Lccsanandroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v0, p2, p3, v2}, Lccsanandroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 408
    :cond_1
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;->isLinethrough()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 409
    new-instance v0, Lccsanandroid/text/style/StrikethroughSpan;

    invoke-direct {v0}, Lccsanandroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {p0, v0, p2, p3, v2}, Lccsanandroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 411
    :cond_2
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;->isUnderline()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 412
    new-instance v0, Lccsanandroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Lccsanandroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, v0, p2, p3, v2}, Lccsanandroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 414
    :cond_3
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;->hasFontColor()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 415
    new-instance v0, Lccsanandroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;->getFontColor()I

    move-result v1

    invoke-direct {v0, v1}, Lccsanandroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v0, p2, p3, v2}, Lccsanandroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 418
    :cond_4
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;->hasBackgroundColor()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 419
    new-instance v0, Lccsanandroid/text/style/BackgroundColorSpan;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;->getBackgroundColor()I

    move-result v1

    invoke-direct {v0, v1}, Lccsanandroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v0, p2, p3, v2}, Lccsanandroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 422
    :cond_5
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;->getFontFamily()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 423
    new-instance v0, Lccsanandroid/text/style/TypefaceSpan;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;->getFontFamily()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3, v2}, Lccsanandroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 426
    :cond_6
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;->getTextAlign()Lccsanandroid/text/Layout$Alignment;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 427
    new-instance v0, Lccsanandroid/text/style/AlignmentSpan$Standard;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;->getTextAlign()Lccsanandroid/text/Layout$Alignment;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/text/style/AlignmentSpan$Standard;-><init>(Lccsanandroid/text/Layout$Alignment;)V

    invoke-virtual {p0, v0, p2, p3, v2}, Lccsanandroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 430
    :cond_7
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;->getFontSizeUnit()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 440
    :pswitch_0
    new-instance v0, Lccsanandroid/text/style/RelativeSizeSpan;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;->getFontSize()F

    move-result p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    invoke-direct {v0, p1}, Lccsanandroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0, v0, p2, p3, v2}, Lccsanandroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 442
    goto :goto_0

    .line 436
    :pswitch_1
    new-instance v0, Lccsanandroid/text/style/RelativeSizeSpan;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;->getFontSize()F

    move-result p1

    invoke-direct {v0, p1}, Lccsanandroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0, v0, p2, p3, v2}, Lccsanandroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 438
    goto :goto_0

    .line 432
    :pswitch_2
    new-instance v0, Lccsanandroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;->getFontSize()F

    move-result p1

    float-to-int p1, p1

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lccsanandroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {p0, v0, p2, p3, v2}, Lccsanandroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 434
    nop

    .line 447
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static findEndOfTag(Ljava/lang/String;I)I
    .locals 1

    .line 329
    const/16 v0, 0x3e

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    .line 330
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p1, 0x1

    :goto_0
    return p0
.end method

.method private static getApplicableStyles(Ljava/util/List;Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser$StartTag;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;",
            ">;",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser$StartTag;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;",
            ">;)V"
        }
    .end annotation

    .line 465
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 466
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 467
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;

    .line 468
    iget-object v3, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    iget-object v4, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->classes:[Ljava/lang/String;

    iget-object v5, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->voice:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v4, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;->getSpecificityScore(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 469
    if-lez v3, :cond_0

    .line 470
    new-instance v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;

    invoke-direct {v4, v3, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser$StyleMatch;-><init>(ILccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;)V

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 473
    :cond_1
    invoke-static {p3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 474
    return-void
.end method

.method private static getTagName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 456
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 457
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    const/4 p0, 0x0

    return-object p0

    .line 460
    :cond_0
    const-string v0, "[ \\.]"

    invoke-static {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method private static isSupportedTag(Ljava/lang/String;)Z
    .locals 3

    .line 354
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "lang"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "v"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_2
    const-string v0, "u"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v0, "i"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_4
    const-string v0, "c"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_5
    const-string v0, "b"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    .line 363
    return v1

    .line 361
    :pswitch_0
    return v2

    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_5
        0x63 -> :sswitch_4
        0x69 -> :sswitch_3
        0x75 -> :sswitch_2
        0x76 -> :sswitch_1
        0x3291ee -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static parseCue(Ljava/lang/String;Ljava/util/regex/Matcher;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue$Builder;Ljava/lang/StringBuilder;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Matcher;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue$Builder;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;",
            ">;)Z"
        }
    .end annotation

    .line 231
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttParserUtil;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue$Builder;->setStartTime(J)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue$Builder;

    move-result-object v2

    const/4 v3, 0x2

    .line 232
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttParserUtil;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue$Builder;->setEndTime(J)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue$Builder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    nop

    .line 238
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser;->parseCueSettingsList(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue$Builder;)V

    .line 241
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 243
    :goto_0
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 244
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 245
    const-string v0, "\n"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 249
    :cond_1
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3, p5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser;->parseCueText(Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue$Builder;Ljava/util/List;)V

    .line 250
    return v1

    .line 233
    :catch_0
    move-exception p0

    .line 234
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Skipping cue with bad header: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WebvttCueParser"

    invoke-static {p1, p0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return v0
.end method

.method static parseCueSettingsList(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue$Builder;)V
    .locals 5

    .line 128
    const-string v0, "WebvttCueParser"

    sget-object v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser;->CUE_SETTING_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 129
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 130
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 131
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 133
    :try_start_0
    const-string v3, "line"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    invoke-static {v2, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser;->parseLineAttribute(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue$Builder;)V

    goto :goto_1

    .line 135
    :cond_0
    const-string v3, "align"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    invoke-static {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser;->parseTextAlignment(Ljava/lang/String;)Lccsanandroid/text/Layout$Alignment;

    move-result-object v1

    invoke-virtual {p1, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue$Builder;->setTextAlignment(Lccsanandroid/text/Layout$Alignment;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue$Builder;

    goto :goto_1

    .line 137
    :cond_1
    const-string v3, "position"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 138
    invoke-static {v2, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser;->parsePositionAttribute(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue$Builder;)V

    goto :goto_1

    .line 139
    :cond_2
    const-string v3, "size"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 140
    invoke-static {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttParserUtil;->parsePercentage(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p1, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue$Builder;->setWidth(F)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue$Builder;

    goto :goto_1

    .line 142
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown cue setting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_1
    goto :goto_2

    .line 144
    :catch_0
    move-exception v1

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping bad cue setting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_2
    goto :goto_0

    .line 148
    :cond_4
    return-void
.end method

.method static parseCueText(Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue$Builder;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue$Builder;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;",
            ">;)V"
        }
    .end annotation

    .line 160
    new-instance v0, Lccsanandroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Lccsanandroid/text/SpannableStringBuilder;-><init>()V

    .line 161
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 162
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 163
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 164
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_f

    .line 165
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 166
    sparse-switch v5, :sswitch_data_0

    .line 213
    invoke-virtual {v0, v5}, Lccsanandroid/text/SpannableStringBuilder;->append(C)Lccsanandroid/text/SpannableStringBuilder;

    .line 214
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_8

    .line 168
    :sswitch_0
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 169
    nop

    .line 170
    move v4, v5

    goto/16 :goto_8

    .line 172
    :cond_0
    nop

    .line 173
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2f

    const/4 v8, 0x1

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 174
    :goto_1
    invoke-static {p1, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser;->findEndOfTag(Ljava/lang/String;I)I

    move-result v5

    .line 175
    add-int/lit8 v9, v5, -0x2

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v7, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    .line 176
    :goto_2
    if-eqz v6, :cond_3

    const/4 v8, 0x2

    :cond_3
    add-int/2addr v4, v8

    .line 177
    if-eqz v7, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v9, v5, -0x1

    .line 176
    :goto_3
    invoke-virtual {p1, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 178
    invoke-static {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser;->getTagName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 179
    if-eqz v8, :cond_a

    invoke-static {v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser;->isSupportedTag(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 180
    goto :goto_6

    .line 182
    :cond_5
    if-eqz v6, :cond_8

    .line 185
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 186
    goto :goto_4

    .line 188
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser$StartTag;

    .line 189
    invoke-static {p0, v4, v0, p3, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser;->applySpansForTag(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser$StartTag;Lccsanandroid/text/SpannableStringBuilder;Ljava/util/List;Ljava/util/List;)V

    .line 190
    iget-object v4, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_4

    .line 191
    :cond_8
    if-nez v7, :cond_9

    .line 192
    invoke-virtual {v0}, Lccsanandroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-static {v4, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->buildStartTag(Ljava/lang/String;I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser$StartTag;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_5

    .line 191
    :cond_9
    :goto_4
    nop

    .line 217
    :goto_5
    move v4, v5

    goto :goto_8

    .line 164
    :cond_a
    :goto_6
    move v4, v5

    goto/16 :goto_0

    .line 196
    :sswitch_1
    const/16 v6, 0x3b

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 197
    const/16 v7, 0x20

    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 198
    const/4 v8, -0x1

    if-ne v6, v8, :cond_b

    move v6, v7

    goto :goto_7

    .line 199
    :cond_b
    if-ne v7, v8, :cond_c

    goto :goto_7

    .line 200
    :cond_c
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 201
    :goto_7
    if-eq v6, v8, :cond_e

    .line 202
    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser;->applyEntity(Ljava/lang/String;Lccsanandroid/text/SpannableStringBuilder;)V

    .line 203
    if-ne v6, v7, :cond_d

    .line 204
    const-string v4, " "

    invoke-virtual {v0, v4}, Lccsanandroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lccsanandroid/text/SpannableStringBuilder;

    .line 206
    :cond_d
    add-int/lit8 v6, v6, 0x1

    move v4, v6

    goto :goto_8

    .line 208
    :cond_e
    invoke-virtual {v0, v5}, Lccsanandroid/text/SpannableStringBuilder;->append(C)Lccsanandroid/text/SpannableStringBuilder;

    .line 209
    nop

    .line 211
    nop

    .line 217
    :goto_8
    goto/16 :goto_0

    .line 219
    :cond_f
    :goto_9
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_10

    .line 220
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser$StartTag;

    invoke-static {p0, p1, v0, p3, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser;->applySpansForTag(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser$StartTag;Lccsanandroid/text/SpannableStringBuilder;Ljava/util/List;Ljava/util/List;)V

    goto :goto_9

    .line 222
    :cond_10
    invoke-static {}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser$StartTag;->buildWholeCueVirtualTag()Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser$StartTag;

    move-result-object p1

    invoke-static {p0, p1, v0, p3, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser;->applySpansForTag(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser$StartTag;Lccsanandroid/text/SpannableStringBuilder;Ljava/util/List;Ljava/util/List;)V

    .line 224
    invoke-virtual {p2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue$Builder;->setText(Lccsanandroid/text/SpannableStringBuilder;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue$Builder;

    .line 225
    return-void

    :sswitch_data_0
    .sparse-switch
        0x26 -> :sswitch_1
        0x3c -> :sswitch_0
    .end sparse-switch
.end method

.method private static parseLineAttribute(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue$Builder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 257
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 258
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 259
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser;->parsePositionAnchor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue$Builder;->setLineAnchor(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue$Builder;

    .line 260
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 262
    :cond_0
    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue$Builder;->setLineAnchor(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue$Builder;

    .line 264
    :goto_0
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttParserUtil;->parsePercentage(Ljava/lang/String;)F

    move-result p0

    invoke-virtual {p1, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue$Builder;->setLine(F)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue$Builder;->setLineType(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue$Builder;

    goto :goto_1

    .line 267
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 268
    if-gez p0, :cond_2

    .line 271
    add-int/lit8 p0, p0, -0x1

    .line 273
    :cond_2
    int-to-float p0, p0

    invoke-virtual {p1, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue$Builder;->setLine(F)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue$Builder;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue$Builder;->setLineType(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue$Builder;

    .line 275
    :goto_1
    return-void
.end method

.method private static parsePositionAnchor(Ljava/lang/String;)I
    .locals 4

    .line 290
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "middle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "center"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid anchor value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WebvttCueParser"

    invoke-static {v0, p0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/high16 p0, -0x80000000

    return p0

    .line 297
    :pswitch_0
    return v1

    .line 295
    :pswitch_1
    return v2

    .line 292
    :pswitch_2
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_3
        -0x4009266b -> :sswitch_2
        0x188db -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parsePositionAttribute(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 279
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 280
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 281
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser;->parsePositionAnchor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue$Builder;->setPositionAnchor(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue$Builder;

    .line 282
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 284
    :cond_0
    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue$Builder;->setPositionAnchor(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue$Builder;

    .line 286
    :goto_0
    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttParserUtil;->parsePercentage(Ljava/lang/String;)F

    move-result p0

    invoke-virtual {p1, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue$Builder;->setPosition(F)Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue$Builder;

    .line 287
    return-void
.end method

.method private static parseTextAlignment(Ljava/lang/String;)Lccsanandroid/text/Layout$Alignment;
    .locals 2

    .line 305
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "right"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_2
    const-string v0, "left"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_4
    const-string v0, "middle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_5
    const-string v0, "center"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid alignment value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WebvttCueParser"

    invoke-static {v0, p0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/4 p0, 0x0

    return-object p0

    .line 314
    :pswitch_0
    sget-object p0, Lccsanandroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Lccsanandroid/text/Layout$Alignment;

    return-object p0

    .line 311
    :pswitch_1
    sget-object p0, Lccsanandroid/text/Layout$Alignment;->ALIGN_CENTER:Lccsanandroid/text/Layout$Alignment;

    return-object p0

    .line 308
    :pswitch_2
    sget-object p0, Lccsanandroid/text/Layout$Alignment;->ALIGN_NORMAL:Lccsanandroid/text/Layout$Alignment;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_5
        -0x4009266b -> :sswitch_4
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final parseCue(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue$Builder;Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue$Builder;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCssStyle;",
            ">;)Z"
        }
    .end annotation

    .line 96
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 97
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 98
    return v1

    .line 100
    :cond_0
    sget-object v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser;->CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 101
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 103
    const/4 v3, 0x0

    iget-object v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser;->textBuilder:Ljava/lang/StringBuilder;

    move-object v5, p1

    move-object v6, p2

    move-object v8, p3

    invoke-static/range {v3 .. v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser;->parseCue(Ljava/lang/String;Ljava/util/regex/Matcher;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue$Builder;Ljava/lang/StringBuilder;Ljava/util/List;)Z

    move-result p1

    return p1

    .line 106
    :cond_1
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 107
    if-nez v3, :cond_2

    .line 108
    return v1

    .line 110
    :cond_2
    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 111
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 113
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v8, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser;->textBuilder:Ljava/lang/StringBuilder;

    move-object v6, p1

    move-object v7, p2

    move-object v9, p3

    invoke-static/range {v4 .. v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCueParser;->parseCue(Ljava/lang/String;Ljava/util/regex/Matcher;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/webvtt/WebvttCue$Builder;Ljava/lang/StringBuilder;Ljava/util/List;)Z

    move-result p1

    return p1

    .line 116
    :cond_3
    return v1
.end method
