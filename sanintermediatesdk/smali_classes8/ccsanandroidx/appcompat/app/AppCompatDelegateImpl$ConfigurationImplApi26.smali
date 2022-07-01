.class Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ConfigurationImplApi26;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConfigurationImplApi26"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static generateConfigDelta_colorMode(Lccsanandroid/content/res/Configuration;Lccsanandroid/content/res/Configuration;Lccsanandroid/content/res/Configuration;)V
    .locals 2
    .param p0, "base"    # Lccsanandroid/content/res/Configuration;
    .param p1, "change"    # Lccsanandroid/content/res/Configuration;
    .param p2, "delta"    # Lccsanandroid/content/res/Configuration;

    .line 3503
    iget v0, p0, Lccsanandroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v0, v0, 0x3

    iget v1, p1, Lccsanandroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    if-eq v0, v1, :cond_0

    .line 3505
    iget v0, p2, Lccsanandroid/content/res/Configuration;->colorMode:I

    iget v1, p1, Lccsanandroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    or-int/2addr v0, v1

    iput v0, p2, Lccsanandroid/content/res/Configuration;->colorMode:I

    .line 3509
    :cond_0
    iget v0, p0, Lccsanandroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v0, v0, 0xc

    iget v1, p1, Lccsanandroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    if-eq v0, v1, :cond_1

    .line 3511
    iget v0, p2, Lccsanandroid/content/res/Configuration;->colorMode:I

    iget v1, p1, Lccsanandroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    iput v0, p2, Lccsanandroid/content/res/Configuration;->colorMode:I

    .line 3513
    :cond_1
    return-void
.end method
