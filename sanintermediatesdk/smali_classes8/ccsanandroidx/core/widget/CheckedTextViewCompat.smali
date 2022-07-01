.class public final Lccsanandroidx/core/widget/CheckedTextViewCompat;
.super Ljava/lang/Object;
.source "CheckedTextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/widget/CheckedTextViewCompat$Api14Impl;,
        Lccsanandroidx/core/widget/CheckedTextViewCompat$Api16Impl;,
        Lccsanandroidx/core/widget/CheckedTextViewCompat$Api21Impl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CheckedTextViewCompat"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static getCheckMarkDrawable(Lccsanandroid/widget/CheckedTextView;)Lccsanandroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "textView"    # Lccsanandroid/widget/CheckedTextView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textView"
        }
    .end annotation

    .line 121
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 122
    invoke-static {p0}, Lccsanandroidx/core/widget/CheckedTextViewCompat$Api16Impl;->getCheckMarkDrawable(Lccsanandroid/widget/CheckedTextView;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 124
    :cond_0
    invoke-static {p0}, Lccsanandroidx/core/widget/CheckedTextViewCompat$Api14Impl;->getCheckMarkDrawable(Lccsanandroid/widget/CheckedTextView;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getCheckMarkTintList(Lccsanandroid/widget/CheckedTextView;)Lccsanandroid/content/res/ColorStateList;
    .locals 2
    .param p0, "textView"    # Lccsanandroid/widget/CheckedTextView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textView"
        }
    .end annotation

    .line 70
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 71
    invoke-static {p0}, Lccsanandroidx/core/widget/CheckedTextViewCompat$Api21Impl;->getCheckMarkTintList(Lccsanandroid/widget/CheckedTextView;)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 73
    :cond_0
    instance-of v0, p0, Lccsanandroidx/core/widget/TintableCheckedTextView;

    if-eqz v0, :cond_1

    .line 74
    move-object v0, p0

    check-cast v0, Lccsanandroidx/core/widget/TintableCheckedTextView;

    invoke-interface {v0}, Lccsanandroidx/core/widget/TintableCheckedTextView;->getSupportCheckMarkTintList()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 76
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCheckMarkTintMode(Lccsanandroid/widget/CheckedTextView;)Lccsanandroid/graphics/PorterDuff$Mode;
    .locals 2
    .param p0, "textView"    # Lccsanandroid/widget/CheckedTextView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textView"
        }
    .end annotation

    .line 105
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 106
    invoke-static {p0}, Lccsanandroidx/core/widget/CheckedTextViewCompat$Api21Impl;->getCheckMarkTintMode(Lccsanandroid/widget/CheckedTextView;)Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0

    .line 108
    :cond_0
    instance-of v0, p0, Lccsanandroidx/core/widget/TintableCheckedTextView;

    if-eqz v0, :cond_1

    .line 109
    move-object v0, p0

    check-cast v0, Lccsanandroidx/core/widget/TintableCheckedTextView;

    invoke-interface {v0}, Lccsanandroidx/core/widget/TintableCheckedTextView;->getSupportCheckMarkTintMode()Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0

    .line 111
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static setCheckMarkTintList(Lccsanandroid/widget/CheckedTextView;Lccsanandroid/content/res/ColorStateList;)V
    .locals 2
    .param p0, "textView"    # Lccsanandroid/widget/CheckedTextView;
    .param p1, "tint"    # Lccsanandroid/content/res/ColorStateList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "textView",
            "tint"
        }
    .end annotation

    .line 56
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 57
    invoke-static {p0, p1}, Lccsanandroidx/core/widget/CheckedTextViewCompat$Api21Impl;->setCheckMarkTintList(Lccsanandroid/widget/CheckedTextView;Lccsanandroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 58
    :cond_0
    instance-of v0, p0, Lccsanandroidx/core/widget/TintableCheckedTextView;

    if-eqz v0, :cond_1

    .line 59
    move-object v0, p0

    check-cast v0, Lccsanandroidx/core/widget/TintableCheckedTextView;

    invoke-interface {v0, p1}, Lccsanandroidx/core/widget/TintableCheckedTextView;->setSupportCheckMarkTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 61
    :cond_1
    :goto_0
    return-void
.end method

.method public static setCheckMarkTintMode(Lccsanandroid/widget/CheckedTextView;Lccsanandroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p0, "textView"    # Lccsanandroid/widget/CheckedTextView;
    .param p1, "tintMode"    # Lccsanandroid/graphics/PorterDuff$Mode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "textView",
            "tintMode"
        }
    .end annotation

    .line 91
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 92
    invoke-static {p0, p1}, Lccsanandroidx/core/widget/CheckedTextViewCompat$Api21Impl;->setCheckMarkTintMode(Lccsanandroid/widget/CheckedTextView;Lccsanandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 93
    :cond_0
    instance-of v0, p0, Lccsanandroidx/core/widget/TintableCheckedTextView;

    if-eqz v0, :cond_1

    .line 94
    move-object v0, p0

    check-cast v0, Lccsanandroidx/core/widget/TintableCheckedTextView;

    invoke-interface {v0, p1}, Lccsanandroidx/core/widget/TintableCheckedTextView;->setSupportCheckMarkTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 96
    :cond_1
    :goto_0
    return-void
.end method
