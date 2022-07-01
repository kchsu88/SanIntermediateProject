.class Lccsanandroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api21ReflectionHolder"
.end annotation


# static fields
.field private static sContentInsets:Ljava/lang/reflect/Field;

.field private static sReflectionSucceeded:Z

.field private static sStableInsets:Ljava/lang/reflect/Field;

.field private static sViewAttachInfoField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2128
    :try_start_0
    const-class v0, Lccsanandroid/view/View;

    const-string v1, "mAttachInfo"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lccsanandroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;->sViewAttachInfoField:Ljava/lang/reflect/Field;

    .line 2129
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2130
    const-string v0, "android.view.View$AttachInfo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2131
    .local v0, "sAttachInfoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "mStableInsets"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lccsanandroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;->sStableInsets:Ljava/lang/reflect/Field;

    .line 2132
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2133
    const-string v2, "mContentInsets"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lccsanandroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;->sContentInsets:Ljava/lang/reflect/Field;

    .line 2134
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2135
    sput-boolean v1, Lccsanandroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;->sReflectionSucceeded:Z
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2138
    .end local v0    # "sAttachInfoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 2136
    :catch_0
    move-exception v0

    .line 2137
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get visible insets from AttachInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowInsetsCompat"

    invoke-static {v2, v1, v0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2139
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2119
    return-void
.end method

.method public static getRootWindowInsets(Lccsanandroid/view/View;)Lccsanandroidx/core/view/WindowInsetsCompat;
    .locals 7
    .param p0, "v"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 2144
    sget-boolean v0, Lccsanandroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;->sReflectionSucceeded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lccsanandroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2148
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/view/View;->getRootView()Lccsanandroid/view/View;

    move-result-object v0

    .line 2150
    .local v0, "rootView":Lccsanandroid/view/View;
    :try_start_0
    sget-object v2, Lccsanandroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;->sViewAttachInfoField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2151
    .local v2, "attachInfo":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 2152
    sget-object v3, Lccsanandroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;->sStableInsets:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/graphics/Rect;

    .line 2153
    .local v3, "stableInsets":Lccsanandroid/graphics/Rect;
    sget-object v4, Lccsanandroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;->sContentInsets:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/graphics/Rect;

    .line 2154
    .local v4, "visibleInsets":Lccsanandroid/graphics/Rect;
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 2155
    new-instance v5, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;

    invoke-direct {v5}, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;-><init>()V

    .line 2156
    invoke-static {v3}, Lccsanandroidx/core/graphics/Insets;->of(Lccsanandroid/graphics/Rect;)Lccsanandroidx/core/graphics/Insets;

    move-result-object v6

    invoke-virtual {v5, v6}, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;->setStableInsets(Lccsanandroidx/core/graphics/Insets;)Lccsanandroidx/core/view/WindowInsetsCompat$Builder;

    move-result-object v5

    .line 2157
    invoke-static {v4}, Lccsanandroidx/core/graphics/Insets;->of(Lccsanandroid/graphics/Rect;)Lccsanandroidx/core/graphics/Insets;

    move-result-object v6

    invoke-virtual {v5, v6}, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;->setSystemWindowInsets(Lccsanandroidx/core/graphics/Insets;)Lccsanandroidx/core/view/WindowInsetsCompat$Builder;

    move-result-object v5

    .line 2158
    invoke-virtual {v5}, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;->build()Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v5

    .line 2162
    .local v5, "insets":Lccsanandroidx/core/view/WindowInsetsCompat;
    invoke-virtual {v5, v5}, Lccsanandroidx/core/view/WindowInsetsCompat;->setRootWindowInsets(Lccsanandroidx/core/view/WindowInsetsCompat;)V

    .line 2163
    invoke-virtual {p0}, Lccsanandroid/view/View;->getRootView()Lccsanandroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Lccsanandroidx/core/view/WindowInsetsCompat;->copyRootViewBounds(Lccsanandroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2164
    return-object v5

    .line 2169
    .end local v2    # "attachInfo":Ljava/lang/Object;
    .end local v3    # "stableInsets":Lccsanandroid/graphics/Rect;
    .end local v4    # "visibleInsets":Lccsanandroid/graphics/Rect;
    .end local v5    # "insets":Lccsanandroidx/core/view/WindowInsetsCompat;
    :cond_1
    goto :goto_0

    .line 2167
    :catch_0
    move-exception v2

    .line 2168
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get insets from AttachInfo. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowInsetsCompat"

    invoke-static {v4, v3, v2}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2170
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :goto_0
    return-object v1

    .line 2145
    .end local v0    # "rootView":Lccsanandroid/view/View;
    :cond_2
    :goto_1
    return-object v1
.end method
