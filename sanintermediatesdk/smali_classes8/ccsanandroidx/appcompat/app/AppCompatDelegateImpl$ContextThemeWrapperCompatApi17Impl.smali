.class Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ContextThemeWrapperCompatApi17Impl;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContextThemeWrapperCompatApi17Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    return-void
.end method

.method static applyOverrideConfiguration(Lccsanandroid/view/ContextThemeWrapper;Lccsanandroid/content/res/Configuration;)V
    .locals 0
    .param p0, "context"    # Lccsanandroid/view/ContextThemeWrapper;
    .param p1, "overrideConfiguration"    # Lccsanandroid/content/res/Configuration;

    .line 482
    invoke-virtual {p0, p1}, Lccsanandroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Lccsanandroid/content/res/Configuration;)V

    .line 483
    return-void
.end method
