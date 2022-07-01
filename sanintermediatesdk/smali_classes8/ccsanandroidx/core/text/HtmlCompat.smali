.class public final Lccsanandroidx/core/text/HtmlCompat;
.super Ljava/lang/Object;
.source "HtmlCompat.java"


# static fields
.field public static final FROM_HTML_MODE_COMPACT:I = 0x3f

.field public static final FROM_HTML_MODE_LEGACY:I = 0x0

.field public static final FROM_HTML_OPTION_USE_CSS_COLORS:I = 0x100

.field public static final FROM_HTML_SEPARATOR_LINE_BREAK_BLOCKQUOTE:I = 0x20

.field public static final FROM_HTML_SEPARATOR_LINE_BREAK_DIV:I = 0x10

.field public static final FROM_HTML_SEPARATOR_LINE_BREAK_HEADING:I = 0x2

.field public static final FROM_HTML_SEPARATOR_LINE_BREAK_LIST:I = 0x8

.field public static final FROM_HTML_SEPARATOR_LINE_BREAK_LIST_ITEM:I = 0x4

.field public static final FROM_HTML_SEPARATOR_LINE_BREAK_PARAGRAPH:I = 0x1

.field public static final TO_HTML_PARAGRAPH_LINES_CONSECUTIVE:I = 0x0

.field public static final TO_HTML_PARAGRAPH_LINES_INDIVIDUAL:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    return-void
.end method

.method public static fromHtml(Ljava/lang/String;I)Lccsanandroid/text/Spanned;
    .locals 2
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "flags"
        }
    .end annotation

    .line 147
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 148
    invoke-static {p0, p1}, Lccsanandroid/text/Html;->fromHtml(Ljava/lang/String;I)Lccsanandroid/text/Spanned;

    move-result-object v0

    return-object v0

    .line 150
    :cond_0
    invoke-static {p0}, Lccsanandroid/text/Html;->fromHtml(Ljava/lang/String;)Lccsanandroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public static fromHtml(Ljava/lang/String;ILccsanandroid/text/Html$ImageGetter;Lccsanandroid/text/Html$TagHandler;)Lccsanandroid/text/Spanned;
    .locals 2
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .param p2, "imageGetter"    # Lccsanandroid/text/Html$ImageGetter;
    .param p3, "tagHandler"    # Lccsanandroid/text/Html$TagHandler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "flags",
            "imageGetter",
            "tagHandler"
        }
    .end annotation

    .line 162
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 163
    invoke-static {p0, p1, p2, p3}, Lccsanandroid/text/Html;->fromHtml(Ljava/lang/String;ILccsanandroid/text/Html$ImageGetter;Lccsanandroid/text/Html$TagHandler;)Lccsanandroid/text/Spanned;

    move-result-object v0

    return-object v0

    .line 165
    :cond_0
    invoke-static {p0, p2, p3}, Lccsanandroid/text/Html;->fromHtml(Ljava/lang/String;Lccsanandroid/text/Html$ImageGetter;Lccsanandroid/text/Html$TagHandler;)Lccsanandroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public static toHtml(Lccsanandroid/text/Spanned;I)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Lccsanandroid/text/Spanned;
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "options"
        }
    .end annotation

    .line 175
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 176
    invoke-static {p0, p1}, Lccsanandroid/text/Html;->toHtml(Lccsanandroid/text/Spanned;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 178
    :cond_0
    invoke-static {p0}, Lccsanandroid/text/Html;->toHtml(Lccsanandroid/text/Spanned;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
