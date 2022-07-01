.class public final Lccsanandroidx/core/os/ConfigurationCompat;
.super Ljava/lang/Object;
.source "ConfigurationCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static getLocales(Lccsanandroid/content/res/Configuration;)Lccsanandroidx/core/os/LocaleListCompat;
    .locals 3
    .param p0, "configuration"    # Lccsanandroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 41
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 42
    invoke-virtual {p0}, Lccsanandroid/content/res/Configuration;->getLocales()Lccsanandroid/os/LocaleList;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/core/os/LocaleListCompat;->wrap(Lccsanandroid/os/LocaleList;)Lccsanandroidx/core/os/LocaleListCompat;

    move-result-object v0

    return-object v0

    .line 44
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Locale;

    const/4 v1, 0x0

    iget-object v2, p0, Lccsanandroid/content/res/Configuration;->locale:Ljava/util/Locale;

    aput-object v2, v0, v1

    invoke-static {v0}, Lccsanandroidx/core/os/LocaleListCompat;->create([Ljava/util/Locale;)Lccsanandroidx/core/os/LocaleListCompat;

    move-result-object v0

    return-object v0
.end method
