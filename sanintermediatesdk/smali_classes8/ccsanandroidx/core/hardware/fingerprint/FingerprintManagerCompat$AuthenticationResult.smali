.class public final Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;
.super Ljava/lang/Object;
.source "FingerprintManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthenticationResult"
.end annotation


# instance fields
.field private final mCryptoObject:Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;


# direct methods
.method public constructor <init>(Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;)V
    .locals 0
    .param p1, "crypto"    # Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "crypto"
        }
    .end annotation

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p1, p0, Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;->mCryptoObject:Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    .line 253
    return-void
.end method


# virtual methods
.method public getCryptoObject()Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    .locals 1

    .line 260
    iget-object v0, p0, Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;->mCryptoObject:Lccsanandroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    return-object v0
.end method
