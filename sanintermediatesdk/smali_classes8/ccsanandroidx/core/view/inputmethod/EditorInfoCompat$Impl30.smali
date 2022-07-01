.class Lccsanandroidx/core/view/inputmethod/EditorInfoCompat$Impl30;
.super Ljava/lang/Object;
.source "EditorInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/view/inputmethod/EditorInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl30"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInitialSelectedText(Lccsanandroid/view/inputmethod/EditorInfo;I)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "editorInfo"    # Lccsanandroid/view/inputmethod/EditorInfo;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "editorInfo",
            "flags"
        }
    .end annotation

    .line 545
    invoke-virtual {p0, p1}, Lccsanandroid/view/inputmethod/EditorInfo;->getInitialSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static getInitialTextAfterCursor(Lccsanandroid/view/inputmethod/EditorInfo;II)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "editorInfo"    # Lccsanandroid/view/inputmethod/EditorInfo;
    .param p1, "length"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "editorInfo",
            "length",
            "flags"
        }
    .end annotation

    .line 550
    invoke-virtual {p0, p1, p2}, Lccsanandroid/view/inputmethod/EditorInfo;->getInitialTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static getInitialTextBeforeCursor(Lccsanandroid/view/inputmethod/EditorInfo;II)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "editorInfo"    # Lccsanandroid/view/inputmethod/EditorInfo;
    .param p1, "length"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "editorInfo",
            "length",
            "flags"
        }
    .end annotation

    .line 541
    invoke-virtual {p0, p1, p2}, Lccsanandroid/view/inputmethod/EditorInfo;->getInitialTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static setInitialSurroundingSubText(Lccsanandroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;I)V
    .locals 0
    .param p0, "editorInfo"    # Lccsanandroid/view/inputmethod/EditorInfo;
    .param p1, "sourceText"    # Ljava/lang/CharSequence;
    .param p2, "subTextStart"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "editorInfo",
            "sourceText",
            "subTextStart"
        }
    .end annotation

    .line 536
    invoke-virtual {p0, p1, p2}, Lccsanandroid/view/inputmethod/EditorInfo;->setInitialSurroundingSubText(Ljava/lang/CharSequence;I)V

    .line 537
    return-void
.end method
