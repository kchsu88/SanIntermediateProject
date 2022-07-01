.class public final Lccsanandroidx/core/widget/CompoundButtonCompat;
.super Ljava/lang/Object;
.source "CompoundButtonCompat.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CompoundButtonCompat"

.field private static sButtonDrawableField:Ljava/lang/reflect/Field;

.field private static sButtonDrawableFieldFetched:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getButtonDrawable(Lccsanandroid/widget/CompoundButton;)Lccsanandroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "button"    # Lccsanandroid/widget/CompoundButton;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "button"
        }
    .end annotation

    .line 123
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 124
    invoke-virtual {p0}, Lccsanandroid/widget/CompoundButton;->getButtonDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 127
    :cond_0
    sget-boolean v0, Lccsanandroidx/core/widget/CompoundButtonCompat;->sButtonDrawableFieldFetched:Z

    const-string v1, "CompoundButtonCompat"

    if-nez v0, :cond_1

    .line 129
    const/4 v0, 0x1

    :try_start_0
    const-class v2, Lccsanandroid/widget/CompoundButton;

    const-string v3, "mButtonDrawable"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lccsanandroidx/core/widget/CompoundButtonCompat;->sButtonDrawableField:Ljava/lang/reflect/Field;

    .line 130
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    goto :goto_0

    .line 131
    :catch_0
    move-exception v2

    .line 132
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    const-string v3, "Failed to retrieve mButtonDrawable field"

    invoke-static {v1, v3, v2}, Lccsanandroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :goto_0
    sput-boolean v0, Lccsanandroidx/core/widget/CompoundButtonCompat;->sButtonDrawableFieldFetched:Z

    .line 137
    :cond_1
    sget-object v0, Lccsanandroidx/core/widget/CompoundButtonCompat;->sButtonDrawableField:Ljava/lang/reflect/Field;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 139
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 140
    :catch_1
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "Failed to get button drawable via reflection"

    invoke-static {v1, v3, v0}, Lccsanandroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    sput-object v2, Lccsanandroidx/core/widget/CompoundButtonCompat;->sButtonDrawableField:Ljava/lang/reflect/Field;

    .line 145
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_2
    return-object v2
.end method

.method public static getButtonTintList(Lccsanandroid/widget/CompoundButton;)Lccsanandroid/content/res/ColorStateList;
    .locals 2
    .param p0, "button"    # Lccsanandroid/widget/CompoundButton;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "button"
        }
    .end annotation

    .line 71
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 72
    invoke-virtual {p0}, Lccsanandroid/widget/CompoundButton;->getButtonTintList()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 74
    :cond_0
    instance-of v0, p0, Lccsanandroidx/core/widget/TintableCompoundButton;

    if-eqz v0, :cond_1

    .line 75
    move-object v0, p0

    check-cast v0, Lccsanandroidx/core/widget/TintableCompoundButton;

    invoke-interface {v0}, Lccsanandroidx/core/widget/TintableCompoundButton;->getSupportButtonTintList()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 77
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getButtonTintMode(Lccsanandroid/widget/CompoundButton;)Lccsanandroid/graphics/PorterDuff$Mode;
    .locals 2
    .param p0, "button"    # Lccsanandroid/widget/CompoundButton;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "button"
        }
    .end annotation

    .line 107
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 108
    invoke-virtual {p0}, Lccsanandroid/widget/CompoundButton;->getButtonTintMode()Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0

    .line 110
    :cond_0
    instance-of v0, p0, Lccsanandroidx/core/widget/TintableCompoundButton;

    if-eqz v0, :cond_1

    .line 111
    move-object v0, p0

    check-cast v0, Lccsanandroidx/core/widget/TintableCompoundButton;

    invoke-interface {v0}, Lccsanandroidx/core/widget/TintableCompoundButton;->getSupportButtonTintMode()Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0

    .line 113
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static setButtonTintList(Lccsanandroid/widget/CompoundButton;Lccsanandroid/content/res/ColorStateList;)V
    .locals 2
    .param p0, "button"    # Lccsanandroid/widget/CompoundButton;
    .param p1, "tint"    # Lccsanandroid/content/res/ColorStateList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "button",
            "tint"
        }
    .end annotation

    .line 57
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 58
    invoke-virtual {p0, p1}, Lccsanandroid/widget/CompoundButton;->setButtonTintList(Lccsanandroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 59
    :cond_0
    instance-of v0, p0, Lccsanandroidx/core/widget/TintableCompoundButton;

    if-eqz v0, :cond_1

    .line 60
    move-object v0, p0

    check-cast v0, Lccsanandroidx/core/widget/TintableCompoundButton;

    invoke-interface {v0, p1}, Lccsanandroidx/core/widget/TintableCompoundButton;->setSupportButtonTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 62
    :cond_1
    :goto_0
    return-void
.end method

.method public static setButtonTintMode(Lccsanandroid/widget/CompoundButton;Lccsanandroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p0, "button"    # Lccsanandroid/widget/CompoundButton;
    .param p1, "tintMode"    # Lccsanandroid/graphics/PorterDuff$Mode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "button",
            "tintMode"
        }
    .end annotation

    .line 93
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 94
    invoke-virtual {p0, p1}, Lccsanandroid/widget/CompoundButton;->setButtonTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 95
    :cond_0
    instance-of v0, p0, Lccsanandroidx/core/widget/TintableCompoundButton;

    if-eqz v0, :cond_1

    .line 96
    move-object v0, p0

    check-cast v0, Lccsanandroidx/core/widget/TintableCompoundButton;

    invoke-interface {v0, p1}, Lccsanandroidx/core/widget/TintableCompoundButton;->setSupportButtonTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 98
    :cond_1
    :goto_0
    return-void
.end method
