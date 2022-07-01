.class Lccsanandroidx/appcompat/app/ActionBarDrawerToggleHoneycomb;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggleHoneycomb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionBarDrawerToggleHC"

.field private static final THEME_ATTRS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101030b

    aput v2, v0, v1

    sput-object v0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggleHoneycomb;->THEME_ATTRS:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    return-void
.end method

.method public static getThemeUpIndicator(Lccsanandroid/app/Activity;)Lccsanandroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "activity"    # Lccsanandroid/app/Activity;

    .line 90
    sget-object v0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggleHoneycomb;->THEME_ATTRS:[I

    invoke-virtual {p0, v0}, Lccsanandroid/app/Activity;->obtainStyledAttributes([I)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    .line 91
    .local v0, "a":Lccsanandroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/content/res/TypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 92
    .local v1, "result":Lccsanandroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 93
    return-object v1
.end method

.method public static setActionBarDescription(Lccsanandroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;Lccsanandroid/app/Activity;I)Lccsanandroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
    .locals 5
    .param p0, "info"    # Lccsanandroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
    .param p1, "activity"    # Lccsanandroid/app/Activity;
    .param p2, "contentDescRes"    # I

    .line 70
    if-nez p0, :cond_0

    .line 71
    new-instance v0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    invoke-direct {v0, p1}, Lccsanandroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;-><init>(Lccsanandroid/app/Activity;)V

    move-object p0, v0

    .line 73
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeAsUpIndicator:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    .line 75
    :try_start_0
    invoke-virtual {p1}, Lccsanandroid/app/Activity;->getActionBar()Lccsanandroid/app/ActionBar;

    move-result-object v0

    .line 76
    .local v0, "actionBar":Lccsanandroid/app/ActionBar;
    iget-object v1, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeActionContentDescription:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-gt v1, v2, :cond_1

    .line 80
    invoke-virtual {v0}, Lccsanandroid/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v0    # "actionBar":Lccsanandroid/app/ActionBar;
    :cond_1
    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ActionBarDrawerToggleHC"

    const-string v2, "Couldn\'t set content description via JB-MR2 API"

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static setActionBarUpIndicator(Lccsanandroid/app/Activity;Lccsanandroid/graphics/drawable/Drawable;I)Lccsanandroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
    .locals 7
    .param p0, "activity"    # Lccsanandroid/app/Activity;
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;
    .param p2, "contentDescRes"    # I

    .line 51
    new-instance v0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    invoke-direct {v0, p0}, Lccsanandroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;-><init>(Lccsanandroid/app/Activity;)V

    .line 52
    .local v0, "info":Lccsanandroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
    iget-object v1, v0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeAsUpIndicator:Ljava/lang/reflect/Method;

    const-string v2, "ActionBarDrawerToggleHC"

    if-eqz v1, :cond_0

    .line 54
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getActionBar()Lccsanandroid/app/ActionBar;

    move-result-object v1

    .line 55
    .local v1, "actionBar":Lccsanandroid/app/ActionBar;
    iget-object v3, v0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeAsUpIndicator:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v3, v0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeActionContentDescription:Ljava/lang/reflect/Method;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    nop

    .end local v1    # "actionBar":Lccsanandroid/app/ActionBar;
    goto :goto_0

    .line 57
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Couldn\'t set home-as-up indicator via JB-MR2 API"

    invoke-static {v2, v3, v1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 60
    :cond_0
    iget-object v1, v0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->upIndicatorView:Lccsanandroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 61
    iget-object v1, v0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->upIndicatorView:Lccsanandroid/widget/ImageView;

    invoke-virtual {v1, p1}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 63
    :cond_1
    const-string v1, "Couldn\'t set home-as-up indicator"

    invoke-static {v2, v1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :goto_0
    return-object v0
.end method
