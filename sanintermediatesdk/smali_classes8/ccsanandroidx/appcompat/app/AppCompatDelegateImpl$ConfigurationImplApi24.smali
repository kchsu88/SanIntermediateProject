.class Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ConfigurationImplApi24;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConfigurationImplApi24"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static generateConfigDelta_locale(Lccsanandroid/content/res/Configuration;Lccsanandroid/content/res/Configuration;Lccsanandroid/content/res/Configuration;)V
    .locals 3
    .param p0, "base"    # Lccsanandroid/content/res/Configuration;
    .param p1, "change"    # Lccsanandroid/content/res/Configuration;
    .param p2, "delta"    # Lccsanandroid/content/res/Configuration;

    .line 3488
    invoke-virtual {p0}, Lccsanandroid/content/res/Configuration;->getLocales()Lccsanandroid/os/LocaleList;

    move-result-object v0

    .line 3489
    .local v0, "baseLocales":Lccsanandroid/os/LocaleList;
    invoke-virtual {p1}, Lccsanandroid/content/res/Configuration;->getLocales()Lccsanandroid/os/LocaleList;

    move-result-object v1

    .line 3490
    .local v1, "changeLocales":Lccsanandroid/os/LocaleList;
    invoke-virtual {v0, v1}, Lccsanandroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3491
    invoke-virtual {p2, v1}, Lccsanandroid/content/res/Configuration;->setLocales(Lccsanandroid/os/LocaleList;)V

    .line 3492
    iget-object v2, p1, Lccsanandroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v2, p2, Lccsanandroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 3494
    :cond_0
    return-void
.end method
