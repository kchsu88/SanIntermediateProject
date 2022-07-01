.class Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ConfigurationImplApi17;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConfigurationImplApi17"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static generateConfigDelta_densityDpi(Lccsanandroid/content/res/Configuration;Lccsanandroid/content/res/Configuration;Lccsanandroid/content/res/Configuration;)V
    .locals 2
    .param p0, "base"    # Lccsanandroid/content/res/Configuration;
    .param p1, "change"    # Lccsanandroid/content/res/Configuration;
    .param p2, "delta"    # Lccsanandroid/content/res/Configuration;

    .line 3476
    iget v0, p0, Lccsanandroid/content/res/Configuration;->densityDpi:I

    iget v1, p1, Lccsanandroid/content/res/Configuration;->densityDpi:I

    if-eq v0, v1, :cond_0

    .line 3477
    iget v0, p1, Lccsanandroid/content/res/Configuration;->densityDpi:I

    iput v0, p2, Lccsanandroid/content/res/Configuration;->densityDpi:I

    .line 3479
    :cond_0
    return-void
.end method
