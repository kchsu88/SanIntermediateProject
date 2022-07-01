.class public Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat;
.super Ljava/lang/Object;
.source "FingerprintManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;,
        Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;,
        Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mContext:Lccsanandroid/content/Context;


# direct methods
.method private constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat;->mContext:Lccsanandroid/content/Context;

    .line 57
    return-void
.end method

.method public static from(Lccsanandroid/content/Context;)Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat;
    .locals 1
    .param p0, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 52
    new-instance v0, Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    invoke-direct {v0, p0}, Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat;-><init>(Lccsanandroid/content/Context;)V

    return-object v0
.end method

.method private static getFingerprintManagerOrNull(Lccsanandroid/content/Context;)Lccsanandroid/hardware/fingerprint/FingerprintManager;
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 126
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    .line 127
    const-class v0, Lccsanandroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/hardware/fingerprint/FingerprintManager;

    return-object v0

    .line 128
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v0

    .line 129
    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Lccsanandroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    const-class v0, Lccsanandroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/hardware/fingerprint/FingerprintManager;

    return-object v0

    .line 132
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static unwrapCryptoObject(Lccsanandroid/hardware/fingerprint/FingerprintManager$CryptoObject;)Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    .locals 2
    .param p0, "cryptoObject"    # Lccsanandroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cryptoObject"
        }
    .end annotation

    .line 153
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 154
    return-object v0

    .line 155
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 156
    new-instance v0, Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    invoke-virtual {p0}, Lccsanandroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    return-object v0

    .line 157
    :cond_1
    invoke-virtual {p0}, Lccsanandroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 158
    new-instance v0, Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    invoke-virtual {p0}, Lccsanandroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljava/security/Signature;)V

    return-object v0

    .line 159
    :cond_2
    invoke-virtual {p0}, Lccsanandroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 160
    new-instance v0, Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    invoke-virtual {p0}, Lccsanandroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    return-object v0

    .line 162
    :cond_3
    return-object v0
.end method

.method private static wrapCallback(Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;)Lccsanandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .locals 1
    .param p0, "callback"    # Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    .line 169
    new-instance v0, Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat$1;

    invoke-direct {v0, p0}, Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat$1;-><init>(Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;)V

    return-object v0
.end method

.method private static wrapCryptoObject(Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;)Lccsanandroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .locals 2
    .param p0, "cryptoObject"    # Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cryptoObject"
        }
    .end annotation

    .line 138
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 139
    return-object v0

    .line 140
    :cond_0
    invoke-virtual {p0}, Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 141
    new-instance v0, Lccsanandroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    invoke-virtual {p0}, Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    return-object v0

    .line 142
    :cond_1
    invoke-virtual {p0}, Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 143
    new-instance v0, Lccsanandroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    invoke-virtual {p0}, Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljava/security/Signature;)V

    return-object v0

    .line 144
    :cond_2
    invoke-virtual {p0}, Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 145
    new-instance v0, Lccsanandroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    invoke-virtual {p0}, Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    return-object v0

    .line 147
    :cond_3
    return-object v0
.end method


# virtual methods
.method public authenticate(Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;ILccsanandroidx/core/os/CancellationSignal;Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;Lccsanandroid/os/Handler;)V
    .locals 7
    .param p1, "crypto"    # Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    .param p2, "flags"    # I
    .param p3, "cancel"    # Lccsanandroidx/core/os/CancellationSignal;
    .param p4, "callback"    # Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
    .param p5, "handler"    # Lccsanandroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "crypto",
            "flags",
            "cancel",
            "callback",
            "handler"
        }
    .end annotation

    .line 107
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 108
    iget-object v0, p0, Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat;->mContext:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat;->getFingerprintManagerOrNull(Lccsanandroid/content/Context;)Lccsanandroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    .line 109
    .local v0, "fp":Lccsanandroid/hardware/fingerprint/FingerprintManager;
    if-eqz v0, :cond_1

    .line 110
    if-eqz p3, :cond_0

    .line 111
    invoke-virtual {p3}, Lccsanandroidx/core/os/CancellationSignal;->getCancellationSignalObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/os/CancellationSignal;

    move-object v3, v1

    goto :goto_0

    .line 112
    :cond_0
    const/4 v1, 0x0

    move-object v3, v1

    :goto_0
    nop

    .line 113
    .local v3, "cancellationSignal":Lccsanandroid/os/CancellationSignal;
    nop

    .line 114
    invoke-static {p1}, Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat;->wrapCryptoObject(Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;)Lccsanandroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    move-result-object v2

    .line 117
    invoke-static {p4}, Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat;->wrapCallback(Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;)Lccsanandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    move-result-object v5

    .line 113
    move-object v1, v0

    move v4, p2

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lccsanandroid/hardware/fingerprint/FingerprintManager;->authenticate(Lccsanandroid/hardware/fingerprint/FingerprintManager$CryptoObject;Lccsanandroid/os/CancellationSignal;ILccsanandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Lccsanandroid/os/Handler;)V

    .line 121
    .end local v0    # "fp":Lccsanandroid/hardware/fingerprint/FingerprintManager;
    .end local v3    # "cancellationSignal":Lccsanandroid/os/CancellationSignal;
    :cond_1
    return-void
.end method

.method public hasEnrolledFingerprints()Z
    .locals 3

    .line 66
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    .line 67
    iget-object v0, p0, Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat;->mContext:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat;->getFingerprintManagerOrNull(Lccsanandroid/content/Context;)Lccsanandroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    .line 68
    .local v0, "fp":Lccsanandroid/hardware/fingerprint/FingerprintManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 70
    .end local v0    # "fp":Lccsanandroid/hardware/fingerprint/FingerprintManager;
    :cond_1
    return v1
.end method

.method public isHardwareDetected()Z
    .locals 3

    .line 81
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    .line 82
    iget-object v0, p0, Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat;->mContext:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat;->getFingerprintManagerOrNull(Lccsanandroid/content/Context;)Lccsanandroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    .line 83
    .local v0, "fp":Lccsanandroid/hardware/fingerprint/FingerprintManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 85
    .end local v0    # "fp":Lccsanandroid/hardware/fingerprint/FingerprintManager;
    :cond_1
    return v1
.end method
