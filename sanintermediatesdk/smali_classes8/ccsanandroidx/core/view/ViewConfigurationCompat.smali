.class public final Lccsanandroidx/core/view/ViewConfigurationCompat;
.super Ljava/lang/Object;
.source "ViewConfigurationCompat.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewConfigCompat"

.field private static sGetScaledScrollFactorMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    .line 41
    :try_start_0
    const-class v0, Lccsanandroid/view/ViewConfiguration;

    const-string v1, "getScaledScrollFactor"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 42
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lccsanandroidx/core/view/ViewConfigurationCompat;->sGetScaledScrollFactorMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ViewConfigCompat"

    const-string v2, "Could not find method getScaledScrollFactor() on ViewConfiguration"

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getLegacyScrollFactor(Lccsanandroid/view/ViewConfiguration;Lccsanandroid/content/Context;)F
    .locals 4
    .param p0, "config"    # Lccsanandroid/view/ViewConfiguration;
    .param p1, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "config",
            "context"
        }
    .end annotation

    .line 106
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    sget-object v0, Lccsanandroidx/core/view/ViewConfigurationCompat;->sGetScaledScrollFactorMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 108
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v0, v0

    return v0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ViewConfigCompat"

    const-string v2, "Could not find method getScaledScrollFactor() on ViewConfiguration"

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v0, Lccsanandroid/util/TypedValue;

    invoke-direct {v0}, Lccsanandroid/util/TypedValue;-><init>()V

    .line 115
    .local v0, "outValue":Lccsanandroid/util/TypedValue;
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getTheme()Lccsanandroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101004d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lccsanandroid/content/res/Resources$Theme;->resolveAttribute(ILccsanandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/util/TypedValue;->getDimension(Lccsanandroid/util/DisplayMetrics;)F

    move-result v1

    return v1

    .line 119
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static getScaledHorizontalScrollFactor(Lccsanandroid/view/ViewConfiguration;Lccsanandroid/content/Context;)F
    .locals 2
    .param p0, "config"    # Lccsanandroid/view/ViewConfiguration;
    .param p1, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "config",
            "context"
        }
    .end annotation

    .line 81
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 82
    invoke-virtual {p0}, Lccsanandroid/view/ViewConfiguration;->getScaledHorizontalScrollFactor()F

    move-result v0

    return v0

    .line 84
    :cond_0
    invoke-static {p0, p1}, Lccsanandroidx/core/view/ViewConfigurationCompat;->getLegacyScrollFactor(Lccsanandroid/view/ViewConfiguration;Lccsanandroid/content/Context;)F

    move-result v0

    return v0
.end method

.method public static getScaledHoverSlop(Lccsanandroid/view/ViewConfiguration;)I
    .locals 2
    .param p0, "config"    # Lccsanandroid/view/ViewConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 128
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 129
    invoke-virtual {p0}, Lccsanandroid/view/ViewConfiguration;->getScaledHoverSlop()I

    move-result v0

    return v0

    .line 131
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static getScaledPagingTouchSlop(Lccsanandroid/view/ViewConfiguration;)I
    .locals 1
    .param p0, "config"    # Lccsanandroid/view/ViewConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 57
    invoke-virtual {p0}, Lccsanandroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    return v0
.end method

.method public static getScaledVerticalScrollFactor(Lccsanandroid/view/ViewConfiguration;Lccsanandroid/content/Context;)F
    .locals 2
    .param p0, "config"    # Lccsanandroid/view/ViewConfiguration;
    .param p1, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "config",
            "context"
        }
    .end annotation

    .line 98
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lccsanandroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    move-result v0

    return v0

    .line 101
    :cond_0
    invoke-static {p0, p1}, Lccsanandroidx/core/view/ViewConfigurationCompat;->getLegacyScrollFactor(Lccsanandroid/view/ViewConfiguration;Lccsanandroid/content/Context;)F

    move-result v0

    return v0
.end method

.method public static hasPermanentMenuKey(Lccsanandroid/view/ViewConfiguration;)Z
    .locals 1
    .param p0, "config"    # Lccsanandroid/view/ViewConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 68
    invoke-virtual {p0}, Lccsanandroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    return v0
.end method

.method public static shouldShowMenuShortcutsWhenKeyboardPresent(Lccsanandroid/view/ViewConfiguration;Lccsanandroid/content/Context;)Z
    .locals 4
    .param p0, "config"    # Lccsanandroid/view/ViewConfiguration;
    .param p1, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "config",
            "context"
        }
    .end annotation

    .line 141
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 142
    invoke-virtual {p0}, Lccsanandroid/view/ViewConfiguration;->shouldShowMenuShortcutsWhenKeyboardPresent()Z

    move-result v0

    return v0

    .line 144
    :cond_0
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    .line 145
    .local v0, "res":Lccsanandroid/content/res/Resources;
    const-string v1, "config_showMenuShortcutsWhenKeyboardPresent"

    const-string v2, "bool"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 147
    .local v1, "platformResId":I
    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lccsanandroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
