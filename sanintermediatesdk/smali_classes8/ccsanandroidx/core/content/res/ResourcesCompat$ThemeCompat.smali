.class public final Lccsanandroidx/core/content/res/ResourcesCompat$ThemeCompat;
.super Ljava/lang/Object;
.source "ResourcesCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/content/res/ResourcesCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ThemeCompat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/content/res/ResourcesCompat$ThemeCompat$ImplApi23;,
        Lccsanandroidx/core/content/res/ResourcesCompat$ThemeCompat$ImplApi29;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 637
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static rebase(Lccsanandroid/content/res/Resources$Theme;)V
    .locals 2
    .param p0, "theme"    # Lccsanandroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "theme"
        }
    .end annotation

    .line 653
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 654
    invoke-static {p0}, Lccsanandroidx/core/content/res/ResourcesCompat$ThemeCompat$ImplApi29;->rebase(Lccsanandroid/content/res/Resources$Theme;)V

    goto :goto_0

    .line 655
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 656
    invoke-static {p0}, Lccsanandroidx/core/content/res/ResourcesCompat$ThemeCompat$ImplApi23;->rebase(Lccsanandroid/content/res/Resources$Theme;)V

    .line 658
    :cond_1
    :goto_0
    return-void
.end method
