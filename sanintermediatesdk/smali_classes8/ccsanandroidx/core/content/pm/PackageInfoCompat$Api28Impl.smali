.class Lccsanandroidx/core/content/pm/PackageInfoCompat$Api28Impl;
.super Ljava/lang/Object;
.source "PackageInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/content/pm/PackageInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api28Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    return-void
.end method

.method static getApkContentsSigners(Lccsanandroid/content/pm/SigningInfo;)[Lccsanandroid/content/pm/Signature;
    .locals 1
    .param p0, "signingInfo"    # Lccsanandroid/content/pm/SigningInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signingInfo"
        }
    .end annotation

    .line 280
    invoke-virtual {p0}, Lccsanandroid/content/pm/SigningInfo;->getApkContentsSigners()[Lccsanandroid/content/pm/Signature;

    move-result-object v0

    return-object v0
.end method

.method static getSigningCertificateHistory(Lccsanandroid/content/pm/SigningInfo;)[Lccsanandroid/content/pm/Signature;
    .locals 1
    .param p0, "signingInfo"    # Lccsanandroid/content/pm/SigningInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signingInfo"
        }
    .end annotation

    .line 285
    invoke-virtual {p0}, Lccsanandroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Lccsanandroid/content/pm/Signature;

    move-result-object v0

    return-object v0
.end method

.method static hasMultipleSigners(Lccsanandroid/content/pm/SigningInfo;)Z
    .locals 1
    .param p0, "signingInfo"    # Lccsanandroid/content/pm/SigningInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signingInfo"
        }
    .end annotation

    .line 275
    invoke-virtual {p0}, Lccsanandroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    move-result v0

    return v0
.end method

.method static hasSigningCertificate(Lccsanandroid/content/pm/PackageManager;Ljava/lang/String;[BI)Z
    .locals 1
    .param p0, "packageManager"    # Lccsanandroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageManager",
            "packageName",
            "bytes",
            "type"
        }
    .end annotation

    .line 271
    invoke-virtual {p0, p1, p2, p3}, Lccsanandroid/content/pm/PackageManager;->hasSigningCertificate(Ljava/lang/String;[BI)Z

    move-result v0

    return v0
.end method