.class Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;
.super Lccsanandroidx/core/view/WindowInsetsCompat$Impl;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl20"
.end annotation


# static fields
.field private static sAttachInfoClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sAttachInfoField:Ljava/lang/reflect/Field;

.field private static sGetViewRootImplMethod:Ljava/lang/reflect/Method;

.field private static sViewRootImplClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sVisibleInsetsField:Ljava/lang/reflect/Field;

.field private static sVisibleRectReflectionFetched:Z


# instance fields
.field private mOverriddenInsets:[Lccsanandroidx/core/graphics/Insets;

.field final mPlatformInsets:Lccsanandroid/view/WindowInsets;

.field mRootViewVisibleInsets:Lccsanandroidx/core/graphics/Insets;

.field private mRootWindowInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

.field private mSystemWindowInsets:Lccsanandroidx/core/graphics/Insets;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 878
    const/4 v0, 0x0

    sput-boolean v0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->sVisibleRectReflectionFetched:Z

    return-void
.end method

.method constructor <init>(Lccsanandroidx/core/view/WindowInsetsCompat;Lccsanandroid/view/WindowInsets;)V
    .locals 1
    .param p1, "host"    # Lccsanandroidx/core/view/WindowInsetsCompat;
    .param p2, "insets"    # Lccsanandroid/view/WindowInsets;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "host",
            "insets"
        }
    .end annotation

    .line 898
    invoke-direct {p0, p1}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;-><init>(Lccsanandroidx/core/view/WindowInsetsCompat;)V

    .line 892
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->mSystemWindowInsets:Lccsanandroidx/core/graphics/Insets;

    .line 899
    iput-object p2, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Lccsanandroid/view/WindowInsets;

    .line 900
    return-void
.end method

.method constructor <init>(Lccsanandroidx/core/view/WindowInsetsCompat;Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;)V
    .locals 2
    .param p1, "host"    # Lccsanandroidx/core/view/WindowInsetsCompat;
    .param p2, "other"    # Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "host",
            "other"
        }
    .end annotation

    .line 903
    new-instance v0, Lccsanandroid/view/WindowInsets;

    iget-object v1, p2, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Lccsanandroid/view/WindowInsets;

    invoke-direct {v0, v1}, Lccsanandroid/view/WindowInsets;-><init>(Lccsanandroid/view/WindowInsets;)V

    invoke-direct {p0, p1, v0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;-><init>(Lccsanandroidx/core/view/WindowInsetsCompat;Lccsanandroid/view/WindowInsets;)V

    .line 904
    return-void
.end method

.method private getInsets(IZ)Lccsanandroidx/core/graphics/Insets;
    .locals 3
    .param p1, "typeMask"    # I
    .param p2, "ignoreVisibility"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "typeMask",
            "ignoreVisibility"
        }
    .end annotation

    .line 940
    sget-object v0, Lccsanandroidx/core/graphics/Insets;->NONE:Lccsanandroidx/core/graphics/Insets;

    .line 941
    .local v0, "result":Lccsanandroidx/core/graphics/Insets;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x100

    if-gt v1, v2, :cond_1

    .line 942
    and-int v2, p1, v1

    if-nez v2, :cond_0

    .line 943
    goto :goto_1

    .line 945
    :cond_0
    invoke-virtual {p0, v1, p2}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->getInsetsForType(IZ)Lccsanandroidx/core/graphics/Insets;

    move-result-object v2

    invoke-static {v0, v2}, Lccsanandroidx/core/graphics/Insets;->max(Lccsanandroidx/core/graphics/Insets;Lccsanandroidx/core/graphics/Insets;)Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    .line 941
    :goto_1
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 947
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private getRootStableInsets()Lccsanandroidx/core/graphics/Insets;
    .locals 1

    .line 1101
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->mRootWindowInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    if-eqz v0, :cond_0

    .line 1102
    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsCompat;->getStableInsets()Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0

    .line 1104
    :cond_0
    sget-object v0, Lccsanandroidx/core/graphics/Insets;->NONE:Lccsanandroidx/core/graphics/Insets;

    return-object v0
.end method

.method private getVisibleInsets(Lccsanandroid/view/View;)Lccsanandroidx/core/graphics/Insets;
    .locals 5
    .param p1, "rootView"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 1125
    const-string v0, "WindowInsetsCompat"

    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_5

    .line 1130
    sget-boolean v1, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->sVisibleRectReflectionFetched:Z

    if-nez v1, :cond_0

    .line 1131
    invoke-static {}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->loadReflectionField()V

    .line 1134
    :cond_0
    sget-object v1, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->sGetViewRootImplMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    sget-object v3, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->sAttachInfoClass:Ljava/lang/Class;

    if-eqz v3, :cond_4

    sget-object v3, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->sVisibleInsetsField:Ljava/lang/reflect/Field;

    if-nez v3, :cond_1

    goto :goto_0

    .line 1141
    :cond_1
    const/4 v3, 0x0

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1142
    .local v1, "viewRootImpl":Ljava/lang/Object;
    if-nez v1, :cond_2

    .line 1143
    const-string v3, "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden"

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v0, v3, v4}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1147
    return-object v2

    .line 1149
    :cond_2
    sget-object v3, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->sAttachInfoField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1150
    .local v3, "mAttachInfo":Ljava/lang/Object;
    sget-object v4, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->sVisibleInsetsField:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/graphics/Rect;

    .line 1151
    .local v4, "visibleRect":Lccsanandroid/graphics/Rect;
    if-eqz v4, :cond_3

    invoke-static {v4}, Lccsanandroidx/core/graphics/Insets;->of(Lccsanandroid/graphics/Rect;)Lccsanandroidx/core/graphics/Insets;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v2

    .line 1153
    .end local v1    # "viewRootImpl":Ljava/lang/Object;
    .end local v3    # "mAttachInfo":Ljava/lang/Object;
    .end local v4    # "visibleRect":Lccsanandroid/graphics/Rect;
    :catch_0
    move-exception v1

    .line 1154
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get visible insets. (Reflection error). "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1157
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    return-object v2

    .line 1137
    :cond_4
    :goto_0
    return-object v2

    .line 1126
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static loadReflectionField()V
    .locals 4

    .line 1168
    const/4 v0, 0x1

    :try_start_0
    const-class v1, Lccsanandroid/view/View;

    const-string v2, "getViewRootImpl"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->sGetViewRootImplMethod:Ljava/lang/reflect/Method;

    .line 1169
    const-string v1, "android.view.ViewRootImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->sViewRootImplClass:Ljava/lang/Class;

    .line 1170
    const-string v1, "android.view.View$AttachInfo"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->sAttachInfoClass:Ljava/lang/Class;

    .line 1171
    const-string v2, "mVisibleInsets"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->sVisibleInsetsField:Ljava/lang/reflect/Field;

    .line 1172
    sget-object v1, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->sViewRootImplClass:Ljava/lang/Class;

    const-string v2, "mAttachInfo"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->sAttachInfoField:Ljava/lang/reflect/Field;

    .line 1173
    sget-object v1, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->sVisibleInsetsField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1174
    sget-object v1, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->sAttachInfoField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1178
    goto :goto_0

    .line 1175
    :catch_0
    move-exception v1

    .line 1176
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get visible insets. (Reflection error). "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowInsetsCompat"

    invoke-static {v3, v2, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1179
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    sput-boolean v0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->sVisibleRectReflectionFetched:Z

    .line 1180
    return-void
.end method


# virtual methods
.method copyRootViewBounds(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 1110
    invoke-direct {p0, p1}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->getVisibleInsets(Lccsanandroid/view/View;)Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    .line 1111
    .local v0, "visibleInsets":Lccsanandroidx/core/graphics/Insets;
    if-nez v0, :cond_0

    .line 1112
    sget-object v0, Lccsanandroidx/core/graphics/Insets;->NONE:Lccsanandroidx/core/graphics/Insets;

    .line 1114
    :cond_0
    invoke-virtual {p0, v0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->setRootViewData(Lccsanandroidx/core/graphics/Insets;)V

    .line 1115
    return-void
.end method

.method copyWindowDataInto(Lccsanandroidx/core/view/WindowInsetsCompat;)V
    .locals 1
    .param p1, "other"    # Lccsanandroidx/core/view/WindowInsetsCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 1085
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->mRootWindowInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    invoke-virtual {p1, v0}, Lccsanandroidx/core/view/WindowInsetsCompat;->setRootWindowInsets(Lccsanandroidx/core/view/WindowInsetsCompat;)V

    .line 1086
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Lccsanandroidx/core/graphics/Insets;

    invoke-virtual {p1, v0}, Lccsanandroidx/core/view/WindowInsetsCompat;->setRootViewData(Lccsanandroidx/core/graphics/Insets;)V

    .line 1087
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 1184
    invoke-super {p0, p1}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1185
    :cond_0
    move-object v0, p1

    check-cast v0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;

    .line 1186
    .local v0, "impl20":Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;
    iget-object v1, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Lccsanandroidx/core/graphics/Insets;

    iget-object v2, v0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Lccsanandroidx/core/graphics/Insets;

    invoke-static {v1, v2}, Lccsanandroidx/core/graphics/ColorUtils$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getInsets(I)Lccsanandroidx/core/graphics/Insets;
    .locals 1
    .param p1, "typeMask"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeMask"
        }
    .end annotation

    .line 914
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->getInsets(IZ)Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method protected getInsetsForType(IZ)Lccsanandroidx/core/graphics/Insets;
    .locals 7
    .param p1, "type"    # I
    .param p2, "ignoreVisibility"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "ignoreVisibility"
        }
    .end annotation

    .line 952
    const/4 v0, 0x0

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    .line 1041
    sget-object v0, Lccsanandroidx/core/graphics/Insets;->NONE:Lccsanandroidx/core/graphics/Insets;

    return-object v0

    .line 1030
    :sswitch_0
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->mRootWindowInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    if-eqz v0, :cond_0

    .line 1031
    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsCompat;->getDisplayCutout()Lccsanandroidx/core/view/DisplayCutoutCompat;

    move-result-object v0

    goto :goto_0

    .line 1032
    :cond_0
    invoke-virtual {p0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->getDisplayCutout()Lccsanandroidx/core/view/DisplayCutoutCompat;

    move-result-object v0

    :goto_0
    nop

    .line 1033
    .local v0, "cutout":Lccsanandroidx/core/view/DisplayCutoutCompat;
    if-eqz v0, :cond_1

    .line 1034
    invoke-virtual {v0}, Lccsanandroidx/core/view/DisplayCutoutCompat;->getSafeInsetLeft()I

    move-result v1

    invoke-virtual {v0}, Lccsanandroidx/core/view/DisplayCutoutCompat;->getSafeInsetTop()I

    move-result v2

    .line 1035
    invoke-virtual {v0}, Lccsanandroidx/core/view/DisplayCutoutCompat;->getSafeInsetRight()I

    move-result v3

    invoke-virtual {v0}, Lccsanandroidx/core/view/DisplayCutoutCompat;->getSafeInsetBottom()I

    move-result v4

    .line 1034
    invoke-static {v1, v2, v3, v4}, Lccsanandroidx/core/graphics/Insets;->of(IIII)Lccsanandroidx/core/graphics/Insets;

    move-result-object v1

    return-object v1

    .line 1037
    :cond_1
    sget-object v1, Lccsanandroidx/core/graphics/Insets;->NONE:Lccsanandroidx/core/graphics/Insets;

    return-object v1

    .line 1026
    .end local v0    # "cutout":Lccsanandroidx/core/view/DisplayCutoutCompat;
    :sswitch_1
    invoke-virtual {p0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->getTappableElementInsets()Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0

    .line 1022
    :sswitch_2
    invoke-virtual {p0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->getMandatorySystemGestureInsets()Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0

    .line 1018
    :sswitch_3
    invoke-virtual {p0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->getSystemGestureInsets()Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0

    .line 994
    :sswitch_4
    iget-object v2, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->mOverriddenInsets:[Lccsanandroidx/core/graphics/Insets;

    if-eqz v2, :cond_2

    .line 995
    const/16 v0, 0x8

    invoke-static {v0}, Lccsanandroidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    move-result v0

    aget-object v0, v2, v0

    goto :goto_1

    :cond_2
    nop

    .line 996
    .local v0, "overriddenInsets":Lccsanandroidx/core/graphics/Insets;
    :goto_1
    if-eqz v0, :cond_3

    .line 997
    return-object v0

    .line 999
    :cond_3
    invoke-virtual {p0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->getSystemWindowInsets()Lccsanandroidx/core/graphics/Insets;

    move-result-object v2

    .line 1000
    .local v2, "systemWindow":Lccsanandroidx/core/graphics/Insets;
    invoke-direct {p0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->getRootStableInsets()Lccsanandroidx/core/graphics/Insets;

    move-result-object v3

    .line 1002
    .local v3, "rootStable":Lccsanandroidx/core/graphics/Insets;
    iget v4, v2, Lccsanandroidx/core/graphics/Insets;->bottom:I

    iget v5, v3, Lccsanandroidx/core/graphics/Insets;->bottom:I

    if-le v4, v5, :cond_4

    .line 1005
    iget v4, v2, Lccsanandroidx/core/graphics/Insets;->bottom:I

    invoke-static {v1, v1, v1, v4}, Lccsanandroidx/core/graphics/Insets;->of(IIII)Lccsanandroidx/core/graphics/Insets;

    move-result-object v1

    return-object v1

    .line 1006
    :cond_4
    iget-object v4, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Lccsanandroidx/core/graphics/Insets;

    if-eqz v4, :cond_5

    sget-object v5, Lccsanandroidx/core/graphics/Insets;->NONE:Lccsanandroidx/core/graphics/Insets;

    .line 1007
    invoke-virtual {v4, v5}, Lccsanandroidx/core/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1010
    iget-object v4, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Lccsanandroidx/core/graphics/Insets;

    iget v4, v4, Lccsanandroidx/core/graphics/Insets;->bottom:I

    iget v5, v3, Lccsanandroidx/core/graphics/Insets;->bottom:I

    if-le v4, v5, :cond_5

    .line 1011
    iget-object v4, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Lccsanandroidx/core/graphics/Insets;

    iget v4, v4, Lccsanandroidx/core/graphics/Insets;->bottom:I

    invoke-static {v1, v1, v1, v4}, Lccsanandroidx/core/graphics/Insets;->of(IIII)Lccsanandroidx/core/graphics/Insets;

    move-result-object v1

    return-object v1

    .line 1014
    :cond_5
    sget-object v1, Lccsanandroidx/core/graphics/Insets;->NONE:Lccsanandroidx/core/graphics/Insets;

    return-object v1

    .line 963
    .end local v0    # "overriddenInsets":Lccsanandroidx/core/graphics/Insets;
    .end local v2    # "systemWindow":Lccsanandroidx/core/graphics/Insets;
    .end local v3    # "rootStable":Lccsanandroidx/core/graphics/Insets;
    :sswitch_5
    if-eqz p2, :cond_6

    .line 964
    invoke-direct {p0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->getRootStableInsets()Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    .line 965
    .local v0, "rootStable":Lccsanandroidx/core/graphics/Insets;
    invoke-virtual {p0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->getStableInsets()Lccsanandroidx/core/graphics/Insets;

    move-result-object v2

    .line 966
    .local v2, "stable":Lccsanandroidx/core/graphics/Insets;
    iget v3, v0, Lccsanandroidx/core/graphics/Insets;->left:I

    iget v4, v2, Lccsanandroidx/core/graphics/Insets;->left:I

    .line 967
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, v0, Lccsanandroidx/core/graphics/Insets;->right:I

    iget v5, v2, Lccsanandroidx/core/graphics/Insets;->right:I

    .line 969
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, v0, Lccsanandroidx/core/graphics/Insets;->bottom:I

    iget v6, v2, Lccsanandroidx/core/graphics/Insets;->bottom:I

    .line 970
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 966
    invoke-static {v3, v1, v4, v5}, Lccsanandroidx/core/graphics/Insets;->of(IIII)Lccsanandroidx/core/graphics/Insets;

    move-result-object v1

    return-object v1

    .line 973
    .end local v0    # "rootStable":Lccsanandroidx/core/graphics/Insets;
    .end local v2    # "stable":Lccsanandroidx/core/graphics/Insets;
    :cond_6
    invoke-virtual {p0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->getSystemWindowInsets()Lccsanandroidx/core/graphics/Insets;

    move-result-object v2

    .line 974
    .local v2, "systemWindow":Lccsanandroidx/core/graphics/Insets;
    iget-object v3, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->mRootWindowInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    if-eqz v3, :cond_7

    .line 975
    invoke-virtual {v3}, Lccsanandroidx/core/view/WindowInsetsCompat;->getStableInsets()Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    goto :goto_2

    .line 976
    :cond_7
    nop

    :goto_2
    nop

    .line 978
    .restart local v0    # "rootStable":Lccsanandroidx/core/graphics/Insets;
    iget v3, v2, Lccsanandroidx/core/graphics/Insets;->bottom:I

    .line 979
    .local v3, "bottom":I
    if-eqz v0, :cond_8

    .line 983
    iget v4, v0, Lccsanandroidx/core/graphics/Insets;->bottom:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 985
    :cond_8
    iget v4, v2, Lccsanandroidx/core/graphics/Insets;->left:I

    iget v5, v2, Lccsanandroidx/core/graphics/Insets;->right:I

    invoke-static {v4, v1, v5, v3}, Lccsanandroidx/core/graphics/Insets;->of(IIII)Lccsanandroidx/core/graphics/Insets;

    move-result-object v1

    return-object v1

    .line 954
    .end local v0    # "rootStable":Lccsanandroidx/core/graphics/Insets;
    .end local v2    # "systemWindow":Lccsanandroidx/core/graphics/Insets;
    .end local v3    # "bottom":I
    :sswitch_6
    if-eqz p2, :cond_9

    .line 955
    invoke-direct {p0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->getRootStableInsets()Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    .line 956
    .restart local v0    # "rootStable":Lccsanandroidx/core/graphics/Insets;
    iget v2, v0, Lccsanandroidx/core/graphics/Insets;->top:I

    .line 957
    invoke-virtual {p0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->getSystemWindowInsets()Lccsanandroidx/core/graphics/Insets;

    move-result-object v3

    iget v3, v3, Lccsanandroidx/core/graphics/Insets;->top:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 956
    invoke-static {v1, v2, v1, v1}, Lccsanandroidx/core/graphics/Insets;->of(IIII)Lccsanandroidx/core/graphics/Insets;

    move-result-object v1

    return-object v1

    .line 959
    .end local v0    # "rootStable":Lccsanandroidx/core/graphics/Insets;
    :cond_9
    invoke-virtual {p0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->getSystemWindowInsets()Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    iget v0, v0, Lccsanandroidx/core/graphics/Insets;->top:I

    invoke-static {v1, v0, v1, v1}, Lccsanandroidx/core/graphics/Insets;->of(IIII)Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_5
        0x8 -> :sswitch_4
        0x10 -> :sswitch_3
        0x20 -> :sswitch_2
        0x40 -> :sswitch_1
        0x80 -> :sswitch_0
    .end sparse-switch
.end method

.method public getInsetsIgnoringVisibility(I)Lccsanandroidx/core/graphics/Insets;
    .locals 1
    .param p1, "typeMask"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeMask"
        }
    .end annotation

    .line 920
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->getInsets(IZ)Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method final getSystemWindowInsets()Lccsanandroidx/core/graphics/Insets;
    .locals 4

    .line 1063
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->mSystemWindowInsets:Lccsanandroidx/core/graphics/Insets;

    if-nez v0, :cond_0

    .line 1064
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Lccsanandroid/view/WindowInsets;

    .line 1065
    invoke-virtual {v0}, Lccsanandroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    iget-object v1, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Lccsanandroid/view/WindowInsets;

    .line 1066
    invoke-virtual {v1}, Lccsanandroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    iget-object v2, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Lccsanandroid/view/WindowInsets;

    .line 1067
    invoke-virtual {v2}, Lccsanandroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    iget-object v3, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Lccsanandroid/view/WindowInsets;

    .line 1068
    invoke-virtual {v3}, Lccsanandroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    .line 1064
    invoke-static {v0, v1, v2, v3}, Lccsanandroidx/core/graphics/Insets;->of(IIII)Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->mSystemWindowInsets:Lccsanandroidx/core/graphics/Insets;

    .line 1070
    :cond_0
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->mSystemWindowInsets:Lccsanandroidx/core/graphics/Insets;

    return-object v0
.end method

.method inset(IIII)Lccsanandroidx/core/view/WindowInsetsCompat;
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 1077
    new-instance v0, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;

    iget-object v1, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Lccsanandroid/view/WindowInsets;

    invoke-static {v1}, Lccsanandroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Lccsanandroid/view/WindowInsets;)Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;-><init>(Lccsanandroidx/core/view/WindowInsetsCompat;)V

    .line 1078
    .local v0, "b":Lccsanandroidx/core/view/WindowInsetsCompat$Builder;
    invoke-virtual {p0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->getSystemWindowInsets()Lccsanandroidx/core/graphics/Insets;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Lccsanandroidx/core/view/WindowInsetsCompat;->insetInsets(Lccsanandroidx/core/graphics/Insets;IIII)Lccsanandroidx/core/graphics/Insets;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;->setSystemWindowInsets(Lccsanandroidx/core/graphics/Insets;)Lccsanandroidx/core/view/WindowInsetsCompat$Builder;

    .line 1079
    invoke-virtual {p0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->getStableInsets()Lccsanandroidx/core/graphics/Insets;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Lccsanandroidx/core/view/WindowInsetsCompat;->insetInsets(Lccsanandroidx/core/graphics/Insets;IIII)Lccsanandroidx/core/graphics/Insets;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;->setStableInsets(Lccsanandroidx/core/graphics/Insets;)Lccsanandroidx/core/view/WindowInsetsCompat$Builder;

    .line 1080
    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;->build()Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v1

    return-object v1
.end method

.method isRound()Z
    .locals 1

    .line 908
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Lccsanandroid/view/WindowInsets;

    invoke-virtual {v0}, Lccsanandroid/view/WindowInsets;->isRound()Z

    move-result v0

    return v0
.end method

.method protected isTypeVisible(I)Z
    .locals 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "type"
        }
    .end annotation

    .line 1046
    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    .line 1056
    return v0

    .line 1054
    :sswitch_0
    return v1

    .line 1051
    :sswitch_1
    invoke-virtual {p0, p1, v1}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->getInsetsForType(IZ)Lccsanandroidx/core/graphics/Insets;

    move-result-object v1

    sget-object v2, Lccsanandroidx/core/graphics/Insets;->NONE:Lccsanandroidx/core/graphics/Insets;

    invoke-virtual {v1, v2}, Lccsanandroidx/core/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
        0x80 -> :sswitch_1
    .end sparse-switch
.end method

.method isVisible(I)Z
    .locals 2
    .param p1, "typeMask"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "typeMask"
        }
    .end annotation

    .line 926
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x100

    if-gt v0, v1, :cond_2

    .line 927
    and-int v1, p1, v0

    if-nez v1, :cond_0

    .line 928
    goto :goto_1

    .line 930
    :cond_0
    invoke-virtual {p0, v0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->isTypeVisible(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 931
    const/4 v1, 0x0

    return v1

    .line 926
    :cond_1
    :goto_1
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 934
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public setOverriddenInsets([Lccsanandroidx/core/graphics/Insets;)V
    .locals 0
    .param p1, "insetsTypeMask"    # [Lccsanandroidx/core/graphics/Insets;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "insetsTypeMask"
        }
    .end annotation

    .line 1162
    iput-object p1, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->mOverriddenInsets:[Lccsanandroidx/core/graphics/Insets;

    .line 1163
    return-void
.end method

.method setRootViewData(Lccsanandroidx/core/graphics/Insets;)V
    .locals 0
    .param p1, "visibleInsets"    # Lccsanandroidx/core/graphics/Insets;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibleInsets"
        }
    .end annotation

    .line 1096
    iput-object p1, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Lccsanandroidx/core/graphics/Insets;

    .line 1097
    return-void
.end method

.method setRootWindowInsets(Lccsanandroidx/core/view/WindowInsetsCompat;)V
    .locals 0
    .param p1, "rootWindowInsets"    # Lccsanandroidx/core/view/WindowInsetsCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootWindowInsets"
        }
    .end annotation

    .line 1091
    iput-object p1, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->mRootWindowInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    .line 1092
    return-void
.end method
