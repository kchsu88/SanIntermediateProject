.class public final Lccsancom/google/common/net/MediaType;
.super Ljava/lang/Object;
.source "MediaType.java"


# annotations
.annotation runtime Lccsancom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/net/MediaType$Tokenizer;
    }
.end annotation


# static fields
.field public static final AAC_AUDIO:Lccsancom/google/common/net/MediaType;

.field public static final ANY_APPLICATION_TYPE:Lccsancom/google/common/net/MediaType;

.field public static final ANY_AUDIO_TYPE:Lccsancom/google/common/net/MediaType;

.field public static final ANY_IMAGE_TYPE:Lccsancom/google/common/net/MediaType;

.field public static final ANY_TEXT_TYPE:Lccsancom/google/common/net/MediaType;

.field public static final ANY_TYPE:Lccsancom/google/common/net/MediaType;

.field public static final ANY_VIDEO_TYPE:Lccsancom/google/common/net/MediaType;

.field public static final APPLE_MOBILE_CONFIG:Lccsancom/google/common/net/MediaType;

.field public static final APPLE_PASSBOOK:Lccsancom/google/common/net/MediaType;

.field public static final APPLICATION_BINARY:Lccsancom/google/common/net/MediaType;

.field private static final APPLICATION_TYPE:Ljava/lang/String; = "application"

.field public static final APPLICATION_XML_UTF_8:Lccsancom/google/common/net/MediaType;

.field public static final ATOM_UTF_8:Lccsancom/google/common/net/MediaType;

.field private static final AUDIO_TYPE:Ljava/lang/String; = "audio"

.field public static final BASIC_AUDIO:Lccsancom/google/common/net/MediaType;

.field public static final BMP:Lccsancom/google/common/net/MediaType;

.field public static final BZIP2:Lccsancom/google/common/net/MediaType;

.field public static final CACHE_MANIFEST_UTF_8:Lccsancom/google/common/net/MediaType;

.field private static final CHARSET_ATTRIBUTE:Ljava/lang/String; = "charset"

.field public static final CRW:Lccsancom/google/common/net/MediaType;

.field public static final CSS_UTF_8:Lccsancom/google/common/net/MediaType;

.field public static final CSV_UTF_8:Lccsancom/google/common/net/MediaType;

.field public static final DART_UTF_8:Lccsancom/google/common/net/MediaType;

.field public static final EOT:Lccsancom/google/common/net/MediaType;

.field public static final EPUB:Lccsancom/google/common/net/MediaType;

.field public static final FLV_VIDEO:Lccsancom/google/common/net/MediaType;

.field public static final FORM_DATA:Lccsancom/google/common/net/MediaType;

.field public static final GIF:Lccsancom/google/common/net/MediaType;

.field public static final GZIP:Lccsancom/google/common/net/MediaType;

.field public static final HAL_JSON:Lccsancom/google/common/net/MediaType;

.field public static final HTML_UTF_8:Lccsancom/google/common/net/MediaType;

.field public static final ICO:Lccsancom/google/common/net/MediaType;

.field private static final IMAGE_TYPE:Ljava/lang/String; = "image"

.field public static final I_CALENDAR_UTF_8:Lccsancom/google/common/net/MediaType;

.field public static final JAVASCRIPT_UTF_8:Lccsancom/google/common/net/MediaType;

.field public static final JOSE:Lccsancom/google/common/net/MediaType;

.field public static final JOSE_JSON:Lccsancom/google/common/net/MediaType;

.field public static final JPEG:Lccsancom/google/common/net/MediaType;

.field public static final JSON_UTF_8:Lccsancom/google/common/net/MediaType;

.field public static final KEY_ARCHIVE:Lccsancom/google/common/net/MediaType;

.field public static final KML:Lccsancom/google/common/net/MediaType;

.field public static final KMZ:Lccsancom/google/common/net/MediaType;

.field private static final KNOWN_TYPES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lccsancom/google/common/net/MediaType;",
            "Lccsancom/google/common/net/MediaType;",
            ">;"
        }
    .end annotation
.end field

.field public static final L16_AUDIO:Lccsancom/google/common/net/MediaType;

.field public static final L24_AUDIO:Lccsancom/google/common/net/MediaType;

.field private static final LINEAR_WHITE_SPACE:Lccsancom/google/common/base/CharMatcher;

.field public static final MANIFEST_JSON_UTF_8:Lccsancom/google/common/net/MediaType;

.field public static final MBOX:Lccsancom/google/common/net/MediaType;

.field public static final MICROSOFT_EXCEL:Lccsancom/google/common/net/MediaType;

.field public static final MICROSOFT_OUTLOOK:Lccsancom/google/common/net/MediaType;

.field public static final MICROSOFT_POWERPOINT:Lccsancom/google/common/net/MediaType;

.field public static final MICROSOFT_WORD:Lccsancom/google/common/net/MediaType;

.field public static final MP4_AUDIO:Lccsancom/google/common/net/MediaType;

.field public static final MP4_VIDEO:Lccsancom/google/common/net/MediaType;

.field public static final MPEG_AUDIO:Lccsancom/google/common/net/MediaType;

.field public static final MPEG_VIDEO:Lccsancom/google/common/net/MediaType;

.field public static final NACL_APPLICATION:Lccsancom/google/common/net/MediaType;

.field public static final NACL_PORTABLE_APPLICATION:Lccsancom/google/common/net/MediaType;

.field public static final OCTET_STREAM:Lccsancom/google/common/net/MediaType;

.field public static final OGG_AUDIO:Lccsancom/google/common/net/MediaType;

.field public static final OGG_CONTAINER:Lccsancom/google/common/net/MediaType;

.field public static final OGG_VIDEO:Lccsancom/google/common/net/MediaType;

.field public static final OOXML_DOCUMENT:Lccsancom/google/common/net/MediaType;

.field public static final OOXML_PRESENTATION:Lccsancom/google/common/net/MediaType;

.field public static final OOXML_SHEET:Lccsancom/google/common/net/MediaType;

.field public static final OPENDOCUMENT_GRAPHICS:Lccsancom/google/common/net/MediaType;

.field public static final OPENDOCUMENT_PRESENTATION:Lccsancom/google/common/net/MediaType;

.field public static final OPENDOCUMENT_SPREADSHEET:Lccsancom/google/common/net/MediaType;

.field public static final OPENDOCUMENT_TEXT:Lccsancom/google/common/net/MediaType;

.field private static final PARAMETER_JOINER:Lccsancom/google/common/base/Joiner$MapJoiner;

.field public static final PDF:Lccsancom/google/common/net/MediaType;

.field public static final PLAIN_TEXT_UTF_8:Lccsancom/google/common/net/MediaType;

.field public static final PNG:Lccsancom/google/common/net/MediaType;

.field public static final POSTSCRIPT:Lccsancom/google/common/net/MediaType;

.field public static final PROTOBUF:Lccsancom/google/common/net/MediaType;

.field public static final PSD:Lccsancom/google/common/net/MediaType;

.field public static final QUICKTIME:Lccsancom/google/common/net/MediaType;

.field private static final QUOTED_TEXT_MATCHER:Lccsancom/google/common/base/CharMatcher;

.field public static final RDF_XML_UTF_8:Lccsancom/google/common/net/MediaType;

.field public static final RTF_UTF_8:Lccsancom/google/common/net/MediaType;

.field public static final SFNT:Lccsancom/google/common/net/MediaType;

.field public static final SHOCKWAVE_FLASH:Lccsancom/google/common/net/MediaType;

.field public static final SKETCHUP:Lccsancom/google/common/net/MediaType;

.field public static final SOAP_XML_UTF_8:Lccsancom/google/common/net/MediaType;

.field public static final SVG_UTF_8:Lccsancom/google/common/net/MediaType;

.field public static final TAR:Lccsancom/google/common/net/MediaType;

.field public static final TEXT_JAVASCRIPT_UTF_8:Lccsancom/google/common/net/MediaType;

.field private static final TEXT_TYPE:Ljava/lang/String; = "text"

.field public static final THREE_GPP2_VIDEO:Lccsancom/google/common/net/MediaType;

.field public static final THREE_GPP_VIDEO:Lccsancom/google/common/net/MediaType;

.field public static final TIFF:Lccsancom/google/common/net/MediaType;

.field private static final TOKEN_MATCHER:Lccsancom/google/common/base/CharMatcher;

.field public static final TSV_UTF_8:Lccsancom/google/common/net/MediaType;

.field private static final UTF_8_CONSTANT_PARAMETERS:Lccsancom/google/common/collect/ImmutableListMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableListMultimap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final VCARD_UTF_8:Lccsancom/google/common/net/MediaType;

.field private static final VIDEO_TYPE:Ljava/lang/String; = "video"

.field public static final VND_REAL_AUDIO:Lccsancom/google/common/net/MediaType;

.field public static final VND_WAVE_AUDIO:Lccsancom/google/common/net/MediaType;

.field public static final VORBIS_AUDIO:Lccsancom/google/common/net/MediaType;

.field public static final VTT_UTF_8:Lccsancom/google/common/net/MediaType;

.field public static final WASM_APPLICATION:Lccsancom/google/common/net/MediaType;

.field public static final WAX_AUDIO:Lccsancom/google/common/net/MediaType;

.field public static final WEBM_AUDIO:Lccsancom/google/common/net/MediaType;

.field public static final WEBM_VIDEO:Lccsancom/google/common/net/MediaType;

.field public static final WEBP:Lccsancom/google/common/net/MediaType;

.field private static final WILDCARD:Ljava/lang/String; = "*"

.field public static final WMA_AUDIO:Lccsancom/google/common/net/MediaType;

.field public static final WML_UTF_8:Lccsancom/google/common/net/MediaType;

.field public static final WMV:Lccsancom/google/common/net/MediaType;

.field public static final WOFF:Lccsancom/google/common/net/MediaType;

.field public static final WOFF2:Lccsancom/google/common/net/MediaType;

.field public static final XHTML_UTF_8:Lccsancom/google/common/net/MediaType;

.field public static final XML_UTF_8:Lccsancom/google/common/net/MediaType;

.field public static final XRD_UTF_8:Lccsancom/google/common/net/MediaType;

.field public static final ZIP:Lccsancom/google/common/net/MediaType;


# instance fields
.field private hashCode:I
    .annotation runtime Lccsancom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation
.end field

.field private final parameters:Lccsancom/google/common/collect/ImmutableListMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableListMultimap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private parsedCharset:Lccsancom/google/common/base/Optional;
    .annotation runtime Lccsancom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/base/Optional<",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field

.field private final subtype:Ljava/lang/String;

.field private toString:Ljava/lang/String;
    .annotation runtime Lccsancom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation
.end field

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 80
    sget-object v0, Lccsancom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 81
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "charset"

    invoke-static {v1, v0}, Lccsancom/google/common/collect/ImmutableListMultimap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->UTF_8_CONSTANT_PARAMETERS:Lccsancom/google/common/collect/ImmutableListMultimap;

    .line 85
    invoke-static {}, Lccsancom/google/common/base/CharMatcher;->ascii()Lccsancom/google/common/base/CharMatcher;

    move-result-object v0

    .line 86
    invoke-static {}, Lccsancom/google/common/base/CharMatcher;->javaIsoControl()Lccsancom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/google/common/base/CharMatcher;->negate()Lccsancom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/base/CharMatcher;->and(Lccsancom/google/common/base/CharMatcher;)Lccsancom/google/common/base/CharMatcher;

    move-result-object v0

    .line 87
    const/16 v1, 0x20

    invoke-static {v1}, Lccsancom/google/common/base/CharMatcher;->isNot(C)Lccsancom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/base/CharMatcher;->and(Lccsancom/google/common/base/CharMatcher;)Lccsancom/google/common/base/CharMatcher;

    move-result-object v0

    .line 88
    const-string v1, "()<>@,;:\\\"/[]?="

    invoke-static {v1}, Lccsancom/google/common/base/CharMatcher;->noneOf(Ljava/lang/CharSequence;)Lccsancom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/base/CharMatcher;->and(Lccsancom/google/common/base/CharMatcher;)Lccsancom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->TOKEN_MATCHER:Lccsancom/google/common/base/CharMatcher;

    .line 90
    invoke-static {}, Lccsancom/google/common/base/CharMatcher;->ascii()Lccsancom/google/common/base/CharMatcher;

    move-result-object v0

    const-string v1, "\"\\\r"

    invoke-static {v1}, Lccsancom/google/common/base/CharMatcher;->noneOf(Ljava/lang/CharSequence;)Lccsancom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/base/CharMatcher;->and(Lccsancom/google/common/base/CharMatcher;)Lccsancom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->QUOTED_TEXT_MATCHER:Lccsancom/google/common/base/CharMatcher;

    .line 96
    const-string v0, " \t\r\n"

    invoke-static {v0}, Lccsancom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lccsancom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->LINEAR_WHITE_SPACE:Lccsancom/google/common/base/CharMatcher;

    .line 107
    invoke-static {}, Lccsancom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->KNOWN_TYPES:Ljava/util/Map;

    .line 137
    const-string v0, "*"

    invoke-static {v0, v0}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v1

    sput-object v1, Lccsancom/google/common/net/MediaType;->ANY_TYPE:Lccsancom/google/common/net/MediaType;

    .line 138
    const-string v1, "text"

    invoke-static {v1, v0}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v2

    sput-object v2, Lccsancom/google/common/net/MediaType;->ANY_TEXT_TYPE:Lccsancom/google/common/net/MediaType;

    .line 139
    const-string v2, "image"

    invoke-static {v2, v0}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v3

    sput-object v3, Lccsancom/google/common/net/MediaType;->ANY_IMAGE_TYPE:Lccsancom/google/common/net/MediaType;

    .line 140
    const-string v3, "audio"

    invoke-static {v3, v0}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v4

    sput-object v4, Lccsancom/google/common/net/MediaType;->ANY_AUDIO_TYPE:Lccsancom/google/common/net/MediaType;

    .line 141
    const-string v4, "video"

    invoke-static {v4, v0}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v5

    sput-object v5, Lccsancom/google/common/net/MediaType;->ANY_VIDEO_TYPE:Lccsancom/google/common/net/MediaType;

    .line 142
    const-string v5, "application"

    invoke-static {v5, v0}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->ANY_APPLICATION_TYPE:Lccsancom/google/common/net/MediaType;

    .line 145
    nop

    .line 146
    const-string v0, "cache-manifest"

    invoke-static {v1, v0}, Lccsancom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->CACHE_MANIFEST_UTF_8:Lccsancom/google/common/net/MediaType;

    .line 147
    const-string v0, "css"

    invoke-static {v1, v0}, Lccsancom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->CSS_UTF_8:Lccsancom/google/common/net/MediaType;

    .line 148
    const-string v0, "csv"

    invoke-static {v1, v0}, Lccsancom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->CSV_UTF_8:Lccsancom/google/common/net/MediaType;

    .line 149
    const-string v0, "html"

    invoke-static {v1, v0}, Lccsancom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->HTML_UTF_8:Lccsancom/google/common/net/MediaType;

    .line 150
    const-string v0, "calendar"

    invoke-static {v1, v0}, Lccsancom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->I_CALENDAR_UTF_8:Lccsancom/google/common/net/MediaType;

    .line 151
    const-string v0, "plain"

    invoke-static {v1, v0}, Lccsancom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->PLAIN_TEXT_UTF_8:Lccsancom/google/common/net/MediaType;

    .line 158
    const-string v0, "javascript"

    invoke-static {v1, v0}, Lccsancom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v6

    sput-object v6, Lccsancom/google/common/net/MediaType;->TEXT_JAVASCRIPT_UTF_8:Lccsancom/google/common/net/MediaType;

    .line 165
    const-string v6, "tab-separated-values"

    invoke-static {v1, v6}, Lccsancom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v6

    sput-object v6, Lccsancom/google/common/net/MediaType;->TSV_UTF_8:Lccsancom/google/common/net/MediaType;

    .line 167
    const-string v6, "vcard"

    invoke-static {v1, v6}, Lccsancom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v6

    sput-object v6, Lccsancom/google/common/net/MediaType;->VCARD_UTF_8:Lccsancom/google/common/net/MediaType;

    .line 175
    const-string v6, "vnd.wap.wml"

    invoke-static {v1, v6}, Lccsancom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v6

    sput-object v6, Lccsancom/google/common/net/MediaType;->WML_UTF_8:Lccsancom/google/common/net/MediaType;

    .line 182
    const-string v6, "xml"

    invoke-static {v1, v6}, Lccsancom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v7

    sput-object v7, Lccsancom/google/common/net/MediaType;->XML_UTF_8:Lccsancom/google/common/net/MediaType;

    .line 190
    const-string v7, "vtt"

    invoke-static {v1, v7}, Lccsancom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v1

    sput-object v1, Lccsancom/google/common/net/MediaType;->VTT_UTF_8:Lccsancom/google/common/net/MediaType;

    .line 198
    const-string v1, "bmp"

    invoke-static {v2, v1}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v1

    sput-object v1, Lccsancom/google/common/net/MediaType;->BMP:Lccsancom/google/common/net/MediaType;

    .line 209
    const-string v1, "x-canon-crw"

    invoke-static {v2, v1}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v1

    sput-object v1, Lccsancom/google/common/net/MediaType;->CRW:Lccsancom/google/common/net/MediaType;

    .line 211
    const-string v1, "gif"

    invoke-static {v2, v1}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v1

    sput-object v1, Lccsancom/google/common/net/MediaType;->GIF:Lccsancom/google/common/net/MediaType;

    .line 212
    const-string v1, "vnd.microsoft.icon"

    invoke-static {v2, v1}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v1

    sput-object v1, Lccsancom/google/common/net/MediaType;->ICO:Lccsancom/google/common/net/MediaType;

    .line 213
    const-string v1, "jpeg"

    invoke-static {v2, v1}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v1

    sput-object v1, Lccsancom/google/common/net/MediaType;->JPEG:Lccsancom/google/common/net/MediaType;

    .line 214
    const-string v1, "png"

    invoke-static {v2, v1}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v1

    sput-object v1, Lccsancom/google/common/net/MediaType;->PNG:Lccsancom/google/common/net/MediaType;

    .line 233
    const-string v1, "vnd.adobe.photoshop"

    invoke-static {v2, v1}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v1

    sput-object v1, Lccsancom/google/common/net/MediaType;->PSD:Lccsancom/google/common/net/MediaType;

    .line 235
    const-string v1, "svg+xml"

    invoke-static {v2, v1}, Lccsancom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v1

    sput-object v1, Lccsancom/google/common/net/MediaType;->SVG_UTF_8:Lccsancom/google/common/net/MediaType;

    .line 236
    const-string v1, "tiff"

    invoke-static {v2, v1}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v1

    sput-object v1, Lccsancom/google/common/net/MediaType;->TIFF:Lccsancom/google/common/net/MediaType;

    .line 243
    const-string v1, "webp"

    invoke-static {v2, v1}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v1

    sput-object v1, Lccsancom/google/common/net/MediaType;->WEBP:Lccsancom/google/common/net/MediaType;

    .line 246
    const-string v1, "mp4"

    invoke-static {v3, v1}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v2

    sput-object v2, Lccsancom/google/common/net/MediaType;->MP4_AUDIO:Lccsancom/google/common/net/MediaType;

    .line 247
    const-string v2, "mpeg"

    invoke-static {v3, v2}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v7

    sput-object v7, Lccsancom/google/common/net/MediaType;->MPEG_AUDIO:Lccsancom/google/common/net/MediaType;

    .line 248
    const-string v7, "ogg"

    invoke-static {v3, v7}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v8

    sput-object v8, Lccsancom/google/common/net/MediaType;->OGG_AUDIO:Lccsancom/google/common/net/MediaType;

    .line 249
    const-string v8, "webm"

    invoke-static {v3, v8}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v9

    sput-object v9, Lccsancom/google/common/net/MediaType;->WEBM_AUDIO:Lccsancom/google/common/net/MediaType;

    .line 256
    const-string v9, "l16"

    invoke-static {v3, v9}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v9

    sput-object v9, Lccsancom/google/common/net/MediaType;->L16_AUDIO:Lccsancom/google/common/net/MediaType;

    .line 263
    const-string v9, "l24"

    invoke-static {v3, v9}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v9

    sput-object v9, Lccsancom/google/common/net/MediaType;->L24_AUDIO:Lccsancom/google/common/net/MediaType;

    .line 271
    const-string v9, "basic"

    invoke-static {v3, v9}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v9

    sput-object v9, Lccsancom/google/common/net/MediaType;->BASIC_AUDIO:Lccsancom/google/common/net/MediaType;

    .line 279
    const-string v9, "aac"

    invoke-static {v3, v9}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v9

    sput-object v9, Lccsancom/google/common/net/MediaType;->AAC_AUDIO:Lccsancom/google/common/net/MediaType;

    .line 286
    const-string v9, "vorbis"

    invoke-static {v3, v9}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v9

    sput-object v9, Lccsancom/google/common/net/MediaType;->VORBIS_AUDIO:Lccsancom/google/common/net/MediaType;

    .line 295
    const-string v9, "x-ms-wma"

    invoke-static {v3, v9}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v9

    sput-object v9, Lccsancom/google/common/net/MediaType;->WMA_AUDIO:Lccsancom/google/common/net/MediaType;

    .line 304
    const-string v9, "x-ms-wax"

    invoke-static {v3, v9}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v9

    sput-object v9, Lccsancom/google/common/net/MediaType;->WAX_AUDIO:Lccsancom/google/common/net/MediaType;

    .line 312
    const-string v9, "vnd.rn-realaudio"

    invoke-static {v3, v9}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v9

    sput-object v9, Lccsancom/google/common/net/MediaType;->VND_REAL_AUDIO:Lccsancom/google/common/net/MediaType;

    .line 319
    const-string v9, "vnd.wave"

    invoke-static {v3, v9}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v3

    sput-object v3, Lccsancom/google/common/net/MediaType;->VND_WAVE_AUDIO:Lccsancom/google/common/net/MediaType;

    .line 322
    invoke-static {v4, v1}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v1

    sput-object v1, Lccsancom/google/common/net/MediaType;->MP4_VIDEO:Lccsancom/google/common/net/MediaType;

    .line 323
    invoke-static {v4, v2}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v1

    sput-object v1, Lccsancom/google/common/net/MediaType;->MPEG_VIDEO:Lccsancom/google/common/net/MediaType;

    .line 324
    invoke-static {v4, v7}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v1

    sput-object v1, Lccsancom/google/common/net/MediaType;->OGG_VIDEO:Lccsancom/google/common/net/MediaType;

    .line 325
    const-string v1, "quicktime"

    invoke-static {v4, v1}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v1

    sput-object v1, Lccsancom/google/common/net/MediaType;->QUICKTIME:Lccsancom/google/common/net/MediaType;

    .line 326
    invoke-static {v4, v8}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v1

    sput-object v1, Lccsancom/google/common/net/MediaType;->WEBM_VIDEO:Lccsancom/google/common/net/MediaType;

    .line 327
    const-string v1, "x-ms-wmv"

    invoke-static {v4, v1}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v1

    sput-object v1, Lccsancom/google/common/net/MediaType;->WMV:Lccsancom/google/common/net/MediaType;

    .line 336
    const-string v1, "x-flv"

    invoke-static {v4, v1}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v1

    sput-object v1, Lccsancom/google/common/net/MediaType;->FLV_VIDEO:Lccsancom/google/common/net/MediaType;

    .line 345
    const-string v1, "3gpp"

    invoke-static {v4, v1}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v1

    sput-object v1, Lccsancom/google/common/net/MediaType;->THREE_GPP_VIDEO:Lccsancom/google/common/net/MediaType;

    .line 354
    const-string v1, "3gpp2"

    invoke-static {v4, v1}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v1

    sput-object v1, Lccsancom/google/common/net/MediaType;->THREE_GPP2_VIDEO:Lccsancom/google/common/net/MediaType;

    .line 364
    invoke-static {v5, v6}, Lccsancom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v1

    sput-object v1, Lccsancom/google/common/net/MediaType;->APPLICATION_XML_UTF_8:Lccsancom/google/common/net/MediaType;

    .line 366
    const-string v1, "atom+xml"

    invoke-static {v5, v1}, Lccsancom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v1

    sput-object v1, Lccsancom/google/common/net/MediaType;->ATOM_UTF_8:Lccsancom/google/common/net/MediaType;

    .line 367
    const-string v1, "x-bzip2"

    invoke-static {v5, v1}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v1

    sput-object v1, Lccsancom/google/common/net/MediaType;->BZIP2:Lccsancom/google/common/net/MediaType;

    .line 375
    const-string v1, "dart"

    invoke-static {v5, v1}, Lccsancom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v1

    sput-object v1, Lccsancom/google/common/net/MediaType;->DART_UTF_8:Lccsancom/google/common/net/MediaType;

    .line 382
    nop

    .line 383
    const-string v1, "vnd.apple.pkpass"

    invoke-static {v5, v1}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v1

    sput-object v1, Lccsancom/google/common/net/MediaType;->APPLE_PASSBOOK:Lccsancom/google/common/net/MediaType;

    .line 392
    const-string v1, "vnd.ms-fontobject"

    invoke-static {v5, v1}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v1

    sput-object v1, Lccsancom/google/common/net/MediaType;->EOT:Lccsancom/google/common/net/MediaType;

    .line 403
    const-string v1, "epub+zip"

    invoke-static {v5, v1}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v1

    sput-object v1, Lccsancom/google/common/net/MediaType;->EPUB:Lccsancom/google/common/net/MediaType;

    .line 405
    nop

    .line 406
    const-string v1, "x-www-form-urlencoded"

    invoke-static {v5, v1}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v1

    sput-object v1, Lccsancom/google/common/net/MediaType;->FORM_DATA:Lccsancom/google/common/net/MediaType;

    .line 415
    const-string v1, "pkcs12"

    invoke-static {v5, v1}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v1

    sput-object v1, Lccsancom/google/common/net/MediaType;->KEY_ARCHIVE:Lccsancom/google/common/net/MediaType;

    .line 427
    const-string v1, "binary"

    invoke-static {v5, v1}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v1

    sput-object v1, Lccsancom/google/common/net/MediaType;->APPLICATION_BINARY:Lccsancom/google/common/net/MediaType;

    .line 429
    const-string v1, "x-gzip"

    invoke-static {v5, v1}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v1

    sput-object v1, Lccsancom/google/common/net/MediaType;->GZIP:Lccsancom/google/common/net/MediaType;

    .line 437
    const-string v1, "hal+json"

    invoke-static {v5, v1}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v1

    sput-object v1, Lccsancom/google/common/net/MediaType;->HAL_JSON:Lccsancom/google/common/net/MediaType;

    .line 444
    nop

    .line 445
    invoke-static {v5, v0}, Lccsancom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->JAVASCRIPT_UTF_8:Lccsancom/google/common/net/MediaType;

    .line 453
    const-string v0, "jose"

    invoke-static {v5, v0}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->JOSE:Lccsancom/google/common/net/MediaType;

    .line 461
    const-string v0, "jose+json"

    invoke-static {v5, v0}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->JOSE_JSON:Lccsancom/google/common/net/MediaType;

    .line 463
    const-string v0, "json"

    invoke-static {v5, v0}, Lccsancom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->JSON_UTF_8:Lccsancom/google/common/net/MediaType;

    .line 470
    nop

    .line 471
    const-string v0, "manifest+json"

    invoke-static {v5, v0}, Lccsancom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->MANIFEST_JSON_UTF_8:Lccsancom/google/common/net/MediaType;

    .line 476
    const-string v0, "vnd.google-earth.kml+xml"

    invoke-static {v5, v0}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->KML:Lccsancom/google/common/net/MediaType;

    .line 482
    const-string v0, "vnd.google-earth.kmz"

    invoke-static {v5, v0}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->KMZ:Lccsancom/google/common/net/MediaType;

    .line 489
    const-string v0, "mbox"

    invoke-static {v5, v0}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->MBOX:Lccsancom/google/common/net/MediaType;

    .line 496
    nop

    .line 497
    const-string v0, "x-apple-aspen-config"

    invoke-static {v5, v0}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->APPLE_MOBILE_CONFIG:Lccsancom/google/common/net/MediaType;

    .line 500
    const-string v0, "vnd.ms-excel"

    invoke-static {v5, v0}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->MICROSOFT_EXCEL:Lccsancom/google/common/net/MediaType;

    .line 507
    nop

    .line 508
    const-string v0, "vnd.ms-outlook"

    invoke-static {v5, v0}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->MICROSOFT_OUTLOOK:Lccsancom/google/common/net/MediaType;

    .line 511
    nop

    .line 512
    const-string v0, "vnd.ms-powerpoint"

    invoke-static {v5, v0}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->MICROSOFT_POWERPOINT:Lccsancom/google/common/net/MediaType;

    .line 515
    const-string v0, "msword"

    invoke-static {v5, v0}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->MICROSOFT_WORD:Lccsancom/google/common/net/MediaType;

    .line 523
    const-string v0, "wasm"

    invoke-static {v5, v0}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->WASM_APPLICATION:Lccsancom/google/common/net/MediaType;

    .line 532
    const-string v0, "x-nacl"

    invoke-static {v5, v0}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->NACL_APPLICATION:Lccsancom/google/common/net/MediaType;

    .line 541
    nop

    .line 542
    const-string v0, "x-pnacl"

    invoke-static {v5, v0}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->NACL_PORTABLE_APPLICATION:Lccsancom/google/common/net/MediaType;

    .line 544
    const-string v0, "octet-stream"

    invoke-static {v5, v0}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->OCTET_STREAM:Lccsancom/google/common/net/MediaType;

    .line 546
    invoke-static {v5, v7}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->OGG_CONTAINER:Lccsancom/google/common/net/MediaType;

    .line 547
    nop

    .line 548
    const-string v0, "vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-static {v5, v0}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->OOXML_DOCUMENT:Lccsancom/google/common/net/MediaType;

    .line 550
    nop

    .line 551
    const-string v0, "vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-static {v5, v0}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->OOXML_PRESENTATION:Lccsancom/google/common/net/MediaType;

    .line 553
    nop

    .line 554
    const-string v0, "vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-static {v5, v0}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->OOXML_SHEET:Lccsancom/google/common/net/MediaType;

    .line 555
    nop

    .line 556
    const-string v0, "vnd.oasis.opendocument.graphics"

    invoke-static {v5, v0}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->OPENDOCUMENT_GRAPHICS:Lccsancom/google/common/net/MediaType;

    .line 557
    nop

    .line 558
    const-string v0, "vnd.oasis.opendocument.presentation"

    invoke-static {v5, v0}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->OPENDOCUMENT_PRESENTATION:Lccsancom/google/common/net/MediaType;

    .line 559
    nop

    .line 560
    const-string v0, "vnd.oasis.opendocument.spreadsheet"

    invoke-static {v5, v0}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->OPENDOCUMENT_SPREADSHEET:Lccsancom/google/common/net/MediaType;

    .line 561
    nop

    .line 562
    const-string v0, "vnd.oasis.opendocument.text"

    invoke-static {v5, v0}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->OPENDOCUMENT_TEXT:Lccsancom/google/common/net/MediaType;

    .line 563
    const-string v0, "pdf"

    invoke-static {v5, v0}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->PDF:Lccsancom/google/common/net/MediaType;

    .line 564
    const-string v0, "postscript"

    invoke-static {v5, v0}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->POSTSCRIPT:Lccsancom/google/common/net/MediaType;

    .line 571
    const-string v0, "protobuf"

    invoke-static {v5, v0}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->PROTOBUF:Lccsancom/google/common/net/MediaType;

    .line 581
    const-string v0, "rdf+xml"

    invoke-static {v5, v0}, Lccsancom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->RDF_XML_UTF_8:Lccsancom/google/common/net/MediaType;

    .line 583
    const-string v0, "rtf"

    invoke-static {v5, v0}, Lccsancom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->RTF_UTF_8:Lccsancom/google/common/net/MediaType;

    .line 593
    const-string v0, "font-sfnt"

    invoke-static {v5, v0}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->SFNT:Lccsancom/google/common/net/MediaType;

    .line 595
    nop

    .line 596
    const-string v0, "x-shockwave-flash"

    invoke-static {v5, v0}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->SHOCKWAVE_FLASH:Lccsancom/google/common/net/MediaType;

    .line 604
    const-string v0, "vnd.sketchup.skp"

    invoke-static {v5, v0}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->SKETCHUP:Lccsancom/google/common/net/MediaType;

    .line 617
    const-string v0, "soap+xml"

    invoke-static {v5, v0}, Lccsancom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->SOAP_XML_UTF_8:Lccsancom/google/common/net/MediaType;

    .line 619
    const-string v0, "x-tar"

    invoke-static {v5, v0}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->TAR:Lccsancom/google/common/net/MediaType;

    .line 629
    const-string v0, "font-woff"

    invoke-static {v5, v0}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->WOFF:Lccsancom/google/common/net/MediaType;

    .line 637
    const-string v0, "font-woff2"

    invoke-static {v5, v0}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->WOFF2:Lccsancom/google/common/net/MediaType;

    .line 639
    const-string v0, "xhtml+xml"

    invoke-static {v5, v0}, Lccsancom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->XHTML_UTF_8:Lccsancom/google/common/net/MediaType;

    .line 649
    const-string v0, "xrd+xml"

    invoke-static {v5, v0}, Lccsancom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->XRD_UTF_8:Lccsancom/google/common/net/MediaType;

    .line 651
    const-string v0, "zip"

    invoke-static {v5, v0}, Lccsancom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->ZIP:Lccsancom/google/common/net/MediaType;

    .line 1042
    const-string v0, "; "

    invoke-static {v0}, Lccsancom/google/common/base/Joiner;->on(Ljava/lang/String;)Lccsancom/google/common/base/Joiner;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Lccsancom/google/common/base/Joiner;->withKeyValueSeparator(Ljava/lang/String;)Lccsancom/google/common/base/Joiner$MapJoiner;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/net/MediaType;->PARAMETER_JOINER:Lccsancom/google/common/base/Joiner$MapJoiner;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lccsancom/google/common/collect/ImmutableListMultimap;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "subtype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lccsancom/google/common/collect/ImmutableListMultimap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 663
    .local p3, "parameters":Lccsancom/google/common/collect/ImmutableListMultimap;, "Lccsancom/google/common/collect/ImmutableListMultimap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 664
    iput-object p1, p0, Lccsancom/google/common/net/MediaType;->type:Ljava/lang/String;

    .line 665
    iput-object p2, p0, Lccsancom/google/common/net/MediaType;->subtype:Ljava/lang/String;

    .line 666
    iput-object p3, p0, Lccsancom/google/common/net/MediaType;->parameters:Lccsancom/google/common/collect/ImmutableListMultimap;

    .line 667
    return-void
.end method

.method static synthetic access$000()Lccsancom/google/common/base/CharMatcher;
    .locals 1

    .line 78
    sget-object v0, Lccsancom/google/common/net/MediaType;->TOKEN_MATCHER:Lccsancom/google/common/base/CharMatcher;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 78
    invoke-static {p0}, Lccsancom/google/common/net/MediaType;->escapeAndQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static addKnownType(Lccsancom/google/common/net/MediaType;)Lccsancom/google/common/net/MediaType;
    .locals 1
    .param p0, "mediaType"    # Lccsancom/google/common/net/MediaType;

    .line 123
    sget-object v0, Lccsancom/google/common/net/MediaType;->KNOWN_TYPES:Ljava/util/Map;

    invoke-interface {v0, p0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    return-object p0
.end method

.method private computeToString()Ljava/lang/String;
    .locals 4

    .line 1060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lccsancom/google/common/net/MediaType;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/google/common/net/MediaType;->subtype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1061
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lccsancom/google/common/net/MediaType;->parameters:Lccsancom/google/common/collect/ImmutableListMultimap;

    invoke-virtual {v1}, Lccsancom/google/common/collect/ImmutableListMultimap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1062
    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    iget-object v1, p0, Lccsancom/google/common/net/MediaType;->parameters:Lccsancom/google/common/collect/ImmutableListMultimap;

    new-instance v2, Lccsancom/google/common/net/MediaType$2;

    invoke-direct {v2, p0}, Lccsancom/google/common/net/MediaType$2;-><init>(Lccsancom/google/common/net/MediaType;)V

    .line 1064
    invoke-static {v1, v2}, Lccsancom/google/common/collect/Multimaps;->transformValues(Lccsancom/google/common/collect/ListMultimap;Lccsancom/google/common/base/Function;)Lccsancom/google/common/collect/ListMultimap;

    move-result-object v1

    .line 1072
    .local v1, "quotedParameters":Lccsancom/google/common/collect/Multimap;, "Lccsancom/google/common/collect/Multimap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v2, Lccsancom/google/common/net/MediaType;->PARAMETER_JOINER:Lccsancom/google/common/base/Joiner$MapJoiner;

    invoke-interface {v1}, Lccsancom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lccsancom/google/common/base/Joiner$MapJoiner;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    .line 1074
    .end local v1    # "quotedParameters":Lccsancom/google/common/collect/Multimap;, "Lccsancom/google/common/collect/Multimap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "subtype"    # Ljava/lang/String;

    .line 846
    invoke-static {}, Lccsancom/google/common/collect/ImmutableListMultimap;->of()Lccsancom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lccsancom/google/common/net/MediaType;->create(Ljava/lang/String;Ljava/lang/String;Lccsancom/google/common/collect/Multimap;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    .line 847
    .local v0, "mediaType":Lccsancom/google/common/net/MediaType;
    invoke-static {}, Lccsancom/google/common/base/Optional;->absent()Lccsancom/google/common/base/Optional;

    move-result-object v1

    iput-object v1, v0, Lccsancom/google/common/net/MediaType;->parsedCharset:Lccsancom/google/common/base/Optional;

    .line 848
    return-object v0
.end method

.method private static create(Ljava/lang/String;Ljava/lang/String;Lccsancom/google/common/collect/Multimap;)Lccsancom/google/common/net/MediaType;
    .locals 7
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "subtype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lccsancom/google/common/collect/Multimap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lccsancom/google/common/net/MediaType;"
        }
    .end annotation

    .line 853
    .local p2, "parameters":Lccsancom/google/common/collect/Multimap;, "Lccsancom/google/common/collect/Multimap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    invoke-static {p2}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    invoke-static {p0}, Lccsancom/google/common/net/MediaType;->normalizeToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 857
    .local v0, "normalizedType":Ljava/lang/String;
    invoke-static {p1}, Lccsancom/google/common/net/MediaType;->normalizeToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 858
    .local v1, "normalizedSubtype":Ljava/lang/String;
    nop

    .line 859
    const-string v2, "*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 858
    :goto_1
    const-string v3, "A wildcard type cannot be used with a non-wildcard subtype"

    invoke-static {v2, v3}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 861
    invoke-static {}, Lccsancom/google/common/collect/ImmutableListMultimap;->builder()Lccsancom/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object v2

    .line 862
    .local v2, "builder":Lccsancom/google/common/collect/ImmutableListMultimap$Builder;, "Lccsancom/google/common/collect/ImmutableListMultimap$Builder<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p2}, Lccsancom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 863
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lccsancom/google/common/net/MediaType;->normalizeToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 864
    .local v5, "attribute":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v5, v6}, Lccsancom/google/common/net/MediaType;->normalizeParameterValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lccsancom/google/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableListMultimap$Builder;

    .line 865
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "attribute":Ljava/lang/String;
    goto :goto_2

    .line 866
    :cond_2
    new-instance v3, Lccsancom/google/common/net/MediaType;

    invoke-virtual {v2}, Lccsancom/google/common/collect/ImmutableListMultimap$Builder;->build()Lccsancom/google/common/collect/ImmutableListMultimap;

    move-result-object v4

    invoke-direct {v3, v0, v1, v4}, Lccsancom/google/common/net/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;Lccsancom/google/common/collect/ImmutableListMultimap;)V

    .line 868
    .local v3, "mediaType":Lccsancom/google/common/net/MediaType;
    sget-object v4, Lccsancom/google/common/net/MediaType;->KNOWN_TYPES:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v3}, Lccsancom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/google/common/net/MediaType;

    return-object v4
.end method

.method static createApplicationType(Ljava/lang/String;)Lccsancom/google/common/net/MediaType;
    .locals 1
    .param p0, "subtype"    # Ljava/lang/String;

    .line 877
    const-string v0, "application"

    invoke-static {v0, p0}, Lccsancom/google/common/net/MediaType;->create(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    return-object v0
.end method

.method static createAudioType(Ljava/lang/String;)Lccsancom/google/common/net/MediaType;
    .locals 1
    .param p0, "subtype"    # Ljava/lang/String;

    .line 886
    const-string v0, "audio"

    invoke-static {v0, p0}, Lccsancom/google/common/net/MediaType;->create(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    return-object v0
.end method

.method private static createConstant(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "subtype"    # Ljava/lang/String;

    .line 110
    new-instance v0, Lccsancom/google/common/net/MediaType;

    .line 111
    invoke-static {}, Lccsancom/google/common/collect/ImmutableListMultimap;->of()Lccsancom/google/common/collect/ImmutableListMultimap;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lccsancom/google/common/net/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;Lccsancom/google/common/collect/ImmutableListMultimap;)V

    invoke-static {v0}, Lccsancom/google/common/net/MediaType;->addKnownType(Lccsancom/google/common/net/MediaType;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    .line 112
    .local v0, "mediaType":Lccsancom/google/common/net/MediaType;
    invoke-static {}, Lccsancom/google/common/base/Optional;->absent()Lccsancom/google/common/base/Optional;

    move-result-object v1

    iput-object v1, v0, Lccsancom/google/common/net/MediaType;->parsedCharset:Lccsancom/google/common/base/Optional;

    .line 113
    return-object v0
.end method

.method private static createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "subtype"    # Ljava/lang/String;

    .line 117
    new-instance v0, Lccsancom/google/common/net/MediaType;

    sget-object v1, Lccsancom/google/common/net/MediaType;->UTF_8_CONSTANT_PARAMETERS:Lccsancom/google/common/collect/ImmutableListMultimap;

    invoke-direct {v0, p0, p1, v1}, Lccsancom/google/common/net/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;Lccsancom/google/common/collect/ImmutableListMultimap;)V

    invoke-static {v0}, Lccsancom/google/common/net/MediaType;->addKnownType(Lccsancom/google/common/net/MediaType;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    .line 118
    .local v0, "mediaType":Lccsancom/google/common/net/MediaType;
    sget-object v1, Lccsancom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v1}, Lccsancom/google/common/base/Optional;->of(Ljava/lang/Object;)Lccsancom/google/common/base/Optional;

    move-result-object v1

    iput-object v1, v0, Lccsancom/google/common/net/MediaType;->parsedCharset:Lccsancom/google/common/base/Optional;

    .line 119
    return-object v0
.end method

.method static createImageType(Ljava/lang/String;)Lccsancom/google/common/net/MediaType;
    .locals 1
    .param p0, "subtype"    # Ljava/lang/String;

    .line 895
    const-string v0, "image"

    invoke-static {v0, p0}, Lccsancom/google/common/net/MediaType;->create(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    return-object v0
.end method

.method static createTextType(Ljava/lang/String;)Lccsancom/google/common/net/MediaType;
    .locals 1
    .param p0, "subtype"    # Ljava/lang/String;

    .line 904
    const-string v0, "text"

    invoke-static {v0, p0}, Lccsancom/google/common/net/MediaType;->create(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    return-object v0
.end method

.method static createVideoType(Ljava/lang/String;)Lccsancom/google/common/net/MediaType;
    .locals 1
    .param p0, "subtype"    # Ljava/lang/String;

    .line 913
    const-string v0, "video"

    invoke-static {v0, p0}, Lccsancom/google/common/net/MediaType;->create(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    return-object v0
.end method

.method private static escapeAndQuote(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .line 1078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1079
    .local v0, "escaped":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1080
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1081
    .local v3, "ch":C
    const/16 v4, 0xd

    const/16 v5, 0x5c

    if-eq v3, v4, :cond_0

    if-eq v3, v5, :cond_0

    if-ne v3, v1, :cond_1

    .line 1082
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1084
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1079
    .end local v3    # "ch":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1086
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static normalizeParameterValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "attribute"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 922
    const-string v0, "charset"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lccsancom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method private static normalizeToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "token"    # Ljava/lang/String;

    .line 917
    sget-object v0, Lccsancom/google/common/net/MediaType;->TOKEN_MATCHER:Lccsancom/google/common/base/CharMatcher;

    invoke-virtual {v0, p0}, Lccsancom/google/common/base/CharMatcher;->matchesAllOf(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lccsancom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 918
    invoke-static {p0}, Lccsancom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parametersAsMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsancom/google/common/collect/ImmutableMultiset<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 685
    iget-object v0, p0, Lccsancom/google/common/net/MediaType;->parameters:Lccsancom/google/common/collect/ImmutableListMultimap;

    .line 686
    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableListMultimap;->asMap()Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v0

    new-instance v1, Lccsancom/google/common/net/MediaType$1;

    invoke-direct {v1, p0}, Lccsancom/google/common/net/MediaType$1;-><init>(Lccsancom/google/common/net/MediaType;)V

    .line 685
    invoke-static {v0, v1}, Lccsancom/google/common/collect/Maps;->transformValues(Ljava/util/Map;Lccsancom/google/common/base/Function;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lccsancom/google/common/net/MediaType;
    .locals 9
    .param p0, "input"    # Ljava/lang/String;

    .line 931
    invoke-static {p0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    new-instance v0, Lccsancom/google/common/net/MediaType$Tokenizer;

    invoke-direct {v0, p0}, Lccsancom/google/common/net/MediaType$Tokenizer;-><init>(Ljava/lang/String;)V

    .line 934
    .local v0, "tokenizer":Lccsancom/google/common/net/MediaType$Tokenizer;
    :try_start_0
    sget-object v1, Lccsancom/google/common/net/MediaType;->TOKEN_MATCHER:Lccsancom/google/common/base/CharMatcher;

    invoke-virtual {v0, v1}, Lccsancom/google/common/net/MediaType$Tokenizer;->consumeToken(Lccsancom/google/common/base/CharMatcher;)Ljava/lang/String;

    move-result-object v2

    .line 935
    .local v2, "type":Ljava/lang/String;
    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Lccsancom/google/common/net/MediaType$Tokenizer;->consumeCharacter(C)C

    .line 936
    invoke-virtual {v0, v1}, Lccsancom/google/common/net/MediaType$Tokenizer;->consumeToken(Lccsancom/google/common/base/CharMatcher;)Ljava/lang/String;

    move-result-object v1

    .line 937
    .local v1, "subtype":Ljava/lang/String;
    invoke-static {}, Lccsancom/google/common/collect/ImmutableListMultimap;->builder()Lccsancom/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object v3

    .line 938
    .local v3, "parameters":Lccsancom/google/common/collect/ImmutableListMultimap$Builder;, "Lccsancom/google/common/collect/ImmutableListMultimap$Builder<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v0}, Lccsancom/google/common/net/MediaType$Tokenizer;->hasMore()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 939
    sget-object v4, Lccsancom/google/common/net/MediaType;->LINEAR_WHITE_SPACE:Lccsancom/google/common/base/CharMatcher;

    invoke-virtual {v0, v4}, Lccsancom/google/common/net/MediaType$Tokenizer;->consumeTokenIfPresent(Lccsancom/google/common/base/CharMatcher;)Ljava/lang/String;

    .line 940
    const/16 v5, 0x3b

    invoke-virtual {v0, v5}, Lccsancom/google/common/net/MediaType$Tokenizer;->consumeCharacter(C)C

    .line 941
    invoke-virtual {v0, v4}, Lccsancom/google/common/net/MediaType$Tokenizer;->consumeTokenIfPresent(Lccsancom/google/common/base/CharMatcher;)Ljava/lang/String;

    .line 942
    sget-object v4, Lccsancom/google/common/net/MediaType;->TOKEN_MATCHER:Lccsancom/google/common/base/CharMatcher;

    invoke-virtual {v0, v4}, Lccsancom/google/common/net/MediaType$Tokenizer;->consumeToken(Lccsancom/google/common/base/CharMatcher;)Ljava/lang/String;

    move-result-object v5

    .line 943
    .local v5, "attribute":Ljava/lang/String;
    const/16 v6, 0x3d

    invoke-virtual {v0, v6}, Lccsancom/google/common/net/MediaType$Tokenizer;->consumeCharacter(C)C

    .line 945
    invoke-virtual {v0}, Lccsancom/google/common/net/MediaType$Tokenizer;->previewChar()C

    move-result v6

    const/16 v7, 0x22

    if-ne v7, v6, :cond_2

    .line 946
    invoke-virtual {v0, v7}, Lccsancom/google/common/net/MediaType$Tokenizer;->consumeCharacter(C)C

    .line 947
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 948
    .local v4, "valueBuilder":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v0}, Lccsancom/google/common/net/MediaType$Tokenizer;->previewChar()C

    move-result v6

    if-eq v7, v6, :cond_1

    .line 949
    invoke-virtual {v0}, Lccsancom/google/common/net/MediaType$Tokenizer;->previewChar()C

    move-result v6

    const/16 v8, 0x5c

    if-ne v8, v6, :cond_0

    .line 950
    invoke-virtual {v0, v8}, Lccsancom/google/common/net/MediaType$Tokenizer;->consumeCharacter(C)C

    .line 951
    invoke-static {}, Lccsancom/google/common/base/CharMatcher;->ascii()Lccsancom/google/common/base/CharMatcher;

    move-result-object v6

    invoke-virtual {v0, v6}, Lccsancom/google/common/net/MediaType$Tokenizer;->consumeCharacter(Lccsancom/google/common/base/CharMatcher;)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 953
    :cond_0
    sget-object v6, Lccsancom/google/common/net/MediaType;->QUOTED_TEXT_MATCHER:Lccsancom/google/common/base/CharMatcher;

    invoke-virtual {v0, v6}, Lccsancom/google/common/net/MediaType$Tokenizer;->consumeToken(Lccsancom/google/common/base/CharMatcher;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 956
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 957
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {v0, v7}, Lccsancom/google/common/net/MediaType$Tokenizer;->consumeCharacter(C)C

    .line 958
    nop

    .end local v4    # "valueBuilder":Ljava/lang/StringBuilder;
    goto :goto_2

    .line 959
    .end local v6    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v4}, Lccsancom/google/common/net/MediaType$Tokenizer;->consumeToken(Lccsancom/google/common/base/CharMatcher;)Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .line 961
    .restart local v6    # "value":Ljava/lang/String;
    :goto_2
    invoke-virtual {v3, v5, v6}, Lccsancom/google/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableListMultimap$Builder;

    .line 962
    nop

    .end local v5    # "attribute":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    goto :goto_0

    .line 963
    :cond_3
    invoke-virtual {v3}, Lccsancom/google/common/collect/ImmutableListMultimap$Builder;->build()Lccsancom/google/common/collect/ImmutableListMultimap;

    move-result-object v4

    invoke-static {v2, v1, v4}, Lccsancom/google/common/net/MediaType;->create(Ljava/lang/String;Ljava/lang/String;Lccsancom/google/common/collect/Multimap;)Lccsancom/google/common/net/MediaType;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 964
    .end local v1    # "subtype":Ljava/lang/String;
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "parameters":Lccsancom/google/common/collect/ImmutableListMultimap$Builder;, "Lccsancom/google/common/collect/ImmutableListMultimap$Builder<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 965
    .local v1, "e":Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_3
    throw v2

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public charset()Lccsancom/google/common/base/Optional;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/base/Optional<",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation

    .line 705
    iget-object v0, p0, Lccsancom/google/common/net/MediaType;->parsedCharset:Lccsancom/google/common/base/Optional;

    .line 706
    .local v0, "local":Lccsancom/google/common/base/Optional;, "Lccsancom/google/common/base/Optional<Ljava/nio/charset/Charset;>;"
    if-nez v0, :cond_3

    .line 707
    const/4 v1, 0x0

    .line 708
    .local v1, "value":Ljava/lang/String;
    invoke-static {}, Lccsancom/google/common/base/Optional;->absent()Lccsancom/google/common/base/Optional;

    move-result-object v0

    .line 709
    iget-object v2, p0, Lccsancom/google/common/net/MediaType;->parameters:Lccsancom/google/common/collect/ImmutableListMultimap;

    const-string v3, "charset"

    invoke-virtual {v2, v3}, Lccsancom/google/common/collect/ImmutableListMultimap;->get(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/google/common/collect/ImmutableList;->iterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 710
    .local v3, "currentValue":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 711
    move-object v1, v3

    .line 712
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-static {v4}, Lccsancom/google/common/base/Optional;->of(Ljava/lang/Object;)Lccsancom/google/common/base/Optional;

    move-result-object v0

    goto :goto_1

    .line 713
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 717
    .end local v3    # "currentValue":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 714
    .restart local v3    # "currentValue":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Multiple charset values defined: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 718
    .end local v3    # "currentValue":Ljava/lang/String;
    :cond_2
    iput-object v0, p0, Lccsancom/google/common/net/MediaType;->parsedCharset:Lccsancom/google/common/base/Optional;

    .line 720
    .end local v1    # "value":Ljava/lang/String;
    :cond_3
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1018
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 1019
    return v0

    .line 1020
    :cond_0
    instance-of v1, p1, Lccsancom/google/common/net/MediaType;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1021
    move-object v1, p1

    check-cast v1, Lccsancom/google/common/net/MediaType;

    .line 1022
    .local v1, "that":Lccsancom/google/common/net/MediaType;
    iget-object v3, p0, Lccsancom/google/common/net/MediaType;->type:Ljava/lang/String;

    iget-object v4, v1, Lccsancom/google/common/net/MediaType;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lccsancom/google/common/net/MediaType;->subtype:Ljava/lang/String;

    iget-object v4, v1, Lccsancom/google/common/net/MediaType;->subtype:Ljava/lang/String;

    .line 1023
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1025
    invoke-direct {p0}, Lccsancom/google/common/net/MediaType;->parametersAsMap()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v1}, Lccsancom/google/common/net/MediaType;->parametersAsMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1022
    :goto_0
    return v0

    .line 1027
    .end local v1    # "that":Lccsancom/google/common/net/MediaType;
    :cond_2
    return v2
.end method

.method public hasWildcard()Z
    .locals 2

    .line 801
    iget-object v0, p0, Lccsancom/google/common/net/MediaType;->type:Ljava/lang/String;

    const-string v1, "*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsancom/google/common/net/MediaType;->subtype:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1034
    iget v0, p0, Lccsancom/google/common/net/MediaType;->hashCode:I

    .line 1035
    .local v0, "h":I
    if-nez v0, :cond_0

    .line 1036
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lccsancom/google/common/net/MediaType;->type:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lccsancom/google/common/net/MediaType;->subtype:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-direct {p0}, Lccsancom/google/common/net/MediaType;->parametersAsMap()Ljava/util/Map;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lccsancom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 1037
    iput v0, p0, Lccsancom/google/common/net/MediaType;->hashCode:I

    .line 1039
    :cond_0
    return v0
.end method

.method public is(Lccsancom/google/common/net/MediaType;)Z
    .locals 3
    .param p1, "mediaTypeRange"    # Lccsancom/google/common/net/MediaType;

    .line 834
    iget-object v0, p1, Lccsancom/google/common/net/MediaType;->type:Ljava/lang/String;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lccsancom/google/common/net/MediaType;->type:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/google/common/net/MediaType;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p1, Lccsancom/google/common/net/MediaType;->subtype:Ljava/lang/String;

    .line 835
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lccsancom/google/common/net/MediaType;->subtype:Ljava/lang/String;

    iget-object v1, p0, Lccsancom/google/common/net/MediaType;->subtype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lccsancom/google/common/net/MediaType;->parameters:Lccsancom/google/common/collect/ImmutableListMultimap;

    .line 836
    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableListMultimap;->entries()Lccsancom/google/common/collect/ImmutableCollection;

    move-result-object v0

    iget-object v1, p1, Lccsancom/google/common/net/MediaType;->parameters:Lccsancom/google/common/collect/ImmutableListMultimap;

    invoke-virtual {v1}, Lccsancom/google/common/collect/ImmutableListMultimap;->entries()Lccsancom/google/common/collect/ImmutableCollection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/collect/ImmutableCollection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 834
    :goto_0
    return v0
.end method

.method public parameters()Lccsancom/google/common/collect/ImmutableListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableListMultimap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 681
    iget-object v0, p0, Lccsancom/google/common/net/MediaType;->parameters:Lccsancom/google/common/collect/ImmutableListMultimap;

    return-object v0
.end method

.method public subtype()Ljava/lang/String;
    .locals 1

    .line 676
    iget-object v0, p0, Lccsancom/google/common/net/MediaType;->subtype:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1051
    iget-object v0, p0, Lccsancom/google/common/net/MediaType;->toString:Ljava/lang/String;

    .line 1052
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1053
    invoke-direct {p0}, Lccsancom/google/common/net/MediaType;->computeToString()Ljava/lang/String;

    move-result-object v0

    .line 1054
    iput-object v0, p0, Lccsancom/google/common/net/MediaType;->toString:Ljava/lang/String;

    .line 1056
    :cond_0
    return-object v0
.end method

.method public type()Ljava/lang/String;
    .locals 1

    .line 671
    iget-object v0, p0, Lccsancom/google/common/net/MediaType;->type:Ljava/lang/String;

    return-object v0
.end method

.method public withCharset(Ljava/nio/charset/Charset;)Lccsancom/google/common/net/MediaType;
    .locals 2
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 792
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "charset"

    invoke-virtual {p0, v1, v0}, Lccsancom/google/common/net/MediaType;->withParameter(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    .line 795
    .local v0, "withCharset":Lccsancom/google/common/net/MediaType;
    invoke-static {p1}, Lccsancom/google/common/base/Optional;->of(Ljava/lang/Object;)Lccsancom/google/common/base/Optional;

    move-result-object v1

    iput-object v1, v0, Lccsancom/google/common/net/MediaType;->parsedCharset:Lccsancom/google/common/base/Optional;

    .line 796
    return-object v0
.end method

.method public withParameter(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;
    .locals 1
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 779
    invoke-static {p2}, Lccsancom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lccsancom/google/common/net/MediaType;->withParameters(Ljava/lang/String;Ljava/lang/Iterable;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public withParameters(Lccsancom/google/common/collect/Multimap;)Lccsancom/google/common/net/MediaType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Multimap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lccsancom/google/common/net/MediaType;"
        }
    .end annotation

    .line 737
    .local p1, "parameters":Lccsancom/google/common/collect/Multimap;, "Lccsancom/google/common/collect/Multimap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lccsancom/google/common/net/MediaType;->type:Ljava/lang/String;

    iget-object v1, p0, Lccsancom/google/common/net/MediaType;->subtype:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lccsancom/google/common/net/MediaType;->create(Ljava/lang/String;Ljava/lang/String;Lccsancom/google/common/collect/Multimap;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public withParameters(Ljava/lang/String;Ljava/lang/Iterable;)Lccsancom/google/common/net/MediaType;
    .locals 6
    .param p1, "attribute"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lccsancom/google/common/net/MediaType;"
        }
    .end annotation

    .line 748
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    invoke-static {p2}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    invoke-static {p1}, Lccsancom/google/common/net/MediaType;->normalizeToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 751
    .local v0, "normalizedAttribute":Ljava/lang/String;
    invoke-static {}, Lccsancom/google/common/collect/ImmutableListMultimap;->builder()Lccsancom/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object v1

    .line 752
    .local v1, "builder":Lccsancom/google/common/collect/ImmutableListMultimap$Builder;, "Lccsancom/google/common/collect/ImmutableListMultimap$Builder<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lccsancom/google/common/net/MediaType;->parameters:Lccsancom/google/common/collect/ImmutableListMultimap;

    invoke-virtual {v2}, Lccsancom/google/common/collect/ImmutableListMultimap;->entries()Lccsancom/google/common/collect/ImmutableCollection;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/google/common/collect/ImmutableCollection;->iterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 753
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 754
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 755
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lccsancom/google/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableListMultimap$Builder;

    .line 757
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "key":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 758
    :cond_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 759
    .local v3, "value":Ljava/lang/String;
    invoke-static {v0, v3}, Lccsancom/google/common/net/MediaType;->normalizeParameterValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lccsancom/google/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableListMultimap$Builder;

    .line 760
    .end local v3    # "value":Ljava/lang/String;
    goto :goto_1

    .line 761
    :cond_2
    new-instance v2, Lccsancom/google/common/net/MediaType;

    iget-object v3, p0, Lccsancom/google/common/net/MediaType;->type:Ljava/lang/String;

    iget-object v4, p0, Lccsancom/google/common/net/MediaType;->subtype:Ljava/lang/String;

    invoke-virtual {v1}, Lccsancom/google/common/collect/ImmutableListMultimap$Builder;->build()Lccsancom/google/common/collect/ImmutableListMultimap;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lccsancom/google/common/net/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;Lccsancom/google/common/collect/ImmutableListMultimap;)V

    .line 763
    .local v2, "mediaType":Lccsancom/google/common/net/MediaType;
    const-string v3, "charset"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 764
    iget-object v3, p0, Lccsancom/google/common/net/MediaType;->parsedCharset:Lccsancom/google/common/base/Optional;

    iput-object v3, v2, Lccsancom/google/common/net/MediaType;->parsedCharset:Lccsancom/google/common/base/Optional;

    .line 767
    :cond_3
    sget-object v3, Lccsancom/google/common/net/MediaType;->KNOWN_TYPES:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v2}, Lccsancom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/google/common/net/MediaType;

    return-object v3
.end method

.method public withoutParameters()Lccsancom/google/common/net/MediaType;
    .locals 2

    .line 728
    iget-object v0, p0, Lccsancom/google/common/net/MediaType;->parameters:Lccsancom/google/common/collect/ImmutableListMultimap;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableListMultimap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/google/common/net/MediaType;->type:Ljava/lang/String;

    iget-object v1, p0, Lccsancom/google/common/net/MediaType;->subtype:Ljava/lang/String;

    invoke-static {v0, v1}, Lccsancom/google/common/net/MediaType;->create(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/common/net/MediaType;

    move-result-object v0

    :goto_0
    return-object v0
.end method
