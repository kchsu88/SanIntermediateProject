.class Lccsanandroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggleHoneycomb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/app/ActionBarDrawerToggleHoneycomb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SetIndicatorInfo"
.end annotation


# instance fields
.field public setHomeActionContentDescription:Ljava/lang/reflect/Method;

.field public setHomeAsUpIndicator:Ljava/lang/reflect/Method;

.field public upIndicatorView:Lccsanandroid/widget/ImageView;


# direct methods
.method constructor <init>(Lccsanandroid/app/Activity;)V
    .locals 7
    .param p1, "activity"    # Lccsanandroid/app/Activity;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-class v2, Lccsanandroid/app/ActionBar;

    const-string/jumbo v3, "setHomeAsUpIndicator"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Lccsanandroid/graphics/drawable/Drawable;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeAsUpIndicator:Ljava/lang/reflect/Method;

    .line 105
    const-class v2, Lccsanandroid/app/ActionBar;

    const-string/jumbo v3, "setHomeActionContentDescription"

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeActionContentDescription:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    return-void

    .line 110
    :catch_0
    move-exception v2

    .line 114
    const v2, 0x102002c

    invoke-virtual {p1, v2}, Lccsanandroid/app/Activity;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v3

    .line 115
    .local v3, "home":Lccsanandroid/view/View;
    if-nez v3, :cond_0

    .line 117
    return-void

    .line 120
    :cond_0
    invoke-virtual {v3}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lccsanandroid/view/ViewGroup;

    .line 121
    .local v4, "parent":Lccsanandroid/view/ViewGroup;
    invoke-virtual {v4}, Lccsanandroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 122
    .local v5, "childCount":I
    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    .line 124
    return-void

    .line 127
    :cond_1
    invoke-virtual {v4, v0}, Lccsanandroid/view/ViewGroup;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v0

    .line 128
    .local v0, "first":Lccsanandroid/view/View;
    invoke-virtual {v4, v1}, Lccsanandroid/view/ViewGroup;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v1

    .line 129
    .local v1, "second":Lccsanandroid/view/View;
    invoke-virtual {v0}, Lccsanandroid/view/View;->getId()I

    move-result v6

    if-ne v6, v2, :cond_2

    move-object v2, v1

    goto :goto_0

    :cond_2
    move-object v2, v0

    .line 131
    .local v2, "up":Lccsanandroid/view/View;
    :goto_0
    instance-of v6, v2, Lccsanandroid/widget/ImageView;

    if-eqz v6, :cond_3

    .line 133
    move-object v6, v2

    check-cast v6, Lccsanandroid/widget/ImageView;

    iput-object v6, p0, Lccsanandroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->upIndicatorView:Lccsanandroid/widget/ImageView;

    .line 135
    :cond_3
    return-void
.end method
