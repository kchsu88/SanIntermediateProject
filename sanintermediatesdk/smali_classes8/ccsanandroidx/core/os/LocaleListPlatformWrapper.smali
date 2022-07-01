.class final Lccsanandroidx/core/os/LocaleListPlatformWrapper;
.super Ljava/lang/Object;
.source "LocaleListPlatformWrapper.java"

# interfaces
.implements Lccsanandroidx/core/os/LocaleListInterface;


# instance fields
.field private final mLocaleList:Lccsanandroid/os/LocaleList;


# direct methods
.method constructor <init>(Lccsanandroid/os/LocaleList;)V
    .locals 0
    .param p1, "localeList"    # Lccsanandroid/os/LocaleList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "localeList"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lccsanandroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Lccsanandroid/os/LocaleList;

    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lccsanandroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Lccsanandroid/os/LocaleList;

    move-object v1, p1

    check-cast v1, Lccsanandroidx/core/os/LocaleListInterface;

    invoke-interface {v1}, Lccsanandroidx/core/os/LocaleListInterface;->getLocaleList()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/util/Locale;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lccsanandroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Lccsanandroid/os/LocaleList;

    invoke-virtual {v0, p1}, Lccsanandroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;
    .locals 1
    .param p1, "supportedLocales"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supportedLocales"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lccsanandroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Lccsanandroid/os/LocaleList;

    invoke-virtual {v0, p1}, Lccsanandroid/os/LocaleList;->getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getLocaleList()Ljava/lang/Object;
    .locals 1

    .line 37
    iget-object v0, p0, Lccsanandroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Lccsanandroid/os/LocaleList;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 67
    iget-object v0, p0, Lccsanandroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Lccsanandroid/os/LocaleList;

    invoke-virtual {v0}, Lccsanandroid/os/LocaleList;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/util/Locale;)I
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "locale"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lccsanandroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Lccsanandroid/os/LocaleList;

    invoke-virtual {v0, p1}, Lccsanandroid/os/LocaleList;->indexOf(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 47
    iget-object v0, p0, Lccsanandroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Lccsanandroid/os/LocaleList;

    invoke-virtual {v0}, Lccsanandroid/os/LocaleList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 52
    iget-object v0, p0, Lccsanandroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Lccsanandroid/os/LocaleList;

    invoke-virtual {v0}, Lccsanandroid/os/LocaleList;->size()I

    move-result v0

    return v0
.end method

.method public toLanguageTags()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lccsanandroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Lccsanandroid/os/LocaleList;

    invoke-virtual {v0}, Lccsanandroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lccsanandroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Lccsanandroid/os/LocaleList;

    invoke-virtual {v0}, Lccsanandroid/os/LocaleList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
