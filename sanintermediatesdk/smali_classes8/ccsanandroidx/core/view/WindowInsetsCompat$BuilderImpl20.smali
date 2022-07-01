.class Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl20;
.super Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuilderImpl20"
.end annotation


# static fields
.field private static sConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Lccsanandroid/view/WindowInsets;",
            ">;"
        }
    .end annotation
.end field

.field private static sConstructorFetched:Z

.field private static sConsumedField:Ljava/lang/reflect/Field;

.field private static sConsumedFieldFetched:Z


# instance fields
.field private mPlatformInsets:Lccsanandroid/view/WindowInsets;

.field private mStableInsets:Lccsanandroidx/core/graphics/Insets;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1709
    const/4 v0, 0x0

    sput-boolean v0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConsumedFieldFetched:Z

    .line 1712
    sput-boolean v0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConstructorFetched:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1717
    invoke-direct {p0}, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;-><init>()V

    .line 1718
    invoke-static {}, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl20;->createWindowInsetsInstance()Lccsanandroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mPlatformInsets:Lccsanandroid/view/WindowInsets;

    .line 1719
    return-void
.end method

.method constructor <init>(Lccsanandroidx/core/view/WindowInsetsCompat;)V
    .locals 1
    .param p1, "insets"    # Lccsanandroidx/core/view/WindowInsetsCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "insets"
        }
    .end annotation

    .line 1722
    invoke-direct {p0, p1}, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;-><init>(Lccsanandroidx/core/view/WindowInsetsCompat;)V

    .line 1723
    invoke-virtual {p1}, Lccsanandroidx/core/view/WindowInsetsCompat;->toWindowInsets()Lccsanandroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mPlatformInsets:Lccsanandroid/view/WindowInsets;

    .line 1724
    return-void
.end method

.method private static createWindowInsetsInstance()Lccsanandroid/view/WindowInsets;
    .locals 7

    .line 1758
    sget-boolean v0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConsumedFieldFetched:Z

    const/4 v1, 0x1

    const-string v2, "WindowInsetsCompat"

    if-nez v0, :cond_0

    .line 1760
    :try_start_0
    const-class v0, Lccsanandroid/view/WindowInsets;

    const-string v3, "CONSUMED"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConsumedField:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1763
    goto :goto_0

    .line 1761
    :catch_0
    move-exception v0

    .line 1762
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    const-string v3, "Could not retrieve WindowInsets.CONSUMED field"

    invoke-static {v2, v3, v0}, Lccsanandroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1764
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    sput-boolean v1, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConsumedFieldFetched:Z

    .line 1766
    :cond_0
    sget-object v0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConsumedField:Ljava/lang/reflect/Field;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 1768
    :try_start_1
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/WindowInsets;

    .line 1769
    .local v0, "consumed":Lccsanandroid/view/WindowInsets;
    if-eqz v0, :cond_1

    .line 1770
    new-instance v4, Lccsanandroid/view/WindowInsets;

    invoke-direct {v4, v0}, Lccsanandroid/view/WindowInsets;-><init>(Lccsanandroid/view/WindowInsets;)V
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v4

    .line 1774
    .end local v0    # "consumed":Lccsanandroid/view/WindowInsets;
    :cond_1
    goto :goto_1

    .line 1772
    :catch_1
    move-exception v0

    .line 1773
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    const-string v4, "Could not get value from WindowInsets.CONSUMED field"

    invoke-static {v2, v4, v0}, Lccsanandroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1779
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_2
    :goto_1
    sget-boolean v0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConstructorFetched:Z

    const/4 v4, 0x0

    if-nez v0, :cond_3

    .line 1781
    :try_start_2
    const-class v0, Lccsanandroid/view/WindowInsets;

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Lccsanandroid/graphics/Rect;

    aput-object v6, v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConstructor:Ljava/lang/reflect/Constructor;
    :try_end_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1784
    goto :goto_2

    .line 1782
    :catch_2
    move-exception v0

    .line 1783
    .restart local v0    # "e":Ljava/lang/ReflectiveOperationException;
    const-string v5, "Could not retrieve WindowInsets(Rect) constructor"

    invoke-static {v2, v5, v0}, Lccsanandroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1785
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_2
    sput-boolean v1, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConstructorFetched:Z

    .line 1787
    :cond_3
    sget-object v0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_4

    .line 1789
    :try_start_3
    new-array v1, v1, [Ljava/lang/Object;

    new-instance v5, Lccsanandroid/graphics/Rect;

    invoke-direct {v5}, Lccsanandroid/graphics/Rect;-><init>()V

    aput-object v5, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/WindowInsets;
    :try_end_3
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_3 .. :try_end_3} :catch_3

    return-object v0

    .line 1790
    :catch_3
    move-exception v0

    .line 1791
    .restart local v0    # "e":Ljava/lang/ReflectiveOperationException;
    const-string v1, "Could not invoke WindowInsets(Rect) constructor"

    invoke-static {v2, v1, v0}, Lccsanandroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1796
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_4
    return-object v3
.end method


# virtual methods
.method build()Lccsanandroidx/core/view/WindowInsetsCompat;
    .locals 2

    .line 1742
    invoke-virtual {p0}, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl20;->applyInsetTypes()V

    .line 1743
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mPlatformInsets:Lccsanandroid/view/WindowInsets;

    invoke-static {v0}, Lccsanandroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Lccsanandroid/view/WindowInsets;)Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    .line 1745
    .local v0, "windowInsetsCompat":Lccsanandroidx/core/view/WindowInsetsCompat;
    iget-object v1, p0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mInsetsTypeMask:[Lccsanandroidx/core/graphics/Insets;

    invoke-virtual {v0, v1}, Lccsanandroidx/core/view/WindowInsetsCompat;->setOverriddenInsets([Lccsanandroidx/core/graphics/Insets;)V

    .line 1746
    iget-object v1, p0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mStableInsets:Lccsanandroidx/core/graphics/Insets;

    invoke-virtual {v0, v1}, Lccsanandroidx/core/view/WindowInsetsCompat;->setStableInsets(Lccsanandroidx/core/graphics/Insets;)V

    .line 1747
    return-object v0
.end method

.method setStableInsets(Lccsanandroidx/core/graphics/Insets;)V
    .locals 0
    .param p1, "insets"    # Lccsanandroidx/core/graphics/Insets;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "insets"
        }
    .end annotation

    .line 1736
    iput-object p1, p0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mStableInsets:Lccsanandroidx/core/graphics/Insets;

    .line 1737
    return-void
.end method

.method setSystemWindowInsets(Lccsanandroidx/core/graphics/Insets;)V
    .locals 5
    .param p1, "insets"    # Lccsanandroidx/core/graphics/Insets;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "insets"
        }
    .end annotation

    .line 1728
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mPlatformInsets:Lccsanandroid/view/WindowInsets;

    if-eqz v0, :cond_0

    .line 1729
    iget v1, p1, Lccsanandroidx/core/graphics/Insets;->left:I

    iget v2, p1, Lccsanandroidx/core/graphics/Insets;->top:I

    iget v3, p1, Lccsanandroidx/core/graphics/Insets;->right:I

    iget v4, p1, Lccsanandroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lccsanandroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Lccsanandroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mPlatformInsets:Lccsanandroid/view/WindowInsets;

    .line 1732
    :cond_0
    return-void
.end method
